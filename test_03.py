import math


def calculateStandardDeviation(l: list[int]) -> float:
    mean = sum(l) / len(l)
    deviations = []
    for val in l:
        deviations.append((val - mean) ** 2)
    sum_deivations = sum(deviations)
    variance = sum_deivations / len(l)
    standard_deviation = math.sqrt(variance)

    return standard_deviation


def main() -> None:
    print("{:0.2f}".format(calculateStandardDeviation([1, 2, 3, 4, 5])))


if __name__ == '__main__':
    main()

# calculateStandardDeviation([1, 2, 3, 4, 5]) => 1.41
