# -*- coding: utf-8 -*-
"""
Created on Tue Mar  4 18:29:04 2025

@author: julia
"""

import unittest

class TestStringMethods(unittest.TestCase):
    
    def test_upper(self):
        self.assertEqual('foo'.upper(), 'FOO')
        
if __name__ == '__main__':
    unittest.main()