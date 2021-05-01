//
//  Extensions.swift
//  BizzAR-Swift
//
//  Created by Yulia Novikova on 11/1/20.
//  Copyright © 2020 Yulia. All rights reserved.
//

import UIKit
import SwiftUI

extension URL {
    
    func extractText() -> String {
        guard let text = try? String(contentsOf: self) else {
            return "Impossible to read text from file: \(self)"
        }
        return text
    }
}

extension UIImage {
    
    convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
    
    convenience init(view: UIView) {
        UIGraphicsBeginImageContext(view.frame.size)
        view.layer.render(in:UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.init(cgImage: image!.cgImage!)
    }
    
    func addBizzarLabel() -> UIImage {
        let newImageView = UIImageView(image: self)
        let watermarkHeight: CGFloat = 200
        
        let watermarkImageView = UIImageView(image: #imageLiteral(resourceName: "watermark"))
        
        watermarkImageView.frame = CGRect(x: 0, y: newImageView.frame.maxY - watermarkHeight,
                                          width: newImageView.frame.size.width,
                                          height: watermarkHeight)
        
        newImageView.addSubview(watermarkImageView)
        UIGraphicsBeginImageContext(newImageView.frame.size)
        newImageView.layer.render(in: UIGraphicsGetCurrentContext()!)
        if let watermarkedImage = UIGraphicsGetImageFromCurrentImageContext() {
            return watermarkedImage
        }
        UIGraphicsEndImageContext()
        return newImageView.image!
    }
    
}


extension View {
    func Print(_ vars: Any...) -> some View {
        for v in vars { print(v) }
        return EmptyView()
    }
}


extension Optional where Wrapped == Double {
    
    var anyValue: Double {
        switch self {
        case .none: return 0
        case let .some(double): return double
        }
    }
}

extension Double {
    func truncate() -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: self)
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 16
        return String(formatter.string(from: number) ?? "")
    }
}
