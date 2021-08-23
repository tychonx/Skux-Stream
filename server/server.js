import dotenv from 'dotenv'
import express from 'express'
import cors from 'cors'
import pg from 'pg';

dotenv.config();

const Pool = pg.Pool;
const Client = pg.Client;

const db = new Pool({
    user : process.env.user,
    password : process.env.password,
    database  : "postgress",
    host : "localhost",
    port : 5432
})


const client = new Client({
    user : "postgres",
    password : "Tyfang@200615",
    database  : "postgres",
    host : "localhost",
    port : 5432
})



client.connect()
   .then(res => console.log("connected db"))
   .catch(err => console.log(err.message))

const app = express();

app.use(express.json())
app.use(cors())
app.use(express.urlencoded({extended: false}))

app.get("/", (req,res)=>{
    res.send("202");
})




app.listen(5050, ()=>{
    console.log("server up");
})