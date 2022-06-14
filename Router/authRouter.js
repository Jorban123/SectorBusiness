import AuthController from "../Controllers/AuthController.js";
import express from 'express'
import {check} from "express-validator";

const routerAuth = express.Router()

routerAuth.post('/user/register',
    check("name", "Имя пользователя не может быть пустым").notEmpty(),
    check("password", "Пароль должен быть от 8 символов").isLength({min: 8}),
    check("email", "Некорректный email").isEmail(),
    AuthController.registration)

routerAuth.post('/user/login',
    check("email", "Некорректный email").isEmail(),
    check("password", "Пароль должен быть от 8 символов").isLength({min: 8}),
    AuthController.login)

export default routerAuth;