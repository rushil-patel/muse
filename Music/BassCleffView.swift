//
//  BaseCleffView.swift
//  Music
//
//  Created by Rushil Patel on 1/21/18.
//  Copyright © 2018 Rushil Patel. All rights reserved.
//

import UIKit

class BassCleffView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func layoutSubviews() {
        super.layoutSubviews()
        drawBass(frame: self.frame)
        self.backgroundColor = UIColor.clear
    }
    
    
    func resizeToFit(withWidth: CGFloat) {
        let w: CGFloat = self.frame.width
        let h: CGFloat = self.frame.height
        let ratio = h / w
        let newHeight = ratio * withWidth
        let size = CGSize(width: newHeight, height: withWidth)
        let origin = self.frame.origin
        let rect = CGRect.init(origin: origin, size: size)
        
        self.frame = rect
    }
    
    
    //Imported code from PaintCode, takes care of drawing the bass cleff in the form of a bezier path
    func drawBass(frame: CGRect) {
    
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 147.35, y: frame.minY + 47.93))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 69.34, y: frame.minY + 22.11), controlPoint1: CGPoint(x: frame.minX + 126.15, y: frame.minY + 16.06), controlPoint2: CGPoint(x: frame.minX + 79.57, y: frame.minY + 18.04))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 34.67, y: frame.minY + 73.75), controlPoint1: CGPoint(x: frame.minX + 26, y: frame.minY + 39.32), controlPoint2: CGPoint(x: frame.minX + 34.67, y: frame.minY + 73.75))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 78.01, y: frame.minY + 90.96), controlPoint1: CGPoint(x: frame.minX + 34.67, y: frame.minY + 73.75), controlPoint2: CGPoint(x: frame.minX + 69.34, y: frame.minY + 65.14))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 52.01, y: frame.minY + 125.39), controlPoint1: CGPoint(x: frame.minX + 86.68, y: frame.minY + 116.78), controlPoint2: CGPoint(x: frame.minX + 60.67, y: frame.minY + 125.39))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 17.33, y: frame.minY + 73.75), controlPoint1: CGPoint(x: frame.minX + 17.33, y: frame.minY + 125.39), controlPoint2: CGPoint(x: frame.minX + 17.33, y: frame.minY + 82.35))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 104.01, y: frame.minY + 13.5), controlPoint1: CGPoint(x: frame.minX + 17.33, y: frame.minY + 53.96), controlPoint2: CGPoint(x: frame.minX + 43.34, y: frame.minY + 13.5))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 182.02, y: frame.minY + 65.14), controlPoint1: CGPoint(x: frame.minX + 137.08, y: frame.minY + 13.5), controlPoint2: CGPoint(x: frame.minX + 173.36, y: frame.minY + 30.71))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 182.02, y: frame.minY + 142.6), controlPoint1: CGPoint(x: frame.minX + 189.26, y: frame.minY + 93.87), controlPoint2: CGPoint(x: frame.minX + 190.69, y: frame.minY + 108.17))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 13, y: frame.minY + 276), controlPoint1: CGPoint(x: frame.minX + 162.97, y: frame.minY + 218.27), controlPoint2: CGPoint(x: frame.minX + 13, y: frame.minY + 276))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 147.35, y: frame.minY + 151.2), controlPoint1: CGPoint(x: frame.minX + 13, y: frame.minY + 276), controlPoint2: CGPoint(x: frame.minX + 113.41, y: frame.minY + 220.15))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 147.35, y: frame.minY + 47.93), controlPoint1: CGPoint(x: frame.minX + 159.04, y: frame.minY + 127.46), controlPoint2: CGPoint(x: frame.minX + 163.59, y: frame.minY + 72.32))
        bezierPath.close()
        UIColor.black.setFill()
        bezierPath.fill()
        UIColor.black.setStroke()
        bezierPath.lineWidth = 1
        bezierPath.stroke()
    
        let pathLayer = CAShapeLayer()
        pathLayer.frame = frame
        pathLayer.position = frame.center
        pathLayer.path = bezierPath.fit(into: self.frame).moveCenter(to: pathLayer.position).cgPath
        pathLayer.fillColor = UIColor.black.cgColor
        pathLayer.strokeColor = UIColor.black.cgColor
        pathLayer.lineWidth = 1
        
        self.layer.addSublayer(pathLayer)
        
    }
}
