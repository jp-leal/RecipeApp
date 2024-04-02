//
//  ContentView.swift
//  RecipeApp
//
//  Created by Joao Leal on 3/26/24.
//

import SwiftUI

struct RecipeListView: View {
    
    @Environment(RecipeModel.self) private var model
    
    var body: some View {
        
        NavigationStack{
            VStack(alignment: .leading){
                Text("All Recipes")
                    .bold()
                    .padding(.leading)
                    .padding(.top, 40)
                    .font(.largeTitle)
                
                ScrollView{
                    LazyVStack(alignment: .leading){
                        ForEach(model.recipes) { r in
                            
                            NavigationLink(destination: RecipeDetailView(recipe: r), label: {
                                
                                HStack(spacing: 20){
                                    Image(r.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 50, height: 50, alignment: .center)
                                        .clipped()
                                        .clipShape(.rect(cornerRadius: 5))
                                    Text(r.name)
                                        .foregroundStyle(.blue)
                                } })
                        }}
                }
                
            }.padding(.leading)
            
        }
    }
}
#Preview {
    RecipeListView()
        .environment(RecipeModel())
}
