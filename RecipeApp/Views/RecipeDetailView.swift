//
//  RecipeDetailView.swift
//  RecipeApp
//
//  Created by Joao Leal on 3/26/24.
//

import SwiftUI

struct RecipeDetailView: View {

@State var selectedServingSize = 2
    var recipe: Recipe
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading) {
                    
                    Image(recipe.image)
                        .resizable()
                        .scaledToFill()
                    VStack(alignment: .leading){
                        Text("Select your serving size:")
                        Picker("", selection: $selectedServingSize) {
                            Text("2").tag(2)
                            Text("4").tag(4)
                            Text("6").tag(6)
                            Text("8").tag(8)
                        }.pickerStyle(.segmented)
                            .frame(width: 160)
                    }.padding()
                    VStack(alignment: .leading){
                        Text("Ingredients")
                            .font(.headline)
                            .padding([.bottom, .top], 5)
                        ForEach(recipe.ingredients) { item in
                            Text("- " + item.name)
                        }
                        
                    }
                    .padding(.horizontal)
                    Divider()
                    VStack(alignment: .leading) {
                        Text("Directions")
                            .font(.headline)
                            .padding([.bottom, .top], 5)
                        ForEach(0..<recipe.directions.count, id: \.self) { index in
                            Text(String(index) + ". " + recipe.directions[index])
                                .padding()
                        }
                    }
                    .padding(.horizontal)
                }.navigationTitle(recipe.name)
            }
        }
    }
}
