// A

// MARK: - Legend
// Последовательность состоит из натуральных чисел и завершается числом 0. Всего вводится не более 10000 чисел (не считая завершающего числа 0). Определите, сколько элементов этой последовательности равны ее наибольшему элементу.

// Числа, следующие за числом 0, считывать не нужно.

// MARK: - Input
// Вводится последовательность целых чисел, оканчивающаяся числом 0 (само число 0 в последовательность не входит).

// MARK: - Output
// Выведите ответ на задачу.

import Foundation

struct a2 {
    static func runA() {
        var cur = Int(readLine()!)!
        var max = cur
        var count = 0
        
        while cur != 0 {
            if cur == max {
                count += 1
            }
            if cur > max {
                max = cur
                count = 1
            }
            cur = Int(readLine()!)!
        }
        print(count)
    }
}


