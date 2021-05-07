//
//  NewExpenseView.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/22/21.
//

import SwiftUI
import IQKeyboardManager
import UIKit

struct NewExpenseView: View {
    
    @ObservedObject var viewModel: NewExpenseViewModel
    
    init(viewModel: ExpensesViewModel) {
        self.viewModel = NewExpenseViewModel(viewModel)
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color(#colorLiteral(red: 0.5401282907, green: 0.5695267916, blue: 0.6574694514, alpha: 0.16563173)).edgesIgnoringSafeArea(.all)
                
                //  NavigationView {
                Form {
                    Section {
                        Picker(selection: $viewModel.mode, label: Text("")) {
                            Text("Expense").tag(false)
                            Text("Income").tag(true)
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                    
                    
                    HStack {
                        Spacer()
                        CurrencyTextField("Enter $", value: $viewModel.amount, currencySymbol: "$", font: UIFont.systemFont(ofSize: 25), foregroundColor: .background, accentColor: .background, textAlignment: .center, keyboardType: UIKeyboardType.decimalPad, returnKeyType: .done, isSecure: false, isUserInteractionEnabled: true, clearsOnBeginEditing: false)
                            .font(.title)
                            .frame(height: 100)
                        Spacer()
                    }
                    
                    Section(header: Text("Settings")) {
                        
                        
                        ZStack {
                            NavigationLink(destination: CategoriesListView(pickedCategory: $viewModel.category)) {
                                EmptyView()
                            }.hidden()
                            
                            HStack {
                                Text("Category")
                                Spacer()
                                Text(viewModel.category.rawValue)
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 7)
                                    .foregroundColor(.background)
                            }
                        }
                        
                        
                        DatePicker("Date", selection: $viewModel.date, displayedComponents: .date)
                            .accentColor(.background)
                        
                        TextField("Notes", text: $viewModel.note)
                            .font(.body)
                            .foregroundColor(.dark)
                        
                    }
                    
                    Section(header: Text("")) {
                        Button("Save") { self.viewModel.saveNewExpense()}
                            .disabled(!viewModel.isValid)
                    }
                }
                .accentColor(.background)
                
            }.navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
        }
    }
    
}

struct NewExpenseView_Previews: PreviewProvider {    
    static var previews: some View {
        NewExpenseView(viewModel: ExpensesViewModel())
    }
}

extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}

