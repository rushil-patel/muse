//
//  NoteView.swift
//  Music
//
//  Created by Rushil Patel on 1/18/18.
//  Copyright © 2018 Rushil Patel. All rights reserved.
//

import UIKit

class NoteView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var color: UIColor = UIColor.black
    var fillColor: UIColor = UIColor.white
    
    override func layoutSubviews() {
        super.layoutSubviews()
        drawNote(frame: self.frame)
    }

    
    func drawNote(frame: CGRect = CGRect(x: 62, y: 333, width: 27, height: 18)) {
        //// Color Declarations
        
        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 5.04, y: frame.minY + 15.33))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.5, y: frame.minY + 8.99), controlPoint1: CGPoint(x: frame.minX + 0.85, y: frame.minY + 13.15), controlPoint2: CGPoint(x: frame.minX + 0.5, y: frame.minY + 9.7))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 4.13, y: frame.minY + 2.88), controlPoint1: CGPoint(x: frame.minX + 0.5, y: frame.minY + 7.41), controlPoint2: CGPoint(x: frame.minX + 0.95, y: frame.minY + 4.92))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 12.31, y: frame.minY + 0.39), controlPoint1: CGPoint(x: frame.minX + 7.31, y: frame.minY + 0.84), controlPoint2: CGPoint(x: frame.minX + 11.63, y: frame.minY + 0.39))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 22.53, y: frame.minY + 2.43), controlPoint1: CGPoint(x: frame.minX + 12.99, y: frame.minY + 0.39), controlPoint2: CGPoint(x: frame.minX + 17.99, y: frame.minY - 0.06))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 27.53, y: frame.minY + 8.99), controlPoint1: CGPoint(x: frame.minX + 27.07, y: frame.minY + 4.92), controlPoint2: CGPoint(x: frame.minX + 27.53, y: frame.minY + 8.99))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 24.58, y: frame.minY + 14.65), controlPoint1: CGPoint(x: frame.minX + 27.53, y: frame.minY + 8.99), controlPoint2: CGPoint(x: frame.minX + 27.85, y: frame.minY + 12.09))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 16.17, y: frame.minY + 17.6), controlPoint1: CGPoint(x: frame.minX + 21.4, y: frame.minY + 17.14), controlPoint2: CGPoint(x: frame.minX + 16.51, y: frame.minY + 17.6))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 5.04, y: frame.minY + 15.33), controlPoint1: CGPoint(x: frame.minX + 15.49, y: frame.minY + 17.6), controlPoint2: CGPoint(x: frame.minX + 10.27, y: frame.minY + 18.05))
        bezierPath.close()
        color.setFill()
        bezierPath.fill()
        UIColor.black.setStroke()
        bezierPath.lineWidth = 1
        bezierPath.stroke()

        let backLayer = CAShapeLayer()
        backLayer.frame = frame
        backLayer.position = frame.center
        backLayer.path = bezierPath.fit(into: self.frame).moveCenter(to: backLayer.position).cgPath
        backLayer.fillColor = self.color.cgColor
        backLayer.strokeColor = self.color.cgColor
        backLayer.lineWidth = 5
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: frame.minX + 12.31, y: frame.minY + 2.2))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 8.45, y: frame.minY + 6.73), controlPoint1: CGPoint(x: frame.minX + 9.59, y: frame.minY + 2.65), controlPoint2: CGPoint(x: frame.minX + 8.45, y: frame.minY + 5.37))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 10.71, y: frame.minY + 14.43), controlPoint1: CGPoint(x: frame.minX + 8.45, y: frame.minY + 8.09), controlPoint2: CGPoint(x: frame.minX + 9.59, y: frame.minY + 13.3))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 16.4, y: frame.minY + 16.01), controlPoint1: CGPoint(x: frame.minX + 11.84, y: frame.minY + 15.56), controlPoint2: CGPoint(x: frame.minX + 14.19, y: frame.minY + 16.58))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 19.58, y: frame.minY + 11.26), controlPoint1: CGPoint(x: frame.minX + 18.61, y: frame.minY + 15.45), controlPoint2: CGPoint(x: frame.minX + 19.58, y: frame.minY + 13.3))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 17.51, y: frame.minY + 4.47), controlPoint1: CGPoint(x: frame.minX + 19.58, y: frame.minY + 9.22), controlPoint2: CGPoint(x: frame.minX + 18.43, y: frame.minY + 5.75))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 12.31, y: frame.minY + 2.2), controlPoint1: CGPoint(x: frame.minX + 16.85, y: frame.minY + 3.56), controlPoint2: CGPoint(x: frame.minX + 15.04, y: frame.minY + 1.75))
        bezier2Path.close()
        fillColor.setFill()
        bezier2Path.fill()
        UIColor.black.setStroke()
        bezier2Path.lineWidth = 1
        bezier2Path.stroke()

        let frontLayer = CAShapeLayer()
        frontLayer.frame = frame
        frontLayer.position = frame.center
        frontLayer.path = bezier2Path.fit(into: self.frame.scale(by: 0.5)).moveCenter(to: frontLayer.position).cgPath
        frontLayer.fillColor = self.fillColor.cgColor
        frontLayer.strokeColor = self.fillColor.cgColor
        frontLayer.lineWidth = 4
        
        
        self.layer.addSublayer(backLayer)
        self.layer.addSublayer(frontLayer)
        
        
        
    }

}
