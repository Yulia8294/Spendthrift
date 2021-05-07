//
//  CategoryCard.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/22/21.
//

import SwiftUI

struct CategoryCard: View {
    
    @State var category: ExpenseCategory
    var onButtonPress: () -> Void

    
    var body: some View {
        
        Button(action: onButtonPress, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .aspectRatio(0.9, contentMode: .fit)
                    .foregroundColor(.white)
                    .shadow(color: Color.init(white: 0.5, opacity: 0.5), radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
                
                VStack(spacing: 15) {
                    
                    CategoryItem(item: category)
                        .frame(width: 50, height: 50)
                    Text(category.rawValue)
                        .foregroundColor(Color.gray)
                        .font(.headline)
                }
            }
        }).buttonStyle(PressDownButton())
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard(category: .foods, onButtonPress: {})
    }
}
