// D

// MARK: - Legend
// В атриуме нового корпуса ФНК урбанисты установили модные гранитные лавочки (на которых холодно сидеть зимой и жарко летом). Лавочка устроена следующим образом: несколько одинаковых кубических гранитных блоков ставятся в ряд, а на них кладется гранитная плита.

// При этом блоки располагаются так, чтобы плита не падала: для этого достаточно, чтобы и слева, и справа от центра плиты был хотя бы один гранитный блок или его часть (в частности, если центр плиты приходится на середину какого-нибудь блока, то и слева, и справа от центра плиты находится часть блока, и плита не падает).

// На ФНК много певокурсников (но это только пока не произошли отчисления за списывания на курсе ОиМП) и им не хватает стульев в аудиториях. Студенты обнаружили, что блоки можно использовать в аудитории в качестве сиденья. Можно по одному вытаскивать блоки, находящиеся с краю (как слева, так и справа). Они хотят вытащить из-под лавочки как можно больше блоков так, чтобы она при этом не упала (передвигать оставшиеся блоки нельзя). Определите, какие блоки они должны оставить.

// MARK: - Input
// В первой строке входных данных содержатся два числа: L — длина лавочки и K — количество гранитных блоков-ножек. Оба числа натуральные и не превышают 10 000.

// Во второй строке следуют K различных целых неотрицательных чисел, задающих положение каждой ножки. Положение ножки определяется расстоянием от левого края плиты до левого края ножки (ножка — это куб размером 1×1×1). Ножки перечислены слева направо (то есть начиная с ножки с меньшим расстоянием до левого края).

// MARK: - Output
// Требуется перечислить ножки, которые студентам нужно оставить. Для каждой ножки нужно выдать ее положение, как оно задано во входных данных. Ножки следует перечислять слева направо, в том порядке, в котором они встречаются во входных данных.

// MARK: - Comments
// У тебя тут сложность квадратичная, гений
// Из-за проверки на вхождение

import Foundation

struct d2 {
    static func runD() {
        let s = readLine()!.split(separator: " ").map() { Int($0)! }
        let (len, _) = (s[0], s[1])
        let legs = readLine()!.split(separator: " ").map() { Int($0)! }

        if len % 2 == 1 && legs.contains(len / 2) {
            print(len / 2)
        } else {
            for i in (0..<len / 2).reversed() {
                if legs.contains(i) {
                    let ind = legs.firstIndex(of: i)!
                    print(legs[ind], legs[ind + 1])
                    break
                }
            }
        }
    }
}
