//
//  Placeholder.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 5/7/21.
//

import SwiftUI

struct Placeholder: View {
    
    @State var message = "Looks like you've managed not to spend anything yet!"
    
    var body: some View {
        VStack(spacing: 0) {
            Image("placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(message)
                .font(.body)
                .foregroundColor(.dark)
                .padding()
            Spacer()
        }
        .padding()
    }
}

struct Placeholder_Previews: PreviewProvider {
    static var previews: some View {
        Placeholder()
    }
}
