# -*- coding: utf-8 -*-
"""
Created on Tue Feb 25 17:32:08 2025

@author: julia
"""

print("Hola Julia, ingresa un numero entero")

try:
    n = int(input())
    print("el numero ingresado es:", n)

    for number in range(n):
        print(number)
except:
    print ("La entrada no es entero")