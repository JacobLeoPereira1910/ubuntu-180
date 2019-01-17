#!/bin/bash
#Script para atualizar o GNU/Linux

echo Atualizando as listas do Apt
echo 
	sudo apt update
echo
echo  Listas autualizadas

echo Atualizando os software
echo 
	sudo apt -y upgrade
echo
echo  Software  autualizadas

echo Atualizando o kernel
echo 
	sudo apt -y dist-upgrade
echo
echo  kernel autualizado

echo Removendo Software
echo	
	sudo apt -y autoremove
echo
echo
	sudo software removidos
	
	echo Removendo Software
echo	
	sudo apt -y 
echo
echo
	sudo software removidos
	
	

