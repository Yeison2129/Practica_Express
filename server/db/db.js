
import mysql from "mysql"
 const your_event = mysql.createConnection({
  host:'localhost',
  port: 3306,
  user: 'root',
  password:'',
  database:'your_event'
})

your_event.connect((error)=>{
  if (error) {
    throw  error
  } else {
    console.log("Conectado uwu");
  }
})

export default your_event
