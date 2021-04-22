//
//  ContentView.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/16/21.
//

import SwiftUI

struct MainView: View {
    
    var expenses = fakeExpenses
    
    @State var presentingModal = false
    
    
    var body: some View {
        
        ZStack(alignment: .center) {
            
            Color.white.ignoresSafeArea(.all)
            
            NavigationView {
                
                List {
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
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button(action: { self.presentingModal = true },
                           label: {
                            Text("+")
                                .font(.system(.largeTitle))
                                .foregroundColor(Color.white)
                                .padding(.bottom, 7)
                           })
                        .sheet(isPresented: $presentingModal) { NewExpenseView() }
                        .frame(width: 60, height: 60, alignment: .center)
                        .background(Color.primaryColor)
                        .cornerRadius(30)
                        .padding()
                        .shadow(color: Color.black.opacity(0.3),
                                radius: 3,
                                x: 3,
                                y: 3)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


