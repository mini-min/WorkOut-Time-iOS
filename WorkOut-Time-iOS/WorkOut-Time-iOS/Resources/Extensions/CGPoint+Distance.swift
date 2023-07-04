//
//  CGPoint+Distance.swift
//  WorkOut-Time-iOS
//
//  Created by 민 on 2023/07/04.
//

import Foundation
import UIKit

extension CGPoint {
    func distance(to point: CGPoint) -> CGFloat {
        return hypot(self.x - point.x, self.y - point.y)
    }
}
