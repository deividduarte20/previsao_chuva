#!/bin/bash

STATUS=`lynx -source https://www.climatempo.com.br/previsao-do-tempo/cidade/1527/saomigueldoscampos-al | grep _margin-l-5 | cut -d ">" -f2 | cut -d "-" -f1 | sed 4,5d | sed 1,2d`

echo $STATUS
