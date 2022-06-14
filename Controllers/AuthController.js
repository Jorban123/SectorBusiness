import {User} from "../models/models.js";
import bcrypt from 'bcryptjs'
import {validationResult} from "express-validator";
import jwt from 'jsonwebtoken'
import secret from "../config.js";

const generateAccessToken = (id, username) =>{
    const payload = {
        id,
        username
    }
    return jwt.sign(payload, secret, {expiresIn: "24h"})
}

class AuthController{
    async registration(req, res){
        try{
            const errors = validationResult(req)
            if(!errors.isEmpty()){
                return res.status(400).json({message: "Ошибка регистрации", errors})
            }
            let {name, email, password} = req.body
            const candidate = await User.findOne({ where: { "email": email.trim() } })
            if(candidate){
                return res.status(400).json({message: "Уже существует"})
            }
            const salt = await bcrypt.genSalt(6)
            password = await bcrypt.hash(password.trim(), salt)
            const user = await User.create({name, email, password})
            return res.json(user)
        }catch (e) {
            console.log(e)
            return res.status(400).json({message: "Registration Error"})
        }
    }
    async login(req, res){
        try{
            console.log(req.body)
            const {email, password} = req.body
            const user = await User.findOne({where:{"email": email.trim()}})
            if(!user){
                return res.status(400).json({message: "Не найден"})
            }
            const validPassword = await bcrypt.compare(password.trim(), user.password)
            if(!validPassword){
                return res.status(400).json({message: "Неверный пароль"})
            }
            const token = generateAccessToken(user.id, user.email)
            return res.json(token)
        }catch (e) {
            console.log(e)
            return res.status(400).json({message: "Login Error"})
        }
    }
}
export default new AuthController();