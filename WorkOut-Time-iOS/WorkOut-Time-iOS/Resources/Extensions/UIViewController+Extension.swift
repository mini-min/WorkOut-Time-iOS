//
//  UIViewController+Extension.swift
//  WorkOut-Time-iOS
//
//  Created by 민 on 2023/07/07.
//

import Foundation
import UIKit

extension UIViewController {
    func changeButton(_ button: UIButton, title: String, titleColor: UIColor) {
        button.setTitle(title, for: UIControl.State())
        button.setTitleColor(titleColor, for: UIControl.State())
    }
}
