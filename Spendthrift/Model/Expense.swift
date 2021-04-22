//
//  Expense.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/16/21.
//

import Foundation

struct Expense: Identifiable {
    
    var id: String {
        UUID().uuidString
    }
    
    var ammount: Int
    var category: ExpenseCategory
    var note: String?
    var date: Date
    
}

var fakeExpenses: [Expense] {
    [
        Expense(ammount: 670, category: .entertainment, note: nil, date: Date()),
        Expense(ammount: 40, category: .foods, note: nil, date: Date()),
        Expense(ammount: 6150, category: .health, note: nil, date: Date()),
        Expense(ammount: 150, category: .misc, note: nil, date: Date()),
        Expense(ammount: 4, category: .transport, note: nil, date: Date())
    ]
}
