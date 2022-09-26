# Repositório criado para prática e listagem de comandos LINUX.

## pwd

- Utilizado para descobrir o diretório em que está.

```
pwd
```

## whoami

- Utilizado para descobrir o usuário que está sendo usado.

```
whoami
```

## ls

- Usado para listar os arquivos no diretório atual.

```
ls
ls -la (LIST ALL)
ls -a  (retorna todos os arquivos, até os invisíveis)
ls .. (listando diretorio anterior)
```

## echo

- Usado para printar algo no terminal, ecoar.

```
echo bem vindo
echo bem vindo > bemvindo.text (colocando echo dentro de um arquivo)
echo bem vindo >> bemvindo.text (adicionando echo dentro de um arquivo existente)
```

## mkdir

- Usado para criar pastas

```
mkdir nomedapasta (make diretorio)

```

## rmdir

- Usado para excluir diretórios

```
rmdir nomedapasta
```

## rm

- Usado para excluir arquivos

```
rm nomedoarquivo
rm -r diretorio(excluir todos os arquivos do diretório)
```

## cat

- Usado para ler arquivos.

```
cat nomedoarquivo.extensão
cat -n nomedoarquivo.extensao (retorna o conteúdo das linhas no arquivo)
```

## cp

- Copiar texto de um arquivo para o outro.

```
cp mensagem.txt bemvindo.txt (copiando texto de mensagem.txt para bemvindo.txt)
cp -r projetos-java projetos-c# (copiando todos os arquivos de um diretório)
```

## mv

- Renomear arquivo ou mover para outro diretório.

```
mv arquivo1 arquivo2 (renomeando)
mv arquivo1 /tmp (movendo repositório)
mv arquivo1 ../
mv bemvindo.txt projetos-java/bemvindo-novo-nome.txt (jogando arquivo para outro diretorio e renomeando)
```

## clear

- Usado para limpar o terminal

```
clear
```

## zip

- Usado para compactar arquivos.

```
zip -r nomedoarquivocriado.zip diretorio/
zip -rq nomedoarquivo.zip diretorio/ (compactar sem gerar log)
```

## unzip

- Usado para descompactar arquivos.

```
unzip nomedoarquivocriado.zip
unzip -l nomedoarquivo.zip (serve para visualizar o que tem dentro do arquivo zip)
unzip -q nomedoarquivo.zip (serve para descompactar sem ficar enchendo as linhas)
```

# Caracteres coringas

## \*

O asterisco é usado para informar "todos".
O exemplo executa todos os arquivos com o nome de arquivo no inicio.

```
cat arquivo*.txt
```
