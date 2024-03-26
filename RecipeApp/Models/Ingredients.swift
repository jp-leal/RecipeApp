//
//  Ingredients.swift
//  RecipeApp
//
//  Created by Joao Leal on 3/26/24.
//

import Foundation

class Ingredients: Identifiable, Decodable {
    var id: UUID?
    var name: String
    var num: Int?
    var denom: Int?
    var unit: String?
}
