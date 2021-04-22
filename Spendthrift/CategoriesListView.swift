//
//  CategoriesListView.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/22/21.
//

import SwiftUI

struct CategoriesListView: View {
    
    @State var categories = ExpenseCategory.allCases
    
    let columns = [
        GridItem(.flexible(minimum: 60), spacing: 20),
        GridItem(.flexible(minimum: 60), spacing: 20)
    ]

    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(categories, id: \.self) { cat in
                    CategoryCard(category: cat)
                }
            }
            .padding()
        }
    }
}

struct CategoriesListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesListView()
    }
}


