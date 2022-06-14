import {User} from "../models/models.js";
import pagination from "../services/services.js";
import FileService from "../services/fileService.js";

class UserController{
    async getOne(req, res){
        try{
            const {id} = req.params
            if(!id){
                res.status(400).json( {message: 'id не указан'} )
            }
            const user = await User.findByPk(id)
            return res.json(user)
        }catch (e) {
            res.status(400).json(e)
        }
    }
    async getAll(req, res){
        try {
            const limitUsers = 10
            const users = await pagination(req, res, User, limitUsers, ['registerAt'])
            return res.json(users)
        }catch (e) {
            res.status(400).json(e)
        }
    }
    async update(req, res){
        try{
            const user = req.body
            const userid = req.params.id
            if(!userid){
                return res.status(400).json({message: "id не указано"})
            }
            const oldUser = await User.findByPk(userid)
            let newPhoto = ''
            if(req.files){
                const validate = await FileService.validateFile(req.files.photo.name, oldUser.photo, res)
                if(validate.success) {
                    newPhoto = await FileService.saveFile(req.files.photo, res)
                }else{
                    return res.status(400).json(validate.message)
                }
            }
             await User.update({
                                name: user.name || oldUser.name,
                                surname: user.surname || oldUser.surname,
                                email: user.email || oldUser.email,
                                gender: user.gender || oldUser.gender,
                                photo: newPhoto || oldUser.photo
                                },
                                {
                                    where: { id: userid }
                                })
            const updatedUser = await User.findByPk(userid)
            return res.status(200).json(updatedUser)
        }catch (e){
            return res.status(400).json(e)
        }
    }
}
export default new UserController();