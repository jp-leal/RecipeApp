//
//  RecipeTabView.swift
//  RecipeApp
//
//  Created by Joao Leal on 3/26/24.
//

import SwiftUI

struct RecipeTabView: View {
    
    @Environment(RecipeModel.self) private var model
    
    var body: some View {
        TabView{
            RecipeFeaturedView()
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }}
    }
}

#Preview {
    RecipeTabView()
        .environment(RecipeModel())
}
