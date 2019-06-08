//
//  DataService.swift
//  CarouselEffect
//
//  Created by Apple on 6/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    let products = [Product(imageName: "food1.jpg"),Product(imageName: "food2.jpg"),Product(imageName: "food3.jpg")]
    public func getProduct() -> [Product]{
        
        return products
    }
}
