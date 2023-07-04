//
//  CustomTabIndicatorView.swift
//  WorkOut-Time-iOS
//
//  Created by 민 on 2023/07/04.
//

import Foundation
import UIKit

open class CustomTabIndicatorView: UIView {
    override open func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.bounds.height / 2
    }
    
    override open func tintColorDidChange() {
        super.tintColorDidChange()
        self.backgroundColor = tintColor
    }
}
