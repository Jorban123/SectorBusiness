import {sequelize} from "./services/db/db.js";
import express from 'express'
import {router} from "./Router/UserRouter.js";
import fileUpload from 'express-fileupload';
import routerAuth from "./Router/authRouter.js";

const app = express()
const port = process.env.PORT || 8000

app.use(express.json())
app.use(fileUpload({}))
app.use(router)
app.use(routerAuth)

sequelize.sync().then(()=>{
    app.listen(port, function(){
        console.log(`Сервер слушает на ${port}`);
    });
}).catch(err=>console.log(err));

