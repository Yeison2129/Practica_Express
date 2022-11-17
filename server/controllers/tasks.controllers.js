

export const getTasks=((req, res)=>{
    res.send('obteniendo tareas')
})

export const getTask=((req, res)=>{
  res.send('obteniendo una tarea')
})

export const createTasks=((req, res)=>{
  console.log(req.body);
  res.send('creando tareas')
})

export const updateTask=((req, res)=>{
  res.send('actualizando una tarea')
})

export const deleteTask=((req, res)=>{
  res.send('eliminando una tarea')
})