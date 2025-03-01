# -*- coding: utf-8 -*-
"""
Created on Tue Feb 25 17:32:51 2025

@author: julia
"""
def print_numbers():
    for number in range(n):
        if((n%2)==0):
            print("El numero ingresado es: ",number)
        else:
            print("El cuadrado del numero es: ", number**2)
            
print("Ingresa un numero entero: ")
try:
    n = int(input())
    print("El numero ingresado es: " ,n)

    print_numbers()
    
except:
        print ("La entrada no es entero")

