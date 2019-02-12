#!/bin/bash
#Criação das variáveis locais
USUARIO="root"
TESTE01=$(test A == A; echo $?)
TESTE02=$(test -f /etc/passwd ; echo $?)
USUARIOS=$(who | awk ' {print $1}')

#Utilizando o comando echo para imprimir na tela os valores variáveis locais
#e váriavies especiais do shell
echo "Impressão na tela.............:Olá, mundo!!!"
echo "nome do usuário...............: $USUARIO "
echo "Nome do arquivo shell.........: $0"
echo "Quantidade de parâmetros......: $#"
echo "Todos os parâmetros...........: $*"
echo "Parâmetro 01..................: $1"
echo "Parâmetro 02..................: $2"
echo "Status do comando interior....: $?"
echo "PID do processo...............: $$"
echo "Comando: test A == B........: $TESTE01"
echo "Comando: test -f /etc/passwd: $TESTE02"
echo "usuários logados............: $USUARIOS"

#Utilizando o comando if para fazer os testes lógicos e
#validar o ambiente
if [ $USUARIO  == root ];
then
	echo "teste de usuário:............: Usuário é root"
else 
	echo "Teste de usuário:............: Usuário não é root"
fi

#Utilizando o comando if encadeado para aumentar a quantidade dos
#testes lógicos
if [ $TESTE01 -eq 0 ];
then
	echo "Resultado do comando test é..: VERDADEIRO"
elif [ $TESTE01 -eq 1 ];
then
	echo "Resultado do comando test é..: FALSO"
fi

#Utilizando o comando case para fazer os testes lógicos
#é validar o ambiente
case $TESTE01 in
	0) echo "Resultado do comando case é.: 0 - VERDADEIRO";;
	1) echo "Resultado do comando case é.: 1 - FALSO";;
	*) echo "Resultado do comando case é.: NÃO INDENTIFICADO"
esac

#Utilizando o comando read para receber os valores e
#fazer o teste lógico com a case
read -p "Digite as lestras: A, B ou C........: " LETRAS;
case $LETRAS in
	A|a) echo "A letra Digitada foi................: $LETRAS";;
	B|b) echo "A letra Digitada foi................: $LETRAS";;
	C|c) echo "A letra Digitada foi................: $LETRAS";;
	*) echo "Letra digitada errada.............: $LETRAS"
esac

#Utilizando o laço de loop for para verificar os números digitados
#junto com o comando read
read -p "Uma sequência de números.......: " NUMEROS;
for VALORES in $NUMEROS;
do
	echo "Números passados para o Loop..: $VALORES"
done

#Utilizando o laço de loop for para gerar
#comando read
read -p "Digite um número da Tabuada...: " NUMERO;
for TABUADA in $(seq 0 10);
do
	echo "$NUMERO X $TABUADA ......:$(($TABUADA * $NUMERO))"
done

#Utilizando o laço de loop while para alcançar os valores
#desejados com o comando read
read -p "digite um número de início.....: " INICIO;
read -p "digite um número de fim........: " FIM;
while [ $INICIO -le $FIM ];
do
	echo "Valor de sequência númerica.....: $INICIO"
	let INICIO=INICIO+1
done