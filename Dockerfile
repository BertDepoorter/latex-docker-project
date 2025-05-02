FROM debian:bookworm

# Install required tools for LaTeX workflow
RUN apt-get update && apt-get install -y \
    texlive-base \
    texlive-latex-recommended \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-math-extra \
    texlive-lang-english \
    texlive-science \
    texlive-pictures \
    texlive-bibtex-extra \
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
