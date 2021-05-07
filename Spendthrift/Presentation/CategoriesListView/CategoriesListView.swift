//
//  CategoriesListView.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/22/21.
//

import SwiftUI

struct CategoriesListView: View {
    
    @Environment(\.presentationMode) var presentation
    
    @State var categories = ExpenseCategory.allCases
    @Binding var pickedCategory: ExpenseCategory
    
//    let columns = [
//        GridItem(.flexible(minimum: 60), spacing: 20),
//        GridItem(.flexible(minimum: 60), spacing: 20)
//    ]

    
    var body: some View {
        ScrollView() {
//            LazyVGrid(columns: columns, spacing: 20) {
//                ForEach(categories, id: \.self) { cat in
//                    CategoryCard(category: cat, onButtonPress: {
//                        pickedCategory = cat
//                        presentation.wrappedValue.dismiss()
//                    }).tag(cat as ExpenseCategory)
//                }
//            }
//            .padding()
        }
    }
}

struct CategoriesListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesListView(pickedCategory: Binding.constant(.foods))
    }
}


