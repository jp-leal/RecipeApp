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
      Text("dsa")
    }
}

#Preview {
    RecipeFeaturedView()
        .environment(RecipeModel())
}
