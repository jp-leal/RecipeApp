//
//  RecipeTabView.swift
//  RecipeApp
//
//  Created by Joao Leal on 3/26/24.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView{
            Text("teste")
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
}
