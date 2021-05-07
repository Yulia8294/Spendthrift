//
//  ContentView.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/16/21.
//

import SwiftUI

struct ExpensesView: View {
    
    @State var presentingModal = false
    
    @ObservedObject var viewModel = ExpensesViewModel()
    
    @ViewBuilder
    var contentView: some View {
        if viewModel.items.isEmpty {
            Placeholder()
        } else {
            ExpenseList(items: $viewModel.items)
        }
    }
    
    
    var body: some View {
        NavigationView {
            
            ZStack(alignment: .center) {
                
                Color.white.edgesIgnoringSafeArea(.all)
                
                ExpenseList(items: $viewModel.items)

                NewExpenseButton { viewModel.startedAddingNewExpense() }
                    .sheet(isPresented: $viewModel.addingNewExpense) {
                        NewExpenseView(viewModel: viewModel)
                    }
            }.navigationBarTitle("Spendthrifter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesView()
    }
}


