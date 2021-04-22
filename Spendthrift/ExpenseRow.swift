//
//  ExpenseRow.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/16/21.
//

import SwiftUI

struct ExpenseRow: View {
    
    var expense: Expense
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 15)
                .frame(height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .shadow(color: Color.init(white: 0.5, opacity: 0.5), radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
            
            HStack(spacing: 15) {
                CategoryItem(item: expense.category)
                
                Text(expense.category.rawValue)
                    .foregroundColor(Color.gray)
                    .font(.headline)
                
                Spacer()

                Text("\(expense.ammount) $")
                    .foregroundColor(Color.gray)
                    .font(.headline)
                
            }.padding()
        }
        .padding(5)
    }
}

struct ExpenseRow_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseRow(expense: fakeExpenses.first!)
    }
}


