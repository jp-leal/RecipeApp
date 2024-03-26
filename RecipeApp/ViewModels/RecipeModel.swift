//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by Joao Leal on 3/26/24.
//

import Foundation
import Observation

@Observable
class RecipeModel {
    var recipes = [Recipe]()
    
    init() {
        self.recipes = DataService().getLocalDate()
    }
}
