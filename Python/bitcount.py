#! /usr/bin/env python
from sys import argv

def main():
    if len(argv) < 2:
        print("You must enter a number!")
        exit(1)
    try:
        print(bitcount(int(argv[1])))
    except ValueError:
        print("You must enter a number!")
        exit(1)

def bitcount(input):
    count = 0
    for i in range(32):
        if input & 1:
            count += 1
        input = input >> 1
    return count

if __name__ == "__main__":
    main()

