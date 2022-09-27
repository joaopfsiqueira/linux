# Repositório criado para prática e listagem de comandos LINUX 2.

## ps

- Comando utilizado para verificar o que está sendo rodado no linux. Retornando os id

```
ps (apenas os que foram executados no terminal em questao)
ps -e (todos os arquivos de todos os terminais)
ps -ef (todos os arquivos de todos os terminais, todas as informações possíveis)
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
killall -9 top (para de vez)
```
