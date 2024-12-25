package test

import "core:fmt"
import "core:math"
printf :: fmt.printf

main :: proc() {
	printf("%.2f \n", calculateStandardDeviation([]int{1, 2, 3, 4, 5}))
}


calculateStandardDeviation :: proc(l: []int) -> f32 {
	mean := sum_iterable(l[:]) / len(l)

	deviations := make([dynamic]f32)
	defer delete(deviations)

	for val in l {
		append(&deviations, f32(val - mean) * f32(val - mean))
	}

	sum_deviations := sum_iterable(deviations[:])
	variance := sum_deviations / f32(len(l))
	standard_deviation := math.sqrt(variance)

	return standard_deviation
}
