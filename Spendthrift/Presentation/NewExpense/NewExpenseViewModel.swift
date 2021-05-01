//
//  NewExpenseViewModel.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/22/21.
//

import Combine
import Foundation
import Resolver


class NewExpenseViewModel: ObservableObject {
    
    @Published var repo: ExpensesRepo = Resolver.resolve()
    
    @Published var mode: Bool = false
    @Published var amount: Double? = 0
    @Published var category: ExpenseCategory = .foods
    @Published var date: Date = Date()
    @Published var note: String = ""
    
    @Published var isValid: Bool = false
    @Published var passwordMessage = ""
    
    private var cancellableSet: Set<AnyCancellable> = []
    
    init() {
        isAmountValid
            .receive(on: RunLoop.main)
            .assign(to: \.isValid, on: self)
            .store(in: &cancellableSet)
    }
    
    private var isAmountValid: AnyPublisher<Bool, Never> {
        $amount
            .removeDuplicates()
            .map { input in
                return self.amount.anyValue > 0
            }
            .eraseToAnyPublisher()
    }
    
    
    
    
    func saveNewExpense() {
        let expense = Expense(ammount: amount.anyValue, category: category, note: note, date: date)
        repo.append(expense)
    }
    
    
}

extension Optional where Wrapped == Double {
    
    var anyValue: Double {
        switch self {
        case .none: return 0
        case let .some(double): return double
        }
    }
}
