import mysql from "mysql"

export const your_event = mysql.create({
  host:'localhost',
  port: 3306,
  user: 'root',
  password:'',
  database:'  your_event.sql'
})