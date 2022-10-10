# Repositório criado para prática e listagem de comandos LINUX.

## Docker

- Comandos que serão usados em um docker

### docker run

- O comando docker run é responsável por executar um container em nosso host.

```
docker run hello-world (nesse exemplo vai rodar a imagem hello-world https://hub.docker.com/_/hello-world que serve só para testar o docker.)

docker run hello-world sleep 1d(o comando sleep é um comando que diz que o processo só vai ser executado em determinado tempo, 1day. Raramente é utilizado, mas é uma forma de sempre mostrar em execução os containers.)
```

### docker ps

- Vai mostrar os containeres em executação ou não

```
docker container ps
docker container ps -a
```

### docker ls

- Vai mostrar os containeres em executação ou não, igual ao ps só que mais verboso.

```
docker container ls
docker container ls -a (mostra todos os containers em execução ou não)
```
