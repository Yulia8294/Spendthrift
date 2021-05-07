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
                .frame(maxHeight: 70)
                .foregroundColor(.white)
                .shadow(color: Color.init(white: 0.5, opacity: 0.5), radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
            
            HStack(spacing: 15) {
                CategoryItem(item: expense.category)
                    .frame(width: 35, height: 35)
                Text(expense.category.rawValue)
                    .foregroundColor(Color.gray)
                    .font(.headline)
                
                Spacer()

                Text("\(expense.ammount.truncate()) $")
                    .foregroundColor(Color.gray)
                    .font(.headline)
                
            }.padding()
        }
    }
}

struct ExpenseRowButton: ButtonStyle {
    
    var expense: Expense
    
    func makeBody(configuration: Configuration) -> some View {
        ExpenseRow(expense: expense)
            .scaleEffect(configuration.isPressed ? 0.96 : 1)
            .animation(.spring(response: 0.4, dampingFraction: 0.5, blendDuration: 0.5))
    }
}

struct ExpenseRow_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseRow(expense: fakeExpenses.first!)
    }
}


struct ExpenseRowButton_Previews: PreviewProvider {
    static var previews: some View {
        Button("") {
            
        }.buttonStyle(ExpenseRowButton(expense: fakeExpenses.first!))
            
       // ExpenseRow(expense: fakeExpenses.first!)
    }
}

struct PressDownButton: ButtonStyle {
        
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.96 : 1)
            .animation(.spring(response: 0.4, dampingFraction: 0.5, blendDuration: 0.5))
    }
}



