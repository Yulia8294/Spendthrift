//
//  ContentView.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/16/21.
//

import SwiftUI

struct ContentView: View {
    
    var expenses = fakeExpenses
    
    @State var presentingModal = false

    
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
                                    VStack {

                                    Button("") {}
                                        .buttonStyle(ExpenseRowButton(expense: expense))
                                }
                            }
                        }
                    }
                    .listStyle(GroupedListStyle())
                    .navigationBarTitle("Spendthrifter")
                }
                
                Spacer()
                
                Button("+") {
                    self.presentingModal = true
                }
                .buttonStyle(NeumorphicButton(cornerRadius: 40, height: 60, width: 60))
                .sheet(isPresented: $presentingModal) { NewExpenseView() }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


