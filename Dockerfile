## Queremos que nessa imagem tenha node para rodar nosso servidor.
## para isso, vamos utilizar a imagem do node no docker hub para rodar o projeto.
## vamos baixar da imagem node:16 versao 16, é possível visualizar as versões no docker hub
FROM node:16 
## Definindo o nosso diretório de trabalho padrão.
WORKDIR /nomeDaPastaOndeTaOprojeto
## copiar esse conteúdo para determinada pasta dentro do container. Usamos . . pq pega do workdir acima
COPY . .
## Instalar as depedências da nossa aplicação
RUN npm install
## Definindo o ponto de entrada do nosso container, podemos executar o nosso projeto, por exemplo.
ENTRYPOINT npm start 