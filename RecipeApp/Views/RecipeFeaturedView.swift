//
//  RecipeFeaturedView.swift
//  RecipeApp
//
//  Created by Joao Leal on 3/26/24.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @Environment(RecipeModel.self) private var model
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Featured Recipes")
                .bold()
                .padding(.leading)
                .font(.largeTitle)
            GeometryReader { geo in
                TabView{
                    ForEach(0..<model.recipes.count, id: \.self) { index in
                        if model.recipes[index].featured {
                            
                            ZStack{
                                
                                Rectangle()
                                    .foregroundStyle(.white)
                                VStack(spacing: 0){
                                    Image(.bakedPotato)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                    Text("Baked Potato")
                                        .padding(5)
                                }
                                
                            }
                            .frame(width: geo.size.width - 40, height:  geo.size.height - 100, alignment: .center)
                            .clipShape(.rect(cornerRadius: 15))
                            .shadow(radius: 10)
                            
                        }
                    }
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            }
        
            VStack(alignment: .leading, spacing: 10){
                
                Text("Prep")
                    .font(.headline)
                Text("1 hours")
                Text("Highlights")
                    .font(.headline)
                Text("Healthy")
            }
            .padding(.leading)
        }
    }}

#Preview {
    RecipeFeaturedView()
        .environment(RecipeModel())
}
