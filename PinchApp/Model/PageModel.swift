//
//  PageModel.swift
//  PinchApp
//
//  Created by Usha Sai Chintha on 18/09/22.
//

import Foundation

// Identifiable protocol defines blueprint of methods, properties and other requirements that suit a particular task or piece of functionality
// This protocol must for sure have a property named id so that it can uniquely dentify the page objects
struct Page: Identifiable{
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
    
}
