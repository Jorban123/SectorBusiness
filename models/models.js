import {sequelize} from "../services/db/db.js";
import {Sequelize} from "../services/db/db.js";


const User = sequelize.define("user",{
    name: {
        type: Sequelize.STRING(255),
        allowNull: false
    },
    surname: {
        type: Sequelize.STRING(255),
        allowNull: true,
        defaultValue: null
    },
    email: {
        type: Sequelize.STRING(80),
        allowNull: false
    },
    password:{
        type: Sequelize.STRING(255),
        allowNull: false
    },
    gender: {
        type: Sequelize.STRING(30),
        allowNull: true
    },
    photo: {
        type: Sequelize.STRING,
        allowNull: true
    },
    registerAt:{
        type: Sequelize.DATE,
        allowNull: true,
        defaultValue: Sequelize.NOW
    }
})
export {User}