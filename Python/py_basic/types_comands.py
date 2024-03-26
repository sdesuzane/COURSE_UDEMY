#DATA TYPES

'''
text: string = STG('text')
number: INTEGER = INT(1,2,3...) float = fração (2.5, 4.7, 6.2...)
boolean type: bool = TRUE ou FALSE 
'''

'''
#variables

name = 'Suzane'
idade = 26
#idade = str(idade)
cidade = 'Samambaia'
print('A '+ name +' tem '+ str(idade) +' anos e mora em '+ cidade + '.') #converti a variavel int em str
'''
'''
#input

name = input('Digite seu nome: ')
idade = input('Digite sua idade: ')
#idade = str(idade)
cidade = input('Onde mora: ')
trabalho = input('Com o que trabalha: ')
print('Meu nome é '+ name +', tenho '+ idade +' anos, moro em '+ cidade + ' e trabalho com ' + trabalho + '.')
'''

'''
#calculando idade com input

ano_nascimento = input('Ano em que nasceu: ')
idade = 2024 - int(ano_nascimento)
print(idade)
'''

'''
#Slice

fruta = 'Abacate'
#index   0123456
print(fruta[1:3]) #vai até o index 3 sem mostrar o index 3... sempre mostrará o index anterior
print(fruta[-3]) #mostra de trás para frente

valor = 99.73
#index  01234
valor = str(valor) #converti para string, dava erro por ser float

print(valor[2:5]) #de tal index até tal index
print(valor[-5:-1])
print(valor[:3]) #qualquer coisa ate o index
print(valor[1:]) #index ate o final
'''
'''
#formated strings

nome = 'Maria'
sobrenome = 'Suzane'
profissao = 'data scientist'

text = f'A {nome} {sobrenome} é uma excelente {profissao}'

print(text)
'''

msg = '         eu gosto de joGar'
#index 0123456789
print(msg.lower())
print(msg.upper())
print(msg.capitalize()) #primeira letra em maiuscula
print(msg.find('de')) #informa o index
print(msg.replace('joGar', 'programar')) #faz a troca
print(msg.strip()) #retira espaco que sobra