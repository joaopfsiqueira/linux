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

## hostname

- Utilizado para descobrir o hostname

```
hostname
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

## clear

- Usado para limpar o terminal

```
clear
```

# Caracteres coringas

## \*

O asterisco é usado para informar "todos".
O exemplo executa todos os arquivos com o nome de arquivo no inicio.

```
cat arquivo*.txt
```
