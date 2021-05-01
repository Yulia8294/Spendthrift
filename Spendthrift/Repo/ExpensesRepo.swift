//
//  ExpensesRepo.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 5/1/21.
//

import Combine

class ExpensesRepo: ObservableObject {
    
    @Published var expenses = [Expense]()
    
    func append(_ expense: Expense) {
        expenses.append(expense)
    }
}
