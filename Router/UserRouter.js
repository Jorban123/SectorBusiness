import express from 'express'
import UserController from "../Controllers/UserController.js";
import {check} from "express-validator";
const router = express.Router()


router.put('/profile/:id',
    check("name", "Имя не может быть пустым").isEmpty(),
    check("gender").isLength({min: 1}),
    check("email").isEmail(),
    UserController.update)
router.get('/profile/:id', UserController.getOne)
router.get('/profiles', UserController.getAll)
export {router}