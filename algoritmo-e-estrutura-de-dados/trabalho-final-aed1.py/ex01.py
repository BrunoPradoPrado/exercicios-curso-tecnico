# ==========================
# 1) Conversão para segundos
# ==========================

def segundos(horas, minutos, segundos):
    soma = (horas * 60 * 60) + (minutos * 60) + segundos
    print("O total do tempo informado (em segundos) é:", soma)

horas = int(input("Informe quantidade de horas: "))
minutos = int(input("Informe quantidade de minutos: "))
segundo = int(input("Informe quantidade de segundos: "))
segundos(horas, minutos, segundo)
