//
//  ExpensesViewModel.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 5/1/21.
//

import Foundation
import Resolver
import Combine

class ExpensesViewModel: ObservableObject {
    
    @Published var repo: ExpensesRepo = Resolver.resolve()
    @Published var items: [Expense] = []
    
    private var cancellables = Set<AnyCancellable>()
     
    init() {
        repo.$expenses
            .assign(to: \.items, on: self)
            .store(in: &cancellables)
    }
    
    
}
