# LaTeX using Docker

This repository aims to provide a Docker Image from which you can run latex locally, but without the hassle of installing all packages, TeX distribution, editor etc. Simply write your code, build the container, run it, and then hit 

```bash
latexmk -pdf main.tex
```

## LaTeX Project with Docker + VS Code

This project provides a complete and portable setup for writing LaTeX documents using a consistent Docker environment. It includes:

- 🐳 Docker container with full LaTeX toolchain
- ⚙️ `latexmk` build system
- 🖥️ Optional VS Code integration with LaTeX Workshop
- 📚 Support for multiple `.bib` bibliography files

## Requirements
You need to install the following on your machine: 
- VSCode: coding environment where you will write your code.
    - Install the **"Dev Containers"** and **"LaTeX Workshop"** extensions
- Skim: light-weight PDF viewer which can sync with VSCode for automated compilation
- Docker: to run the container



## Getting started
Instructions to get started with a new local LaTeX project.

### 1. Clone This Repository

```bash
git https://z.depoorter.name:4243/tea/bert/latex-docker-project.git
cd latex-docker-project
```

### 2. Write project
Now you can start writing your project. This requires a `main.tex` file which governs the build of your LaTeX project. Creates all subfiles to this directory. This is how your directory should look like, potentially with additional `.tex` files or directories with e.g. figures:
.
├── Dockerfile               # Docker build instructions
├── docker-compose.yml       # Docker config for running LaTeX container
├── Makefile                 # define build and clean commands
├── main.tex                 # main latex file
├── yourbibliography.bib     # file with references
└── .devcontainer/           # VS Code container config
    └── devcontainer.json

### 3. Example Use

#### VSCode Usage (Recommended)

Open the directory in VSCode, where you should install the Docker extension. Additionally, start the Docker desktop app. 
Then, when prompted click **Reopen in Container** and start editing the documents (`.tex` files). When saving the edits, the project will compile automatically. See the next section for what happend underneath. 

To open the generated pdf, I advise to use Skim. This PDF viewer allows to track changes in an opened pdf. That means you can write, save, auto-compile and review your changes on the fly without having to reload!

#### Non-VSCode usage
If you want to compile the project, simply start the build:

```bash
make build
```
This should start the Docker container, run the command `latexmk -pdf main.tex` in there and produce a `main.pdf` in this folder.

Note that LaTeX will generate a load of auxiliary files. Simply clean up your directory by running 
```bash
mke clean 
```
