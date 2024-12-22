import gettext
import os
import random
import sys
# -*- coding: utf-8 -*-
# Configuración para gettext
locale_dir = os.path.join(os.path.dirname(__file__), 'locale')
current_language = 'es'  # Idioma por defecto

if len(sys.argv) > 2 and sys.argv[1] == '-l':
    current_language = sys.argv[2]
# Carga de las traducciones
t = gettext.translation('messages', localedir=locale_dir, languages=[current_language], fallback=True)
_ = t.gettext

def genera_numero_aleatorio():
    #del 1 al 3
    maquina = random.randint(1, 3)
    if maquina == 1:
        print(_('La máquina eligió piedra'))
    elif maquina == 2:
        print(_('La máquina eligió papel'))
    elif maquina == 3:
        print(_('La máquina eligió tijera'))
    return maquina

def eleccion():
    print(_('¿Piedra, papel o tijera?'))
    print(_('1. Piedra'))
    print(_('2. Papel'))
    print(_('3. Tijera'))

    eleccion = input(_('Elige una opción: '))
    if eleccion == '1':
        print(_('Elegiste piedra'))
    elif eleccion == '2':
        print(_('Elegiste papel'))
    elif eleccion == '3':
        print(_('Elegiste tijera'))
    else:
        print(_('Opción inválida. Por favor, intente de nuevo.'))
        return -1
    return int(eleccion)


def main():
    eleccion_usuario = eleccion()
    eleccion_maquina = genera_numero_aleatorio()

    if eleccion_usuario == -1:
        return
    if eleccion_usuario == eleccion_maquina:
        print(_('¡Empate!'))
    elif eleccion_usuario == 1 and eleccion_maquina == 3:
        print(_('¡Ganaste!'))
    elif eleccion_usuario == 2 and eleccion_maquina == 1:
        print(_('¡Ganaste!'))
    elif eleccion_usuario == 3 and eleccion_maquina == 2:
        print(_('¡Ganaste!'))
    else:
        print(_('¡Perdiste!'))

if __name__ == "__main__":
    main()
