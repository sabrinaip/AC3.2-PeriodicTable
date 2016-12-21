//
//  Element+JSON.swift
//  PeriodicCollectionView
//
//  Created by Sabrina Ip on 12/21/16.
//  Copyright © 2016 Sabrina. All rights reserved.
//

import Foundation

extension Element {
    func populate(from elementDict: [String:Any]) {
        
        guard let number = elementDict["number"] as? Int ,
            let weight = elementDict["weight"] as? Double,
            let name = elementDict["name"] as? String,
            let symbol = elementDict["symbol"] as? String,
            let group = elementDict["group"] as? Int else { return }
        
        self.group = Int16(group)
        self.name = name
        self.number = Int16(number)
        self.weight = weight
        self.symbol = symbol
    }
}
