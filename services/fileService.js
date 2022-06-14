import * as uuid from 'uuid'
import * as path from 'path'
import fs from 'fs'
class FileService{
        async saveFile(file, res){
            try{
                const fileName = uuid.v4() + path.extname(file.name)
                const filePath = path.resolve('static', fileName)
                await file.mv(filePath)
                return fileName
            }catch (e) {
                return res.status(400).json(e)
            }
    }
        async deleteAfterSave(filename, res){
            try{
                const filePath = path.resolve('static', filename)
                await fs.stat(filePath, (err) => {
                    if (err) {
                    }else {
                        fs.unlink(filePath, err => console.log(err))
                    }
                })
            }catch (e) {
                return res.status(400).json(e)
            }
        }
        async validateFile(filename, oldFilename, res){
            try {
                const formats = [".jpg", ".png"]
                if(formats.includes(path.extname(filename))){
                    if (oldFilename)
                        await this.deleteAfterSave(oldFilename, res)
                    return {success: true}
                }else{
                    return {
                        success: false,
                        message:"Картинки могут быть только в .jpg и .png форматах"
                    }
                }
            }catch (e) {
                return res.status(400).json(e)
            }

        }

}
export default new FileService();