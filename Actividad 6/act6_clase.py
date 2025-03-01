# -*- coding: utf-8 -*-
"""
Created on Tue Feb 25 17:56:31 2025

@author: julia
"""

class Enteros:
    
    def __init__(self, n):
        self.n = n
        
        
    def print_numbers(self):
       for number in range(self.n):
           if((self.n%2)==0):
               print("El numero ingresado es: ",number)
           else:
               print("El cuadrado del numero es: ", number**2)

        

print("Ingresa un numero entero: ")
num = int(input()) 
enteros = Enteros(num)            
enteros.print_numbers()