//
//  Landmark.swift
//  Landmark
//
//  Created by Shriram Kadam on 11/09/24.
//

import Foundation

struct Landmark: Decodable, Identifiable {
    
    var id: Int
    var name: String
    var imageName: String
    var category: String
    var city: String
    var state: String
    var isFeatured: Bool
    var isFavorite: Bool
    var park: String
    
}
