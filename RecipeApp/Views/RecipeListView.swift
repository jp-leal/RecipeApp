//
//  ContentView.swift
//  RecipeApp
//
//  Created by Joao Leal on 3/26/24.
//

import SwiftUI

struct RecipeListView: View {
    
   @State private var model = RecipeModel()
    
    var body: some View {
        NavigationStack{
            List(model.recipes) { r in
            
                HStack(spacing: 20){
                    Image(r.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50, alignment: .center)
                        .clipped()
                        .clipShape(.rect(cornerRadius: 5))
                    Text(r.name)
                }
            }
        }
    }
}

#Preview {
    RecipeListView()
}
