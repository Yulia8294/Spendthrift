//
//  NewExpenseButton.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 5/7/21.
//

import SwiftUI

struct NewExpenseButton: View {
    
    var buttonPressed: () -> Void
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                Button(action: { buttonPressed() },
                       label: {
                        Text("+")
                            .font(.system(.largeTitle))
                            .foregroundColor(Color.white)
                            .padding(.bottom, 7)
                       })
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

struct NewExpenseButton_Previews: PreviewProvider {
    static var previews: some View {
        NewExpenseButton(buttonPressed: {})
    }
}
