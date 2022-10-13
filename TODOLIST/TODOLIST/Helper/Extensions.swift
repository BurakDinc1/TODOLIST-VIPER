//
//  Extensions.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import Foundation
import UIKit

// MARK: - UIView
extension UIView {
    func addBorder(borderWidth: CGFloat = 0.4,
                   color: CGColor = UIColor.gray.cgColor,
                   cornerRadius: CGFloat = 0,
                   corners: CACornerMask = [.layerMaxXMaxYCorner,
                                            .layerMaxXMinYCorner,
                                            .layerMinXMaxYCorner,
                                            .layerMinXMinYCorner])
    {
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = color
        self.layer.cornerRadius = cornerRadius
        self.layer.maskedCorners = corners
    }
    
    func shadow(cornerRadius: CGFloat = 5.0,
                shadowRadius: CGFloat = 4.0,
                shadowColor: UIColor = .darkGray,
                shadowOffset: CGSize = CGSize(width: 3.0, height: 3.0), shadowOpacity: Float = 1.0) {
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowOpacity = shadowOpacity
    }
    
}

// MARK: - UIImageView
extension UIImageView {
    func makeBlurImage() {
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(blurEffectView)
    }
}
