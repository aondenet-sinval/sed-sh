#!/bin/sed -f
#Definindo a aplicação do comando entre a ocorrência de 'Agora' e 'De noite'
/Agora/ , /De noite/ {
#Encontre onde está 'Agora' e aplique após ele opção 'b' pula a marcação
  /Agora/ b
  #Já foi definido entre Agora e De noite
  /De noite/ b
  s/^/->/
  #Coloque -> no inicio da linha '^' entre Agora e de De noite
  s/$/<-/
  #Agora coloque no final da linha '$'
  a De agora em diante
  #Agora após cada aplicação opção 'a' adicione o texto 'De agora em diante'
  #while?
  a
  #Agora adicionamos uma linha em branco
}
