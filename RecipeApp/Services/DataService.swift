//
//  DataService.swift
//  RecipeApp
//
//  Created by Joao Leal on 3/26/24.
//

import Foundation

class DataService {
    func getLocalDate() -> [Recipe] {
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else {
            return [Recipe]()
        }
        let url = URL(filePath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                for r in recipeData{
                    r.id = UUID()
                }
                return recipeData
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
        return[Recipe]()
    }
}
