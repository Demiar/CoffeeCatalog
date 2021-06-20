//
//  CoffeeType.swift
//  CoffeeCatalog
//
//  Created by Elena Kolesova on 20.06.2021.
//

struct CoffeeType {
    let coffeeName: String
    let shortDescription: String
    var title: String {
        "\(coffeeName)- \(shortDescription)"
    }
}

extension CoffeeType {
    static func getCoffeeList() ->[CoffeeType] {
        [
            CoffeeType(coffeeName: "Americano", shortDescription: "Классический эспрессо с горячей водой"),
            CoffeeType(coffeeName: "Cappuccino", shortDescription: "Эспрессо с добавлением в него подогретого молока"),
            CoffeeType(coffeeName: "Espresso", shortDescription: "Крепкий кофе"),
            CoffeeType(coffeeName: "Frappe", shortDescription: "Покрытый молочной пеной холодный кофейный напиток"),
            CoffeeType(coffeeName: "Glace", shortDescription: "Американо и мороженое"),
            CoffeeType(coffeeName: "Latte", shortDescription: "Кофе с молоком"),
            CoffeeType(coffeeName: "Macchiato", shortDescription: "Латте с добавлением шоколада"),
            CoffeeType(coffeeName: "Chocolate", shortDescription: "Горячий шоколад"),
            CoffeeType(coffeeName: "Cocoa", shortDescription: "Горячее какао"),
            CoffeeType(coffeeName: "Fredo", shortDescription: "Менее крепкий, чем обычный эспрессо"),
            CoffeeType(coffeeName: "Irish", shortDescription: "Кофе по-ирла́ндски"),
            CoffeeType(coffeeName: "Mocha", shortDescription: "Эспрессо со сливками")
        ]
    }
}
