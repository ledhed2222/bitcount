package main

import (
	"fmt"
	"os"
	"strconv"
)

func bitCount(value int) (result int) {
	for i := 0; i < 32; i++ {
		if (value & 1) == 1 {
			result++
		}
		value = value >> 1
	}
	return
}

func main() {
	if len(os.Args) < 2 {
		fmt.Println("You must supply a value!")
		return
	}
	arg, err := strconv.ParseInt(os.Args[1], 10, 64)
	if err != nil {
		fmt.Printf("Invalid value %v\n", os.Args[1])
	} else {
		fmt.Printf("%v\n", bitCount(int(arg)))
	}
}
