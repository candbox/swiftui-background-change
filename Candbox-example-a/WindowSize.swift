//
//  WindowSize.swift
//  Candbox-example-a
//  Candbox@Wang
//  Created by acumen on 2020/11/10.
//

import Foundation
import UIKit

extension UIScreen {
    static let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
    static let statusBarHeight = window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0

    static let Width = UIScreen.main.bounds.size.width
    static let Height = UIScreen.main.bounds.size.height
    
    static let Size = UIScreen.main.bounds.size
}
