// D

// MARK: - Legend
// Август и Беатриса играют в игру. Август загадал натуральное число от 1 до n. Беатриса пытается угадать это число, для этого она называет некоторые множества натуральных чисел. Август отвечает Беатрисе YES, если среди названных ей чисел есть задуманное или NO в противном случае. После нескольких заданных вопросов Беатриса запуталась в том, какие вопросы она задавала и какие ответы получила и просит вас помочь ей определить, какие числа мог задумать Август.

// MARK: - Input
// Первая строка входных данных содержит число n — наибольшее число, которое мог загадать Август. Далее идут строки, содержащие вопросы Беатрисы. Каждая строка представляет собой набор чисел, разделенных пробелами. После каждой строки с вопросом идет ответ Августа: YES или NO. Наконец, последняя строка входных данных содержит одно слово HELP.

// MARK: - Output
// Вы должны вывести (через пробел, в порядке возрастания) все числа, которые мог задумать Август.

// MARK: - Comments
// Решение сначала не проходило по времени, потому что я использовала методы множеств, которые не изменяют сам объект, а создают новый, но к счастью в swift есть formIntersection и subtract


import Foundation

extension B3 {
    static func d() {
        let n = Int(readLine()!)!
        var possible = Set(1...n)
        var s = readLine()!

        while s != "HELP" {
            let nums = Set(s.split(separator: " ").map() { Int($0)! })
            s = readLine()!
            if s == "YES" {
                 possible.formIntersection(nums)
            } else {
                 possible.subtract(nums)
            }
            s = readLine()!
        }

        for i in possible.sorted() {
            print(i, terminator: " ")
        }
        print()
    }
        
// //        MyVersion (didn't work, could make it easier)
//        let n = Int(readLine()!)!
//        var fl = true
//        var ye: [Int] = []
//        var no: [Int] = []
//        while fl {
//            let ask = readLine()!
//            if ask != "HELP" {
//                let ans = readLine()!
//                if ans == "YES" {
//                    ye.append(contentsOf: ask.split(separator: " ").map() { Int($0)! })
//                } else {
//                    no.append(contentsOf: ask.split(separator: " ").map() { Int($0)! })
//                }
//            } else {
//                fl = false
//            }
//        }
//
//        var ans: Set<Int> = []
//        if ye.isEmpty {
//            ans = Set(0...n).subtracting(no)
//        } else {
//            ans = Set(ye).subtracting(no)
//        }
//        for i in ans.sorted() {
//            print(i, terminator: " ")
//        }
//        print()
}
