# PeanuBudget: Backend

## Description

This repository holds the source code for the backend of the PeanuBudget project. The backend is written in Python with FastAPI and SQLModel. It's served through containers, which are orchestrated by Kubernetes. Its deployment is done with GitHub Actions.

You can find more information about the PeanuBudget project at the [index repository](https://github.com/GiuseppeTT/peanubudget).

## I'm completely lost, where should I start?

If you want to **understand the backend**, check the `app/` folder, starting with the `app/main.py` file.

If you want to **understand the containerization**, check the `Dockerfile` file and the `kubernetes/` folder.

If you want to **understand the big picture**, check the [index repository](https://github.com/GiuseppeTT/peanubudget).

If you are new to FastAPI, the [User Guide](https://fastapi.tiangolo.com/tutorial/) tutorial from FastAPI's documentation is a great place to start. Additionally, you can check the [User Guide](https://sqlmodel.tiangolo.com/tutorial/) tutorial from SQLModel's documentation and even the [Basic Usage](https://python-poetry.org/docs/basic-usage/) tutorial from Poetry's documentation.

## How to ...

### ... Set up the project using Dev Containers

You can quickly set up the project for development using [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) by following these steps in VSCode:

1. Open VSCode
1. Install the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension
1. Open the command palette (press `F1` key), select the `Git: Clone` command (you may need to type it) and clone this repository https://github.com/GiuseppeTT/peanubudget-backend.git
1. Create the `.env` file to set up the necessary environment variables by using the `.env.example` file as a guide
1. Open the command palette (press `F1` key) and select the `Dev Containers: Open Folder in Container...` command (you may need to type it)

After that, the project will be all set up.

> **Note:** You may need to rebuild the container if you ever change the `.env` file again. You can do that with the `Dev Containers: Rebuild Container Without Cache` command from the command palette (press `F1` key).

> **Note:** You may need to install [docker](https://www.docker.com/) first.

> **Note:** You can check more instructions on the [Dev Containers documentation](https://code.visualstudio.com/docs/devcontainers/containers).

### ... Deploy

There is no manual deployment. The backend is automatically deployed to Azure every time a commit is pushed to main (only possible through pull requests). You can check the CI/CD workflow responsible for that at the `.github/workflows/deploy-app.yaml` file.

### ... Perform local operations

There is a list of useful scripts for local operations in the `script/` folder. Assuming you are at the project root folder, you can execute the script `script-name.sh` with the `. script/script-name.sh` command. Just make sure to read the script file before executing it as there may be additional instructions.

## Repository structure

```
.
├── .devcontainer/           # Devcontainer's files
├── .git/                    # [Git ignored] [Auto generated] Git's files
├── .github/workflows/       # GitHub Actions's workflows (CI / CD)
├── .mypy_cache/             # [Git ignored] [Auto generated] Mypy's cache
├── .pytest_cache/           # [Git ignored] [Auto generated] Pytest's cache
├── .terraform/              # [Git ignored] [Auto generated] Terraform's files
├── .venv/                   # [Git ignored] [Auto generated] Python virtual environment
├── app/                     # App's code
│   ├── crud/                # CRUD's code
│   ├── model/               # Model's code (input data, database data, output data, and update data)
│   ├── router/              # Endpoints's code
│   ├── test/                # App's tests
│   ├── __init__.py          # This is necessary to make app/ a python module
│   ├── config.py            # App's configurations
│   ├── database.py          # Database's code
│   ├── dependency.py        # Dependency injection's code
│   └── main.py              # Responsible for defining the app and connecting all the app's code
├── kubernetes/              # Kubernetes' code (Helm chart)
│   ├── templates/           # Object's code
│   ├── Chart.yaml           # Chart's configurations
│   └── values.yaml          # Default values for template variables
├── script/                  # Useful scripts for performing local operations
├── .env                     # [Git ignored] List of environment variables (mainly for secrets)
├── .env.example             # Example of .env file
├── .gitignore               # List of files ignored by git
├── .pre-commit.config.yaml  # Pre-commit's configurations
├── .terraform.lock.hcl      # [Auto generated] Terraform's lock file
├── Dockerfile               # Docker image instructions
├── LICENSE                  # Project's license
├── poetry.lock              # [Auto generated] Poetry's lock file
├── README.md                # This very file you are reading
├── debug.py                 # [Git ignored] An auxiliary script for debugging (like a whiteboard)
├── terraform.tf             # Terraform's configurations
├── poetry.toml              # Poetry's configurations
└── pyproject.toml           # Project's configurations
```
