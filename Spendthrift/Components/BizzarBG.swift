//
//  BizzarBG.swift
//  BizzAR-Swift
//
//  Created by Yulia Novikova on 11/1/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import SwiftUI

struct BizzarBG: View {
    var body: some View {
        Image("bg_menu").resizable().edgesIgnoringSafeArea(.all)
    }
}

struct BizzarBG_Previews: PreviewProvider {
    static var previews: some View {
        BizzarBG()
    }
}
