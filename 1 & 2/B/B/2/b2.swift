// B

// MARK: - Legend
// На Новом проспекте построили подряд 10 зданий. Каждое здание может быть либо жилым домом, либо магазином, либо офисным зданием.

// Но оказалось, что жителям некоторых домов на Новом проспекте слишком далеко приходится идти до ближайшего магазина. Для разработки плана развития общественного транспорта на Новом проспекте мэр города попросил вас выяснить, какое же наибольшее расстояние приходится преодолевать жителям Нового проспекта, чтобы дойти от своего дома до ближайшего магазина.

// MARK: - Input
// Программа получает на вход десять чисел, разделенных пробелами. Каждое число задает тип здания на Новом проспекте: число 1 обозначает жилой дом, число 2 обозначает магазин, число 0 обозначает офисное здание. Гарантируется, что на Новом проспекте есть хотя бы один жилой дом и хотя бы один магазин.

// MARK: - Output
// Выведите одно целое число: наибольшее расстояние от дома до ближайшего к нему магазина. Расстояние между двумя соседними домами считается равным 1 (то есть если два дома стоят рядом, то между ними расстояние 1, если между двумя домами есть еще один дом, то расстояние между ними равно 2 и т.д.)

// MARK: - Comments!
// Метод двойного прохода! Не так хорош, как одинарный, но сложность все еще линейная

import Foundation

struct b2 {
    static func runB() {
        let arr = readLine()!.split(separator: " ").map() { Int($0)! }
        var homes = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        var shop = -100

        for i in 0...9 {
            if arr[i] == 2 {
                shop = i
            }
            if arr[i] == 1 {
                homes[i] = i - shop
            }
        }

        shop = 100
        for i in (0...9).reversed() {
            if arr[i] == 2 {
                shop = i
            }
            if arr[i] == 1 {
                if shop - i < homes[i] {
                    homes[i] = shop - i
                }
            }
        }
        print(homes.max()!)
    }
}
