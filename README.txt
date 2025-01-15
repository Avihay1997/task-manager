Part 1: Bash - Setting Up the Environment

1. Create a directory named task_manager_project and navigate into it.

2. Create a Bash script named setup.sh that performs the following actions:

	- Ensures that Python and Docker are installed on the system.

	- Creates a virtual environment for Python.

	- Installs the necessary dependencies (FastAPI, uvicorn).

	- Initializes a Git repository and connects it to GitHub.


Part 2: Python - Creating a Task Management API

3. Inside the directory, create a folder named backend and navigate into it.

4. Write a main.py file that contains an API with the following routes using FastAPI:
	
	- POST /tasks - Create a new task (task details: title and description).
	
	- GET /tasks - Retrieve all tasks.
	
	- DELETE /tasks/{task_id} - Delete a task by ID.
	
5. Create a requirements.txt file with the required dependencies.


Part 3: Docker - Containerizing the API

6. Write a Dockerfile that:

	- Uses Python 3.9 as the base image.
	
	- Installs dependencies from requirements.txt.

	- Runs the API with uvicorn.

7. Create a docker-compose.yml file that allows for easy service management.

8. Build the container and run the service in Docker.


Part 4: Git/GitHub - Version Control

9. Create a repository on GitHub named task-manager.

10. Add a suitable .gitignore file for Python and Docker.

11. Run git init to initialize the repository.

12. Add all the files with git add ..

13. Perform an initial commit with git commit -m "Initial commit".

14. Link the repository to GitHub with git remote add origin <repo_url>.

15. Run git push -u origin main to upload the files.

16. To pull updates from the repository, use git pull origin main.


Part 5: Kubernetes - Deployment on Minikube

17. Write a deployment.yaml file for Kubernetes that:

	- Defines a Deployment for running the API.

	- Defines a Service for exposing the API.

18. Deploy the service on Minikube and verify that it is accessible.



Bonus Challenge: Add a database (SQLite or PostgreSQL) to store the tasks instead of using in-memory storage./
