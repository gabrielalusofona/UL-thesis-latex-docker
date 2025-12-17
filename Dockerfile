FROM texlive/texlive:latest

WORKDIR /src

# Dependências do sistema
RUN apt-get update && apt-get install -y \
    make \
    bash \
    zip \
    unzip \
    python3 \
    python3-pip \
    perl \
    ghostscript \
    fonts-liberation \
    && rm -rf /var/lib/apt/lists/*

# Garante que latexmk existe
RUN latexmk --version

# Comando por defeito
CMD ["make", "pdf"]
