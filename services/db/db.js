import Sequelize from 'sequelize'
const sequelize = new Sequelize("test", "zazul", "root", {
    dialect: "mysql",
    host: "localhost",
    define:{
        timestamps: false
    }
});

export {Sequelize}
export {sequelize}