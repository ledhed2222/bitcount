#! /usr/bin/env python
from sys import argv

_BITS = 64


def main():
    if len(argv) < 2:
        print("You must enter a number!")
        exit(1)

    parsed = _parse(argv[1])
    if parsed is None:
        print("You must enter a number!")
        exit(1)

    print(_bitcount(int(argv[1])))


def _parse(input):
    try:
        return int(input)
    except ValueError:
        return None


def _bitcount(input):
    count = 0
    for _ in range(_BITS):
        if input & 1:
            count += 1
        input = input >> 1
    return count


if __name__ == "__main__":
    main()
