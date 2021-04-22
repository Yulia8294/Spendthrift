//
//  NewExpenseViewModel.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/22/21.
//

import Combine
import Foundation

class NewExpenseViewModel: ObservableObject {
    
    @Published var mode: Bool = false
    @Published var amount: Double? = 0
    @Published var category: ExpenseCategory = .foods
    @Published var date: Date = Date()
    @Published var note: String = ""
    
    @Published var isValid: Bool = false
    
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
                guard let ammount = input else { return false }
                return ammount > 0
            }
            .eraseToAnyPublisher()
    }
    
    
    
    
    func saveNewExpense() {
        
    }
    
    
}
