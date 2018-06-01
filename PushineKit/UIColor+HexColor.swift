//
//  UIColor+HexColor.swift
//  PushineKit
//
//  Created by puxiang on 2018/5/30.
//  Copyright © 2018年 PushineKit. All rights reserved.
//

import UIKit

extension UIColor {
    
    /// 十六进制颜色转换
    static public func hexColor(_  hexColor: Int) -> UIColor {
        return UIColor.hexColor(hexColor, alpha: 1.0)
    }
    
    /// 十六进制颜色带透明度
    static public func hexColor(_ hexColor: Int, alpha: CGFloat) -> UIColor {
        let red = ((CGFloat)((hexColor & 0xFF0000) >> 16)) / 255.0
        let green = ((CGFloat)((hexColor & 0xFF00) >> 8)) / 255.0
        let blue = ((CGFloat)(hexColor & 0xFF)) / 255.0
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    
}
