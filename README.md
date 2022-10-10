# Repositório criado para prática e listagem de comandos LINUX.

## Docker

- Comandos que serão usados em um docker

### docker run

- O comando docker run é responsável por executar um container em nosso host. Se não existir localmente, ele busca o container no docker hub https://hub.docker.com/.

- Procura a imagem localmente -> Baixa a imagem caso não encontre localmente -> Valida o hash da imagem -> Executa o container.

```
docker run hello-world (nesse exemplo vai rodar a imagem hello-world https://hub.docker.com/_/hello-world que serve só para testar o docker.)

docker run hello-world sleep 1d(o comando sleep é um comando que diz que o processo só vai ser executado em determinado tempo, 1day. Raramente é utilizado, mas é uma forma de sempre mostrar em execução os containers.)
```

### docker ps

- Vai mostrar os containeres em executação ou não

```
docker ps
docker container ps -a
```

### docker ls

- Vai mostrar os containeres em executação ou não, igual ao ps só que mais verboso.

```
docker ls
docker container ls -a (mostra todos os containers em execução ou não)
```

### docker stop

- Usado para parar um container

```
docker stop idcontainer (esse id é achado no comando ps ou ls)
```

### docker start

- Usado para dar um start em um container parado.

```
docker start idcontainer (esse id é achado no comando ps ou ls)
```

### docker exec

- Usado para executar um container em modo interativo.

```
docker exec -it idcontainer bash (vai rodar o container em modo bash, no terminal, usado para usar comandos dentro do docker.)
```
