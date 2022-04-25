// A

// MARK: - Legend
// Даны два списка чисел, которые могут содержать до 100000 чисел каждый. Посчитайте, сколько чисел содержится одновременно как в первом списке, так и во втором. Примечание. Эту задачу на Питоне можно решить в одну строчку.

// MARK: - Input
// Вводятся два списка чисел. Все числа каждого списка находятся на отдельной строке.

// MARK: - Output
// Выведите ответ на задачу.


import Foundation

class B3 {
    static func a() {
        let firstSet = Set(readLine()!.split(separator: " "))
        let secondSet = Set(readLine()!.split(separator: " "))

        print(firstSet.intersection(secondSet).count)
    }
}
