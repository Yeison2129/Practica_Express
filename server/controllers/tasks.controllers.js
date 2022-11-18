import db from '../db/db.js'


export const getTasks=((req, res)=>{
    res.send('obteniendo tareas')
})

export const getTask=((req, res)=>{
  res.send('obteniendo una tarea')
})

export const createTasks=((req, res)=>{
  const {title, description} = req.body
  const result =  db.query(
    "INSERT INTO tasks (title, description) VALUES (?,?)",
    [title,  description])
    console.log(result);
    res.send('creando tareas')

})

export const updateTask=((req, res)=>{
  res.send('actualizando una tarea')
})

export const deleteTask=((req, res)=>{
  res.send('eliminando una tarea')
})