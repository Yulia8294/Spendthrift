//
//  NavigationConfigurator.swift
//  BizzAR-Swift
//
//  Created by Yulia Novikova on 6/23/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import SwiftUI

struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let navController = uiViewController.navigationController {
            self.configure(navController)
        }
    }

}
