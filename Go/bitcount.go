package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	if len(os.Args) < 2 {
		fmt.Println("You must supply a value!")
		os.Exit(1)
	}

	arg, err := strconv.ParseInt(os.Args[1], 10, 64)
	if err != nil {
		fmt.Printf("Invalid value %v\n", os.Args[1])
		os.Exit(1)
	}

	fmt.Printf("%v\n", bitCount(int(arg)))
}

func bitCount(value int) (result int) {
	for i := 0; i < 32; i++ {
		if (value & 1) == 1 {
			result++
		}
		value = value >> 1
	}
	return
}
