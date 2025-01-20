from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from typing import List

app = FastAPI()

class Task(BaseModel):
    title: str
    description: str

tasks = {}
task_counter = 1

@app.post("/tasks", response_model=Task)
def create_task(task: Task):
    global task_counter
    task_id = task_counter
    tasks[task_id] = task
    task_counter += 1
    return task

@app.get("/tasks", response_model=List[Task])
def get_tasks():
    return list(tasks.values())

@app.delete("/tasks/{task_id}")
def delete_task(task_id: int):
    if task_id in tasks:
        del tasks[task_id]
        return {"message": "Task deleted successfully"}
    else:
        raise HTTPException(status_code=404, detail="Task not found")
