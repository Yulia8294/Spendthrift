//
//  ExpenseList.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 5/7/21.
//

import SwiftUI

struct ExpenseList: View {
    
    @Binding var items: [Expense]
    
    var body: some View {
        
            List {
                ForEach(items) { expense in
                    Button("") {}
                        .buttonStyle(ExpenseRowButton(expense: expense))
                }
            }.listStyle(GroupedListStyle())
    }
}

struct ExpenseList_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseList(items: Binding.constant(fakeExpenses))
    }
}
