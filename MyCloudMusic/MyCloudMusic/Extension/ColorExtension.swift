//
//  ColorExtension.swift
//  MyCloudMusic
//
//  Created by xuqingqing on 2022/8/21.
//

import Foundation
import UIKit

extension UIColor {
    public convenience init(hex: Int) {
        let red = (hex & 0xFF0000) >> 16
        let green = (hex & 0xFF00) >> 8
        let blue = (hex & 0xFF)
        
        let redDouble = Double(red) / 255.0
        let greenDouble = Double(green) / 255.0
        let blueDouble = Double(blue) / 255.0
        
        self.init(red: redDouble, green: greenDouble, blue: blueDouble, alpha: 1.0)
    }
}
