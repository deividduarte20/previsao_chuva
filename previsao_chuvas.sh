#!/usr/bin/env bash

# previsa_chuvas.sh url - Extrai quantidade em mm de chuvas da url da cidade
#
# Site:       https://www.youtube.com/c/CaindonaRede
# Autor:      Deivid Duarte
# Manutenção: Deivid Duarte
#
# ------------------------------------------------------------------------ #
#  Este programa irá extrair a preciptação de chuvas
#  Exemplos:
#      $ ./previsao_chuva.sh url
#
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 12/06/2022, Deivid:
#       - Criado primeiro código 
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.19
# ------------------------------------------------------------------------ #
#
# ------------------------------- TESTES ----------------------------------------- #
[ ! -x "$(which lynx)" ] && sudo apt install lynx -y # Lynx instalado?
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
STATUS=`lynx -source $1 | grep _margin-l-5 | cut -d ">" -f2 | cut -d "-" -f1 | sed 4,5d | sed 1,2d`
echo $STATUS
# ------------------------------------------------------------------------ #
