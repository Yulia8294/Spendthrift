//
//  Category.swift
//  Spendthrift
//
//  Created by Yulia Novikova on 4/22/21.
//

import UIKit

enum ExpenseCategory: String, CaseIterable {
    
    case recent = "Recent"
    case misc = "Miscellaneous"
    case entertainment = "Entertainment"
    case foods = "Foods and drinks"
    case housing = "Housing"
    case health = "Health"
    case transport = "Transportation"
    
    var icon: UIImage {
        switch self {
        case .entertainment: return #imageLiteral(resourceName: "Add")
        case .misc:          return #imageLiteral(resourceName: "Money")
        case .foods:         return #imageLiteral(resourceName: "Restaurant")
        case .health:        return #imageLiteral(resourceName: "Coffee")
        case .housing:       return #imageLiteral(resourceName: "Phone-1")
        case .transport:     return #imageLiteral(resourceName: "Group 3")
        case .recent:        return #imageLiteral(resourceName: "Phone-1")
        }
    }
}
