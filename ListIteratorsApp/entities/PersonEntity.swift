import SwiftUI
//
//  PersonEntity.swift
//  ListIteratorsApp
//
//  Created by Johnny Freire on 12/11/25.
//

class PersonEntity: Identifiable {
    let id = UUID()
    var name: String
    var favoriteColor: Color
    let colorName: String
    
    init(name: String, favoriteColor: Color) {
        self.name = name
        self.favoriteColor = favoriteColor
        self.colorName = favoriteColor.description.capitalized
    }
}
