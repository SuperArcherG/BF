#!/usr/bin/env python3
import sys
if len(sys.argv) < 2:
    print("For help run \"bf help\"")
    exit()
if sys.argv[1] == "help":
    print('Usage: python3 main.py <file_path> <cell_count> <output_type (0: Decimal, 1: Text)>')
    exit()
m = [0 for _ in range(int(sys.argv[2]))]
pr = open(sys.argv[1], 'r').read()
of = sys.argv[3]
p, c, n = 0, 0, 0
while True:
    if p > len(pr)-1:
        print()
        exit()
    # print(pr[p])
    op = pr[p]
    if op == '+':
        m[c] = m[c] + 1
        p += 1
    elif op == '-':
        m[c] = m[c] - 1
        p += 1
    elif op == '.':
        if of == "0":
            print(m[c], end='')
        elif of == "1":
            print(chr(m[c]), end='')
        p += 1
    elif op == '>':
        c += 1
        p += 1
    elif op == '<':
        c -= 1
        p += 1
    elif op == '[':
        if m[c] == 0:
            d = 1
            while d > 0:
                p += 1
                if pr[p] == '[':
                    d += 1
                elif pr[p] == ']':
                    d -= 1
        else:
            p += 1
    elif op == ']':
        if m[c] != 0:
            d = 1
            while d > 0:
                p -= 1
                if pr[p] == ']':
                    d += 1
                elif pr[p] == '[':
                    d -= 1
        else:
            p += 1
    elif op == ',':
        print()
        m[c] = int(input('Value: '))
        p += 1
    else:
        p += 1
