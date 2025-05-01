FROM mac

# Install required tools for LaTeX workflow
RUN apt-get update && apt-get install -y \
    texlive-full \
    latexmk \
    biber \
    git \
    make \
    curl \
    && apt-get clean

# Set up a non-root user
RUN useradd -ms /bin/bash latexuser
USER latexuser
WORKDIR /home/latexuser/project

# Set default command to run when starting container
CMD ["bash"]
