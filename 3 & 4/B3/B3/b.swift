// B

// MARK: - Legend
// Во входной строке записана последовательность чисел через пробел. Для каждого числа выведите слово YES (в отдельной строке), если это число ранее встречалось в последовательности или NO, если не встречалось.

// MARK: - Input
// Вводится список чисел. Все числа списка находятся на одной строке.

// MARK: - Output
// Выведите ответ на задачу.

// MARK: - Comments
// O(m + 2n), m - длина вводимой строки, n - длина последовательности


import Foundation

extension B3 {
    static func b() {
        let arr = readLine()!.split(separator: " ").map() { Int($0)! }
        var s: Set<Int> = []

        for i in arr {
            if s.contains(i) {
                print("YES")
            } else {
                print("NO")
            }
            s.insert(i)
        }
    }
}
