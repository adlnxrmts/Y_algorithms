// E

// MARK: - Legend
// Неизвестный водитель совершил ДТП и скрылся с места происшествия. Полиция опрашивает свидетелей. Каждый из них говорит, что запомнил какие-то буквы и цифры номера. Но при этом свидетели не помнят порядок этих цифр и букв. Полиция хочет проверить несколько подозреваемых автомобилей. Будем говорить, что номер согласуется с показанием свидетеля, если все символы, которые назвал свидетель, присутствуют в этом номере (не важно, сколько раз).

// MARK: - Input
// Сначала задано число M <= 100 - количество свидетелей. Далее идет M строк, каждая из которых описывает показания очередного свидетеля. Эти строки непустые и состоят из не более чем 20 символов. Каждый символ в строке - либо цифра, либо заглавная латинская буква, причём символы могут повторяться.
// Затем идёт число N <= 1000 - количество номеров. Следующие строки представляют из себя номера подозреваемых машин и имеют такой же формат, как и показания свидетелей.

// MARK: - Output
// Выпишите номера автомобилей, согласующиеся с максимальным количеством свидетелей. Если таких номеров несколько, то выведите их в том же порядке, в котором они были заданы на входе.


import Foundation

extension B3 {
    static func e() {
        let cw = Int(readLine()!)!
        var witnesses: [Set<String.Element>] = []

        for _ in 1...cw {
            let witness = Set(readLine()!)
            witnesses.append(witness)
        }

        let cs = Int(readLine()!)!
        var max = 0
        var maxArr: [String] = []

        for _ in 1...cs {
            let suspect = readLine()!
            let susSet = Set(suspect)
            var cur = 0
            for j in 0..<cw {
                if susSet.intersection(witnesses[j]).count == witnesses[j].count {
                    cur += 1
                }
            }
            if cur > max {
                max = cur
                maxArr = [suspect]
            } else if cur == max {
                maxArr.append(suspect)
            }
        }

        maxArr.forEach() {print($0)}
    }
}
