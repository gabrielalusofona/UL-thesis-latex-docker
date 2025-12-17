# UL-Thesis-latex com Docker

* Usa o template disponibilizado em: https://github.com/jpmcarvalho/UL-Thesis-latex

## Pré-requisitos

1. **[Docker Desktop](https://www.docker.com/products/docker-desktop)** instalado e correndo em seu sistema.

## Fluxo de Trabalho (Compilar e Limpar)
**Todos os comandos devem ser executados a partir do diretório raiz do projeto.**
1. Cria a imagem Docker:

```bash
docker build -t ul-thesis-compiler .
```
> só precisa ser feito uma vez.

2. Compilar o documento

**macOS/Linux**
```bash
docker run --rm -v "$(pwd)":/src ul-thesis-compiler make pdf
```

**Windows**
* PowerShell
```bash
docker run --rm -v "${PWD}:/src" ul-thesis-compiler make pdf
```
* CMD:
```bash
docker run --rm -v "%cd%:/src" ul-thesis-compiler make pdf
```


Saída esperada: `template.pdf` será gerado no seu diretório local.


