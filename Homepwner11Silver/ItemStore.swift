//
//  ItemStore.swift
//  Homepwner11Silver
//
//  Created by Kelsey Yim on 5/19/19.
//  Copyright © 2019 Kelsey Yim. All rights reserved.
//

import UIKit
class ItemStore {
    
    var allItems: [Item] = []
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
//    var greaterItems: [Item] {
//        return allItems.filter{ $0.valueInDollars > 50 }
//    }
//
//    var lesserItems: [Item] {
//        return allItems.filter{ $0.valueInDollars <= 50 }
//    }
    
    func moveItem(from fromIndex: Int, to toIndex: Int) {
        if fromIndex == toIndex {       //This was commented out last time, probably why everything broke
            return
        }
        
        // Get reference to object being moved so you can re-insert it
        let movedItem = allItems[fromIndex]
        
        // Remove item from array
        allItems.remove(at: fromIndex)
        
        // Insert item in array at new location
        allItems.insert(movedItem, at: toIndex)
    }
    
    
    func removeItem(_ item: Item) {
        if let index = allItems.index(of: item) {
            print(index)
            allItems.remove(at: index)
        }
    }
    
    init() {
        for _ in 0..<10 {
            createItem()
        }
    }
    //
}
