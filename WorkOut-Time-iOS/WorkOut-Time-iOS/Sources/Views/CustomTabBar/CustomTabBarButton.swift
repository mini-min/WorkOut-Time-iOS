//
//  CustomTabBarButton.swift
//  WorkOut-Time-iOS
//
//  Created by 민 on 2023/07/04.
//

import Foundation
import UIKit

public class CustomTabBarButton: UIButton {
    
    var selectedColor: UIColor! = .white {
        didSet {
            reloadApperance()
        }
    }
    
    var unselectedColor: UIColor! = .white {
        didSet {
            reloadApperance()
        }
    }
    
    init(forItem item: UITabBarItem) {
        super.init(frame: .zero)
        setImage(item.image, for: .normal)
    }
    
    init(image: UIImage) {
        super.init(frame: .zero)
        setImage(image, for: .normal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override public var isSelected: Bool {
        didSet {
            reloadApperance()
        }
    }
    
    func reloadApperance() {
        self.tintColor = isSelected ? selectedColor : unselectedColor
    }
}
