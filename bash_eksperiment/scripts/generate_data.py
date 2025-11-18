#!/usr/bin/env python3
"""
Kuupäev: 2025-11-17
Kirjeldus: Genereerib 200 juhuslikku täisarvu vahemikus 1-100
Kasutamine: python generate_data.py
"""

import random

def generate_random_numbers(count=200, min_val=1, max_val=100):
    """Genereerib määratud arvu juhuslikke täisarve."""
    numbers = [random.randint(min_val, max_val) for _ in range(count)]
    return numbers

