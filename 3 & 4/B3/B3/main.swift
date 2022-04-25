//
//  main.swift
//  B3
//
//  Created by Adelina on 20.04.2022.
//

import Foundation

while true {
    print(">", terminator: " ")
    let imput = readLine()!
    switch imput {
    case "a":
        print("> Running A...")
        B3.a()
    case "b":
        print("> Running B...")
        B3.b()
    case "c":
        print("> Running C...")
        B3.c()
    case "d":
        print("> Running D...")
        B3.d()
    case "e":
        print("> Running E...")
        B3.e()
    default:
        print("\n> There is no such command...")
    }
}
