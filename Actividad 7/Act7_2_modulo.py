# -*- coding: utf-8 -*-
"""
Created on Tue Mar  4 17:17:07 2025

@author: julia
"""

import act7_1_numeros
import ac7_3_abstrac_class

print("Ingrese un numero: ")
n = int(input())
enteros = act7_1_numeros.Numeros(n)
enteros.print_numeros()

print("Ingresa un numero racional: ")
q = float(input())
racionales = act7_1_numeros.Racionales(q)
racionales.print_numeros()

print("Ingrese un numero para el modulo abstracto:")
m = float(input())
racionales = ac7_3_abstrac_class.Racionales(m)
racionales.print_numeros()

