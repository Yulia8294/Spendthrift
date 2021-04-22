//
//  ContentView.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/16/21.
//

import SwiftUI

struct ContentView: View {
    
    var expenses = fakeExpenses
    
    init() {
        UITableView.appearance().backgroundColor = UIColor(Color.white)

    }
    
    var body: some View {
        
        
        ZStack {
            
            Color.white.ignoresSafeArea(.all)
            
            VStack {
                
                NavigationView {
                    
                    List {
                        Section {
                            Text("Congrats! Today you've spent 5604$")
                        }
                        
                        Section {
                            ForEach(expenses) { expense in
                                ExpenseRow(expense: expense)
                            }
                        }
                    }
                    .listStyle(GroupedListStyle())
                    .navigationBarTitle("Spendthrifter")
                }
                
                Spacer()
                
                Button("+") {}
                    .buttonStyle(NeumorphicButton(cornerRadius: 40, height: 60, width: 60))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


