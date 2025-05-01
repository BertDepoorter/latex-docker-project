# LaTeX using Docker

This repository aims to provide a Docker Image from which you can run latex locally, but without the hassle of installing all packages, TeX distribution, editor etc. Simply write your code, build the container, run it, and then hit 

```bash
latexmk -pdf main.tex


## LaTeX SetUp

### Requirements
Install the following applications:
- VSCode: coding environment where you will write your code.
    - Install the **"Dev Containers"** and **"LaTeX Workshop"** extensions
- Skim: light-weight PDF viewer which can sync with VSCode for automated compilation
- Docker: to run the container

### LaTeX Project with Docker + VS Code

This project provides a complete and portable setup for writing LaTeX documents using a consistent Docker environment. It includes:

- 🐳 Docker container with full LaTeX toolchain
- ⚙️ `latexmk` build system
- 🖥️ Optional VS Code integration with LaTeX Workshop
- 📚 Support for multiple `.bib` bibliography files


### 2. Clone This Repository

```bash
git clone https://github.com/BertDepoorter/latex-docker-project.git
cd latex-docker-project