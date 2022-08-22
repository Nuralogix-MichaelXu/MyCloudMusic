//
//  ViewUtil.swift
//  View相关的工具类，包括圆角、边框
//
//  Created by xuqingqing on 2022/8/21.
//

import Foundation
import UIKit

class ViewUtil {
    static func showFullRadius(view: UIView) {
        view.layer.cornerRadius = view.frame.height / 2.0
        view.layer.masksToBounds = true
    }
}
