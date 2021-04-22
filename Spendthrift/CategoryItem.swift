//
//  CategoryItem.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/22/21.
//

import SwiftUI

struct CategoryItem: View {
    
    @State var item: ExpenseCategory
    @State var color: Color = .primaryColor
    
    var body: some View {
        ZStack {

            Image(uiImage: item.icon)
                .renderingMode(.template)
                .foregroundColor(color)
                .padding(10)
                .background(color.opacity(0.15))
                .clipShape(Circle())
            
        }
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(item: .entertainment)
    }
}
