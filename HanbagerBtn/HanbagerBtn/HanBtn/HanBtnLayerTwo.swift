//
//  HanBtnLayerTwo.swift
//  HanbagerBtn
//
//  Created by Noah_Shan on 2018/4/24.
//  Copyright © 2018年 Inspur. All rights reserved.
//

import Foundation
import UIKit


class HanBtnLayerTwo: CAShapeLayer {
    
    var padding: CGFloat = hanBtnpadding
    
    var durationX: Double = 0.5
    
    init(duration: Double) {
        super.init()
        self.durationX = duration
        self.strokeColor = hanBtnLinecolor
        self.lineWidth = 2
        self.fillColor = UIColor.clear.cgColor
        self.path = self.startPath.cgPath
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var startPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: padding, y: hanBtnHeight / 2))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight - padding, y: hanBtnHeight / 2))
        pathNow.close()
        return pathNow
    }
    
    var endPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: padding, y: hanBtnHeight - padding))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight - padding, y: padding))
        pathNow.close()
        return pathNow
    }
    
}

/// normal
extension HanBtnLayerTwo {
    func animationX() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = startPath.cgPath
        arc2.toValue = endPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
    
    func changeNormal() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = endPath.cgPath
        arc2.toValue = startPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
}
