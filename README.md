# Repositório criado para prática e listagem de comandos LINUX 2.

## ps

- Comando utilizado para verificar o que está sendo rodado no linux. Retornando os id

```
ps (apenas os que foram executados no terminal em questao)
ps -e (todos os arquivos de todos os terminais)
ps -ef (todos os arquivos de todos os terminais, todas as informações possíveis)
```

## pstree

- Comando utilizado para visualizar os processos que estão em forma de árvore.

```
pstree
```

## jobs

- Comando utilizado para visualizar os processos que estão parados!

```
jobs
```

## bg

- Comando utilizado para jogar um processo que estava parado devolva ao background.

```
bg 1 (id do processo dentro de jobs)
```

## fg

- Comando utilizado para jogar um processo ao foreground, travando o dash com a execução dele

```
fg 1 (id do processo dentro de jobs)
```

## kill

- Serve para forçar a parada de determinados processos.

```
kill idDoProcesso (basta rodar ps -e para achar o id do processo em questão.)
kill -9 idDoProcesso (para de vez)
```

## grep

- A lista de processos é bem grande! Para achar o que queremos usamos o grep!

```
ps -ef | grep firefox (comando vai sinalizar todos os processos e seus ids que contem a palavra firefox)

cat google.txt | grep "Larry Page and Sergey Brin" (imprimindo todas as linhas que contem a frase em questao de dentro do arquivo google.txt)
```

## top

- Serve para listar com o ps e o greg os processos que mais estão consumindo CPU.

```
ps -ef | grep top
```

## killall

- Serve para encerrar todos os processos do mesmo programa, ou seja, com o mesmo NOME, sem o id

```
killall top
killall -9 top (garantir que vai parar de vez)
```

## gedit

- Criar arquivo script.

```
gedit nomedoArquivo &
```

## sh

- Serve para executar SCRIPTS, sem precisar fechar e abrir o terminal caso tenha acabo de criar um arquivo.

```
sh nomedoarquivo
```

## ./nomedoarquivo

- Executar arquivos. Só é possível se o usuário em questão tiver permissões para execução.

```
./dorme
```

# Permissões

```
Os arquivos no Linux podem ter permissões para leitura (r), escrita (w) e execução (x). Essas permissões são distribuídas para o dono do arquivo, ao grupo de usuários e também para outros usuários.

se rodarmos ls -l podemos ver todos os arquivos e suas permissões ao lado esquerdo, "d" sempre representa que é o dono do arquivo e dps vem as suas permissões.

as primeiras letras depois do - traço define as permissões que o DONO do arquivo tem. depois do segundo - as pemissões que o GRUPO tem e por fim, as permissões que vem depois do terceiro - é as permissões dos outros usuários
```

## chmod

- Comando utilizado para alterar as permissões em um determinado arquivo ou pasta.

```
chmod +x dorme (dando permissão de execução ao arquivo dorme para todos os usuários +x)
chmod +r dorme (dando permissão de read, leitura, ao arquivo dorme para todos os usuários +r)
chmod +w dorme (dando permissão de write, escrita ao arquivo dorme para todos os usuários +w)
chmod g+w nico/ (permissão de write para o GRUPO (g))
```

## locate

- Serve para localizar determinado arquivo.

```
locate firefox
```

- O locate é rápido pq o linux armazena as localizações em um db.
- Caso tenhamos adicionado um novo arquivo e ele ainda não exista no db, devemos rodar:

## updatedb

- Serve para atualizar o db do linux

```
sudo updatedb
```

## which

- Procura qual é o arquivo que eu vou executar se eu usar tal comando. Retornando a pasta do arquivo

```
which firefox
```

# Usuário

## sudo

- Serve para executar determinada ação como se o usuário atual fosse o usuário root

```
sudo mv arquivo /diretorio
sudo apt-get install
```

## passwd

- Serve para mudar a senha do usuário atual.

```
passwd
sudo passwd (configura senha para o usuário root)
```

## su

- Comando utilizado para trocar de usuário.

```
su nomedousuario
```

## adduser

- Serve para adicionar novos usuários

```
adduser nomeusuario
```

# Variáveis de ambiente

## env

- Comando utilizado para listar todas as variáveis de ambiente!

```
env
env | grep path (dando um destaque só para env path)
```

## PATH

- Usado para criar uma nova variável que utiliza path.

```
PATH=$PATH:/diretoriodoarquivo
```

- Com esse comando, eu deixo de precisar estar dentro de um determinado diretório para rodar determinado arquivo.

# Instalação de programas

## apt

- apt é um comando usado para instalar pacotes.

```
sudo apt-get update
sudo apt-get install nomeDoPacote

apt-cache search something(comando que serve para fazer pesquisa dos pacotes que existem.)
```

## dpkg

- Comando que serve para instalar pacotes que não sejam através do apt.
- Para isso, precisamos baixar a versão deb do pacote e depois rodar

```
sudo dpkg -i programabaixado.deb (-i de install)
sudo dpkg -r google-chrome-stable (removendo pacote)
```

## service stop / start

- Comando utilizado que pega um serviço e para.

```
sudo service nomedoserviço stop
sudo service nomedoserviço start
```

# Acessando servidor remoto linux

- Para conectar, vamos usar o ssh! Temos acesso pelo terminal.

```
sudo apt-get install ssh (instalando tanto o cliente como o servidor)

ssh usuarioQueVaiLogar@endereçoDaMaquina(exemplo: ssh joao@localhost)

ssh -X jose@localhost (o -X diz que tudo o que acontecer no servidor fora do terminal, vai acontecer tbm na minha máquina.)
```
