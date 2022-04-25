// C

// MARK: - Legend
// Дан список. Выведите те его элементы, которые встречаются в списке только один раз. Элементы нужно выводить в том порядке, в котором они встречаются в списке.

// MARK: - Input
// Вводится список чисел. Все числа списка находятся на одной строке.

// MARK: - Output
// Выведите ответ на задачу.


import Foundation

extension B3 {
    static func c() {
        let arr = readLine()!.split(separator: " ")
        var s: Set<Substring> = []
        var out: Set<Substring> = []

        for i in arr {
            if s.contains(i) {
                out.insert(i)
            }
            s.insert(i)
        }

        for i in arr {
            if !out.contains(i) {
                print(i, terminator: " ")
            }
        }
        print()
    }
}
