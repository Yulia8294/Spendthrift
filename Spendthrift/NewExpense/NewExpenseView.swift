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
    
    @State var mode: Bool = false
    @State var amount: Double? = 0
    @State var category: ExpenseCategory = .foods
    @State var date: Date = Date()
    @State var note: String = ""
    
    init() {
        UITableView.appearance().backgroundColor = .clear
        
    }
    
    
    var body: some View {
        
        ZStack {
            
            Color(#colorLiteral(red: 0.5401282907, green: 0.5695267916, blue: 0.6574694514, alpha: 0.16563173)).edgesIgnoringSafeArea(.all)
            
            Form {
                
                Section {
                    Picker(selection: $mode, label: Text("")) {
                        Text("Expense").tag(false)
                        Text("Income").tag(true)
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                
                HStack {
                    Spacer()
                    CurrencyTextField("Enter $", value: $amount, currencySymbol: "$", font: UIFont.systemFont(ofSize: 25), foregroundColor: .background, accentColor: .background, textAlignment: .center, keyboardType: UIKeyboardType.decimalPad, returnKeyType: .done, isSecure: false, isUserInteractionEnabled: true, clearsOnBeginEditing: false)
                        .font(.title)
                        .frame(height: 100)
                    Spacer()
                }
                
                Section(header: Text("Settings")) {
                    
                    Picker("Category", selection: $category) {
                        ContentView()
                    }
                    
                    DatePicker("Date", selection: $date, displayedComponents: .date)
                        .accentColor(.background)
                    
                    TextField("Notes", text: $note)
                        .font(.body)
                        .foregroundColor(.dark)
                    
                }
                
                Button("Save") {
                    
                }
                
            }
            .accentColor(.background)
        }
    }
    
}

struct NewExpenseView_Previews: PreviewProvider {
    static var previews: some View {
        NewExpenseView()
    }
}

extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
            
