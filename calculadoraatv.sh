
#!/bin/bash
#######################################
# titulo: atividade calculadora
# autor: luanda e rafael
# data: 08/12/2022
# versão: 2
#######################################
echo "Escolha uma numero:"
echo "1 - adiçao "
echo "2 - subtraçao "
echo "3 - Multiplicaçao"
echo "4 - Divisao "
echo "5 - radiciaçao"
echo "6 - potenciaçao "

read equacao
echo "digite um numero"
  read num1
echo "digite mais um numero"
  read num2

function somar(){ #Função de somar: soma o numero escolhido pelo usuario
	resultado=$(($num1+$num2))
	echo $resultado
}

function subtrair(){ #Função de subtrair: subtrai o número escolhido pelo usuario
	resultado=$(($num1-$num2))
	echo $resultado
}

function multiplicar(){ #Função de multiplicar: multiplica o número escolhido pelo usuario
	resultado=$(($num1*$num2))
	echo $resultado
}

function dividir(){ #Função de dividir: divide o número escolhido pelo usuario
	resultado=$(($num1/$num2))
	echo $resultado
}

function raiz(){ #Função de raiz: calcula a raiz quadrada inserida pelo usuario
	resultado=$((sqrt$num1))
	echo $resultado
}

function potencia(){ #Função de potencia: calcula a potencia escolhida pelo usuario
	reultado=$(($num1**$num2))
	echo $resultado
}

if [ $equacao -eq 1 ]; then
  #resultado=$[num1+num2]
  resultado=$( somar num1 num2 )
elif [ $equacao -eq 2 ]; then
  resultado=$( subtrair num1 num2 )
elif [ $equacao -eq 3 ]; then
  resultado=$( multiplicar num1 num2 )
elif [ $equacao -eq 4 ]; then
  resultado=$( dividir num1 num2 )
elif [ $equacao -eq 5 ]; then
  resultado=$( echo "sqrt($num1)" | bc )
elif [ $equacao -eq 6 ]; then
  resultado=$(potencia num1 num2)

else
  echo "Opção inválida."
fi
echo "O resultado é: $resultado"
