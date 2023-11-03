require("dotenv").config()

const express = require('express');
const cors = require('cors');


const app = express()
app.use(cors({
    credentials:true
}));


require('./models/index')

app.use(express.json());


app.use(express.static('public'))

const multer = require('multer');
const path = require("path")


const storage = multer.diskStorage({
    destination:function(req,file,cb){
        cb(null,path.join(__dirname,'./public/image'))

    },


    filename:function(req,file,cb){
        const name = Date.now()+'-'+file.originalname
        cb(null,name)

    }
})

const filefilter = (req,file,cb)=>{
    (file.mimetype == 'image/jpeg'  ||file.mimetype == 'image/png'  )?
    cb(null,true):cb(null,false)
}
    
 const upload = multer({storage :storage,
    filefilter:filefilter})

    const bodyParser = require('body-parser')
    app.use(bodyParser.json())


    app.get('/api', (req, res) => {
        res.send(' hello world')
    })
    const {isAuthorize} = require('./middlewares/auth')


    var userController = require('./controllers/userController');
    var adminController = require('./controllers/adminController');


    // users API
      app.post("/register",userController.signupUsers);
      app.post("/resendEmail",userController.resendEmail);
      app.post("/verifyOTP/:id",userController.verifyOTP);
      app.post("/savePassword",userController.savePassword);
      app.get("/loginUser",userController.loginUser);
      app.post("/createAddress/",isAuthorize,userController.createAddress);
      app.post("/updateAddress/",isAuthorize,userController.updateAddress);
      app.get("/getAddressByUserId/",isAuthorize,userController.getAddressByUserId);
      app.post("/addToCart",isAuthorize,userController.addToCart);
      app.get("/getUserCart",isAuthorize,userController.getUserCart);
      app.post("/updateCartItem",isAuthorize,userController.updateCartItem);
      app.post("/deleteCartItem",isAuthorize,userController.deleteCartItem);
      app.post("/userLogout",isAuthorize,userController.userLogout);
      app.post("/addPriestInfo",isAuthorize,userController.addPriestInfo);
      app.get("/getPriestInfo",isAuthorize,userController.getPriestInfo);
      app.patch("/updatePriestInfoByToken",isAuthorize,userController.updatePriestInfoByToken);

      

      


      

      // admin API
      app.post("/addCategory",adminController.addCategory);
      app.get("/getAllCategories",adminController.getAllCategories);
      app.get("/getCategoryById/:id",adminController.getCategoryById);
      app.post("/updateCategory/:id",adminController.updateCategory);
      app.post("/deleteCategory/:id",adminController.deleteCategory);
      app.post("/addBanner",upload.fields([{ name: 'image1' }, { name: 'image2' }, { name: 'image3' }]),adminController.addBanner);
      app.post("/updateBanner",upload.fields([{ name: 'image1' }, { name: 'image2' }, { name: 'image3' }]),adminController.updateBanner);
      app.get("/getBanner",adminController.getBanner);
      app.post("/addProduct/:id",upload.single('image'),adminController.addProduct);
      app.get("/getProductbyID/:id",adminController.getProductbyID);
      app.get("/getProductbyCategoryID/:category_id",adminController.getProductbyCategoryID);
      app.post("/updateProduct/:id",adminController.updateProduct); 
      app.post("/deleteProduct/:id",adminController.deleteProduct);

    
    const PORT = process.env.PORT || 7000
    app.listen(PORT, () => {
        console.log('app will running on port 7000 ');
    })