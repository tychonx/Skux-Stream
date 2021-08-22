import express from 'express'
import cors from 'cors'

const app = express();
app.use(cors())

app.get("/", (req,res)=>{
    res.send("202");
})




app.listen(5050, ()=>{
    console.log("server up");
})