# Repositório criado para prática e listagem de comandos docker.

# Exemplo de Dockerfile

- Docker file com explicação:

## Docker

- Comandos que serão usados em um docker

### docker run

- O comando docker run é responsável por executar um container em nosso host. Se não existir localmente, ele busca o container no docker hub https://hub.docker.com/.

- Procura a imagem localmente -> Baixa a imagem caso não encontre localmente -> Valida o hash da imagem -> Executa o container.

```
docker run hello-world (nesse exemplo vai rodar a imagem hello-world https://hub.docker.com/_/hello-world que serve só para testar o docker.)

docker run hello-world sleep 1d(o comando sleep é um comando que diz que o processo só vai ser executado em determinado tempo, 1day. Raramente é utilizado, mas é uma forma de sempre mostrar em execução os containers.)

docker run -it hello-world bash (roda o docker e já abre o terminal interativo.)
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

### docker pause

- Usado para pausar um container

```
docker pause idcontainer (esse id é achado no comando ps ou ls)
```

### docker unpause

- Usado para despausar um container

```
docker unpause idcontainer (esse id é achado no comando ps ou ls)
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

### docker rm

- Comando utilizado para remover um container.

```
docker rm idcontainer
docker rm idcontainer --force (vai forçar a exclusão caso esteja rodando)
```

### -d

- -d é um comando utilizado para manter algo em execução e não bloquear o terminal. -d = detached

```
docker run -d hello-world
docker compose up -d
```

### top

- Usado para ver as árvores de processos, geralmente usado dentro de um container.

# Observações

## Images

- Todas as imagens tem diversas camadas que formam uma única. E todas elas, quando baixamos, vem no modo RO, read only.

- Beleza, mas então como a gente consegue criar algo dentro dessa imagem através de um container? É simples! Como mencionado acima, imagem é um conjunto de camadas e quando baixamos uma imagem, uma nova camada acima das outras é criada, permitindo o uso das camadas que ficam abaixo e criando uma nova que é R/W read and write.

### docker images

- Usado para ver as imagens baixadas no sistema.

```
docker images
```

### docker inspect

- Usado para inspecionar uma imagem

```
docker inspect idimagem
```

### docker history

- Usado para ver o histórico de alterações da imagem em questão. Mostrando todas as camadas que formam a imagem principal.

```
docker history idimagem
```

## Ports

- Quando executamos um container com algo dentro, geralmente vinculamos uma porta nele. Isso não quer dizer que essa porta vai ficar acessível fora do nosso container, sendo necessário EXPOR essa porta para acesso externos, mesmo dentro de um container em wsl e você tentando acessar pelo navegador do windows.

### port

- Usado para mapear como está o funcionamento de portas de um container em relação ao host.

```
docker port idcontainer
```

### -P (maísculo)

- Usado para tornar acessível o container através de uma porta pelo host. Resolvendo o problema da observação acima.

```
docker run -d -P dockersanples/static-site (nesse exemplo, estamos usando -d para detached e o -p que vai tornar portas padrões 80 e 443 acessíveis fora do container. Depois é só rodar o comando docker port idcontainer para ver as portas abertas e o host. se estiver rodando dentro da wsl localhost:80, se tiver fora basta passar o ip:porta (acho que funciona))
```

### -p (minusculo)

- Usado para apontar qual porta da minha máquina vai refletir na porta do container.

```
docker run -d -p 8080:80 dockersanples/static-site (aqui ele informa que a porta 8080 da minha máquina reflita na porta 80 do container)
```
