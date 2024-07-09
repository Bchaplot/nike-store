//
//  Card.swift
//  ShoeStore
//
//  Created by FCP27 on 05/07/24.
//

import UIKit

class Cart {
    static let shared = Cart()
    
    private var items: [CartItem] = []
    
    func addItem(name: String, price: String) {
        let newItem = CartItem(name: name, price: price)
        items.append(newItem)
    }
    
    func getCartItems() -> [CartItem] {
        return items
    }
}

struct CartItem {
    let name: String
    let price: String
}

