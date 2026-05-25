package main

import (
	"fmt"
	"sort"
)

func main() {

	N := []int{4, 2, 40, 16, 70, 27, 30, 12, 40, 18}
	R := sort.Reverse(sort.IntSlice(N))
	fmt.Println(R)
	fmt.Println(N)
	sum := sumOfArray(N)
	fmt.Println("sum:", sum)
	maxmin := FindMaxMin(N)
	fmt.Println("maxmin:", maxmin[0])
	fmt.Println("maxmin:", maxmin[1])
	evenodd := EvenOdd(N)
	fmt.Println("even Count:", evenodd[0])
	fmt.Println("odd Count:", evenodd[1])

}

func sumOfArray(a []int) int16 {

	var sum int16 = 0
	for i := 0; i < len(a); i++ {
		sum += int16(a[i])
	}

	return sum
}

func FindMaxMin(a []int) [2]int {
	maxmin := [2]int{1: a[1]}

	for i := 0; i < len(a); i++ {
		for j := i + 1; j < len(a); j++ {
			if maxmin[0] < a[j] {
				maxmin[0] = a[i]
			} else if maxmin[1] > a[j] {
				maxmin[1] = a[i]
			}
		}
		if maxmin[1] > a[i] {
			maxmin[1] = a[i]
		}

	}
	return maxmin
}

func EvenOdd(a []int) [2]int {
	evenodd := [2]int{}
	for i := 0; i < len(a); i++ {
		if a[i]%2 == 0 {
			evenodd[0] += 1
		} else {
			evenodd[1] += 1
		}

	}

	return evenodd

}
