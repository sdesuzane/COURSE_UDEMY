# ponto do Steak

'''
Criar um programa que dependendo da temperatura (em celsius) do steak, ele retorna  o ponto de cozimento em portugues. O usuario deverá fornecer a temperatura

Temperaturas - Cozimento
120°F ou 48°C - Rare (Selada)
130°F ou 54°C - Medium rare (Ao ponto para o mal)
140°F ou 60°C - Medium (Ao ponto)
150°F ou 65°C - Medium well (Ao ponto para o bem)
160°F ou 71°C - Well (Bem passada)


antes de 48°C imprimir "Cozinhar por mais alguns minutos"

'''

#O QUE EU FIZ SOZINHA #
# temperatura_celsius = int(input('Digite a temperatura da carne: '))

# if temperatura_celsius < 48:
#     print('Cozinhar por mais alguns minutos')
# elif temperatura_celsius == 48:
#     print('Selada')
# elif temperatura_celsius == 54:
#     print('Ao ponto para mal')
# elif temperatura_celsius == 60:
#     print('Ao ponto')
# elif temperatura_celsius == 65:
#     print('Ao ponto para o bem')
# elif temperatura_celsius == 71:
#     print('Bem passada')
# else:
#     print('Temperatura não suportada')

# print(temperatura_celsius)

# com ajuda do professor #
temperatura_celsius = int(input('Digite a temperatura da carne: '))

if temperatura_celsius < 48:
    print('Cozinhar por mais alguns minutos')
elif temperatura_celsius in range(48, 53):
    print('Selada')
elif temperatura_celsius in range(54, 59):
    print('Ao ponto para mal')
elif temperatura_celsius in range(60, 64):
    print('Ao ponto')
elif temperatura_celsius in range(65, 70):
    print('Ao ponto para o bem')
elif temperatura_celsius == 71:
    print('Bem passada')
else:
    print('A carne está queimada')

print(temperatura_celsius)