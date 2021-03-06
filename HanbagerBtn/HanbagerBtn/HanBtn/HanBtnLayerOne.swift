//
//  HanBtnLayerOne.swift
//  HanbagerBtn
//
//  Created by Noah_Shan on 2018/4/24.
//  Copyright © 2018年 Inspur. All rights reserved.
//

import Foundation
import UIKit


class HanBtnLayerOne: CAShapeLayer {
    
    let padding: CGFloat = hanBtnpadding
    
    var durationX: Double = 0.5
    
    init(duration: Double) {
        super.init()
        self.durationX = duration
        self.strokeColor = hanBtnLinecolor
        self.lineWidth = hanBtnLineWidth
        self.fillColor = UIColor.clear.cgColor
        self.path = self.startPath.cgPath
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var startPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: padding, y: padding))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight - padding, y: padding))
        pathNow.close()
        return pathNow
    }
    
    /// normal
    var endPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: padding, y: padding))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight - padding, y: hanBtnHeight - padding))
        pathNow.close()
        return pathNow
    }
    
    /// left arrwo path
    var arrowLeftPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: padding, y: hanBtnHeight / 2))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight / 2, y: padding))
        pathNow.close()
        return pathNow
    }
    
    /// left arrwo path
    var arrowRightPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: hanBtnHeight / 2, y: padding))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight - padding, y: hanBtnHeight / 2))
        pathNow.close()
        return pathNow
    }
    
    /// down arrow
    var arrowDownPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: padding, y: hanBtnHeight / 2))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight / 2, y: hanBtnHeight - padding))
        pathNow.close()
        return pathNow
    }
    
    /// ver 3
    var arrowVer3Path: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: padding, y: padding))
        pathNow.addLine(to: CGPoint(x: padding, y: hanBtnHeight - padding))
        pathNow.close()
        return pathNow
    }
    
    /// one line
    var arrowOnelinePath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: padding, y: padding))
        pathNow.addLine(to: CGPoint(x: padding, y: padding))
        pathNow.close()
        return pathNow
    }
    
    /// add character
    var arrowAddcPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: hanBtnHeight / 2, y: padding))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight / 2, y: hanBtnHeight - padding))
        pathNow.close()
        return pathNow
    }
    
    /// stairway
    var arrowStairway: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: padding, y: padding))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight - padding * 2, y: padding))
        pathNow.close()
        return pathNow
    }
}

/// normal
extension HanBtnLayerOne {
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

/// left arrow
extension HanBtnLayerOne {
    func changeLeftArrow() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = startPath.cgPath
        arc2.toValue = arrowLeftPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
    
    func leftArrowChangeNormal() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = arrowLeftPath.cgPath
        arc2.toValue = startPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
}

/// right arrow
extension HanBtnLayerOne {
    func changeRightArrow() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = startPath.cgPath
        arc2.toValue = arrowRightPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
    
    func rightArrowChangeNormal() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = arrowRightPath.cgPath
        arc2.toValue = startPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
}

/// down arrow
extension HanBtnLayerOne {
    func changeDownArrow() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = startPath.cgPath
        arc2.toValue = arrowDownPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
    
    func downArrowChangeNormal() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = arrowDownPath.cgPath
        arc2.toValue = startPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
}

/// ver 3
extension HanBtnLayerOne {
    func changeVer3Arrow() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = startPath.cgPath
        arc2.toValue = arrowVer3Path.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
    
    func ver3ArrowChangeNormal() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = arrowVer3Path.cgPath
        arc2.toValue = startPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
}

/// one line
extension HanBtnLayerOne {
    func changeOnelineArrow() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = startPath.cgPath
        arc2.toValue = arrowOnelinePath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
    
    func onelineArrowChangeNormal() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = arrowOnelinePath.cgPath
        arc2.toValue = startPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
}

/// add character
extension HanBtnLayerOne {
    func changeAddcArrow() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = startPath.cgPath
        arc2.toValue = arrowAddcPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
    
    func addcArrowChangeNormal() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = arrowAddcPath.cgPath
        arc2.toValue = startPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
}

/// stairway
extension HanBtnLayerOne {
    func changeStairway() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = startPath.cgPath
        arc2.toValue = arrowStairway.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
    
    func stairwayChangeNormal() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = arrowStairway.cgPath
        arc2.toValue = startPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
}
