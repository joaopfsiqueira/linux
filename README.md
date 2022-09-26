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

## touch

- Usado para criar arquivos

```
touch nomearquivo.extensao
touch file_name1.txt file_name2.txt file_name3.txt (multiplos arquivos)
```

- Também é usado para alterar a hora dos arquivos.

```
touch -a file_name.txt (alterando a hora de acesso para hora atual)
touch -m file_name1.txt (hora de modificação de um arquivo)
touch -am file_name1.txt (acesso e modificação juntos, a (access) m (modification))
touch -c file_name.txt (modificar hora de acesso sem criar novo arquivo)
```

- Sendo específico com a hora do arquivo

```
touch -t 201903081047.30 file_name.txt

O formato da hora específica é definido pelo padrão CCYYMMDDhhmm.ss, em que:

CC – Os dois primeiros dígitos do ano.
YY – Os dois dígitos subsequentes do ano.
MM – O mês do ano [01-12].
DD – O dia do mês [01-31].
hh – A hora do dia [ 00-23].
mm – O minuto da hora [00-59].
ss – O segundo do minuto [00-59].
```

## zip

- Usado para compactar arquivos.

```
zip -r nomedoarquivocriado.zip diretorio/ (caso n esteja dentro do diretorio atual)
zip -rq nomedoarquivo.zip diretorio/ (compactar sem gerar log)
zip bemvindo.zip *.txt (seja possível compactar todos os arquivos com extensão .txt que estão dentro do diretório)
```

## unzip

- Usado para descompactar arquivos.

```
unzip nomedoarquivocriado.zip
unzip -l nomedoarquivo.zip (serve para visualizar o que tem dentro do arquivo zip)
unzip -q nomedoarquivo.zip (serve para descompactar sem ficar enchendo as linhas)
```

# tar

- Tar é uma extensão de compactação muito mais convencional de se utilizar.

```
tar -cz diretorio > work.tar.gz (-c será compactado, -z pelo tipo zip. O ">" indica saída de dados.)
```

- Para descompactar tar

```
tar -xz < work.tar.gz ("<" indica entrada de dados, -x indica "extract" )
```

- Podemos fazer sem redirecionamento! (< ou >)

```
tar -czf work.tar.gz workspace/ (com acréscimo do -f)
```

- O comando tar não é verborrágico, ele não gera logs, então ao invés do zip que tamos que passar -q para não gerar logs, aqui temos que passar para GERAR.

```
tar -vxzf work.tar.gz (-v)
```

# Caracteres coringas

## \*

O asterisco é usado para informar "todos".
O exemplo executa todos os arquivos com o nome de arquivo no inicio.

```
cat arquivo*.txt
```
