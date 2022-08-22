//
//  ViewExtension.swift
//  MyCloudMusic
//
//  Created by xuqingqing on 2022/8/21.
//

import Foundation
import UIKit

extension UIView {
    func showColorPrimaryBorder() {
        layer.borderWidth = WIDTH_BORDER
        layer.borderColor = UIColor(named:COLOR_PRIMARY)!.cgColor
    }
    
    func showFullRadius() {
        layer.cornerRadius = frame.height / 2.0
        layer.masksToBounds = true
    }
}
