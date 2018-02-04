//
//  TrebleCleffView.swift
//  Music
//
//  Created by Rushil Patel on 1/21/18.
//  Copyright © 2018 Rushil Patel. All rights reserved.
//

import UIKit

class TrebleCleffView: UIView {

    override func layoutSubviews() {
        super.layoutSubviews()
        drawTreble(frame: self.frame)
        
        self.backgroundColor = UIColor.clear
    }
    
    func resizeToFit(withWidth: CGFloat) {
        let w: CGFloat = self.frame.width
        let h: CGFloat = self.frame.height
        let ratio = h / w
        let newHeight = ratio * withWidth
        let size = CGSize(width: withWidth, height: newHeight)
        let origin = self.frame.origin
        let rect = CGRect.init(origin: origin, size: size)
        self.frame = rect
    }

    //Imported code from PaintCode, takes care of drawing the bass cleff in the form of a bezier path

    func drawTreble(frame: CGRect) {
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 95.15, y: frame.minY + 278.85))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 135.07, y: frame.minY + 284.85), controlPoint1: CGPoint(x: frame.minX + 113.12, y: frame.minY + 270.86), controlPoint2: CGPoint(x: frame.minX + 129.36, y: frame.minY + 280.12))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 151.04, y: frame.minY + 314.83), controlPoint1: CGPoint(x: frame.minX + 146.55, y: frame.minY + 294.34), controlPoint2: CGPoint(x: frame.minX + 151.04, y: frame.minY + 314.83))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 140.07, y: frame.minY + 357.8), controlPoint1: CGPoint(x: frame.minX + 151.04, y: frame.minY + 314.83), controlPoint2: CGPoint(x: frame.minX + 157.03, y: frame.minY + 336.82))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 95.15, y: frame.minY + 375.79), controlPoint1: CGPoint(x: frame.minX + 127.07, y: frame.minY + 373.87), controlPoint2: CGPoint(x: frame.minX + 109, y: frame.minY + 375.03))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 46.24, y: frame.minY + 359.8), controlPoint1: CGPoint(x: frame.minX + 81.48, y: frame.minY + 376.54), controlPoint2: CGPoint(x: frame.minX + 59.08, y: frame.minY + 370.58))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 23.28, y: frame.minY + 321.83), controlPoint1: CGPoint(x: frame.minX + 29.08, y: frame.minY + 345.4), controlPoint2: CGPoint(x: frame.minX + 23.28, y: frame.minY + 324.68))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 50.23, y: frame.minY + 233.88), controlPoint1: CGPoint(x: frame.minX + 23.28, y: frame.minY + 316.83), controlPoint2: CGPoint(x: frame.minX + 10.62, y: frame.minY + 268.93))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 113.12, y: frame.minY + 169.92), controlPoint1: CGPoint(x: frame.minX + 93.15, y: frame.minY + 195.91), controlPoint2: CGPoint(x: frame.minX + 108.96, y: frame.minY + 177.72))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 138.07, y: frame.minY + 99.97), controlPoint1: CGPoint(x: frame.minX + 118.5, y: frame.minY + 159.82), controlPoint2: CGPoint(x: frame.minX + 135.1, y: frame.minY + 135.91))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 133.08, y: frame.minY + 36.01), controlPoint1: CGPoint(x: frame.minX + 139.51, y: frame.minY + 82.56), controlPoint2: CGPoint(x: frame.minX + 139.87, y: frame.minY + 61.18))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 108.12, y: frame.minY + 0.03), controlPoint1: CGPoint(x: frame.minX + 123.1, y: frame.minY - 0.97), controlPoint2: CGPoint(x: frame.minX + 112.01, y: frame.minY + 0.36))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 77.18, y: frame.minY + 33.01), controlPoint1: CGPoint(x: frame.minX + 96.15, y: frame.minY - 0.97), controlPoint2: CGPoint(x: frame.minX + 81.18, y: frame.minY + 22.02))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 67.2, y: frame.minY + 99.97), controlPoint1: CGPoint(x: frame.minX + 73.19, y: frame.minY + 44), controlPoint2: CGPoint(x: frame.minX + 63.21, y: frame.minY + 68.99))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 77.18, y: frame.minY + 160.93), controlPoint1: CGPoint(x: frame.minX + 71.19, y: frame.minY + 130.95), controlPoint2: CGPoint(x: frame.minX + 77.18, y: frame.minY + 160.93))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 124.1, y: frame.minY + 407.77))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 127.09, y: frame.minY + 466.73), controlPoint1: CGPoint(x: frame.minX + 124.1, y: frame.minY + 407.77), controlPoint2: CGPoint(x: frame.minX + 132.08, y: frame.minY + 446.75))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 99.14, y: frame.minY + 491.72), controlPoint1: CGPoint(x: frame.minX + 122.1, y: frame.minY + 486.72), controlPoint2: CGPoint(x: frame.minX + 99.14, y: frame.minY + 491.72))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 77.18, y: frame.minY + 490.72), controlPoint1: CGPoint(x: frame.minX + 99.14, y: frame.minY + 491.72), controlPoint2: CGPoint(x: frame.minX + 87.16, y: frame.minY + 495.71))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 68.2, y: frame.minY + 476.73), controlPoint1: CGPoint(x: frame.minX + 67.2, y: frame.minY + 485.72), controlPoint2: CGPoint(x: frame.minX + 68.2, y: frame.minY + 476.73))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 93.15, y: frame.minY + 460.74), controlPoint1: CGPoint(x: frame.minX + 68.2, y: frame.minY + 476.73), controlPoint2: CGPoint(x: frame.minX + 88.16, y: frame.minY + 474.73))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 69.2, y: frame.minY + 425.76), controlPoint1: CGPoint(x: frame.minX + 98.14, y: frame.minY + 446.75), controlPoint2: CGPoint(x: frame.minX + 92.15, y: frame.minY + 425.76))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 38.26, y: frame.minY + 467.73), controlPoint1: CGPoint(x: frame.minX + 46.24, y: frame.minY + 425.76), controlPoint2: CGPoint(x: frame.minX + 36.26, y: frame.minY + 446.75))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 60.21, y: frame.minY + 494.71), controlPoint1: CGPoint(x: frame.minX + 39.1, y: frame.minY + 476.65), controlPoint2: CGPoint(x: frame.minX + 49.19, y: frame.minY + 488.63))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 99.33, y: frame.minY + 504.92), controlPoint1: CGPoint(x: frame.minX + 75.14, y: frame.minY + 502.95), controlPoint2: CGPoint(x: frame.minX + 94.73, y: frame.minY + 505.5))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 125.09, y: frame.minY + 491.72), controlPoint1: CGPoint(x: frame.minX + 107.31, y: frame.minY + 503.92), controlPoint2: CGPoint(x: frame.minX + 115.11, y: frame.minY + 500.46))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 138.07, y: frame.minY + 468.73), controlPoint1: CGPoint(x: frame.minX + 135.07, y: frame.minY + 482.97), controlPoint2: CGPoint(x: frame.minX + 137.07, y: frame.minY + 471.73))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 140.07, y: frame.minY + 442.75), controlPoint1: CGPoint(x: frame.minX + 139.07, y: frame.minY + 465.73), controlPoint2: CGPoint(x: frame.minX + 141.06, y: frame.minY + 457.74))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 135.07, y: frame.minY + 407.77), controlPoint1: CGPoint(x: frame.minX + 139.07, y: frame.minY + 427.76), controlPoint2: CGPoint(x: frame.minX + 135.07, y: frame.minY + 407.77))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 84.17, y: frame.minY + 146.94))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 80.18, y: frame.minY + 122.95), controlPoint1: CGPoint(x: frame.minX + 84.17, y: frame.minY + 146.94), controlPoint2: CGPoint(x: frame.minX + 81.18, y: frame.minY + 131.95))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 83.17, y: frame.minY + 86.98), controlPoint1: CGPoint(x: frame.minX + 79.81, y: frame.minY + 119.69), controlPoint2: CGPoint(x: frame.minX + 80.25, y: frame.minY + 98.42))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 113.12, y: frame.minY + 44), controlPoint1: CGPoint(x: frame.minX + 94.15, y: frame.minY + 44), controlPoint2: CGPoint(x: frame.minX + 113.12, y: frame.minY + 44))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 124.1, y: frame.minY + 54), controlPoint1: CGPoint(x: frame.minX + 113.12, y: frame.minY + 44), controlPoint2: CGPoint(x: frame.minX + 121.35, y: frame.minY + 43.75))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 124.1, y: frame.minY + 84.98), controlPoint1: CGPoint(x: frame.minX + 126.84, y: frame.minY + 64.24), controlPoint2: CGPoint(x: frame.minX + 124.1, y: frame.minY + 84.98))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 99.14, y: frame.minY + 129.95), controlPoint1: CGPoint(x: frame.minX + 124.1, y: frame.minY + 84.98), controlPoint2: CGPoint(x: frame.minX + 116.61, y: frame.minY + 106.71))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 54.23, y: frame.minY + 177.92), controlPoint1: CGPoint(x: frame.minX + 81.67, y: frame.minY + 153.18), controlPoint2: CGPoint(x: frame.minX + 54.23, y: frame.minY + 177.92))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 8.31, y: frame.minY + 240.88), controlPoint1: CGPoint(x: frame.minX + 54.23, y: frame.minY + 177.92), controlPoint2: CGPoint(x: frame.minX + 21.54, y: frame.minY + 210.4))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 17.29, y: frame.minY + 344.81), controlPoint1: CGPoint(x: frame.minX - 4.91, y: frame.minY + 271.36), controlPoint2: CGPoint(x: frame.minX - 2.67, y: frame.minY + 311.83))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 104.13, y: frame.minY + 384.79), controlPoint1: CGPoint(x: frame.minX + 37.26, y: frame.minY + 377.79), controlPoint2: CGPoint(x: frame.minX + 69.2, y: frame.minY + 386.78))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 183, y: frame.minY + 329.83), controlPoint1: CGPoint(x: frame.minX + 139.07, y: frame.minY + 382.79), controlPoint2: CGPoint(x: frame.minX + 183, y: frame.minY + 373.8))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 122.1, y: frame.minY + 243.88), controlPoint1: CGPoint(x: frame.minX + 183, y: frame.minY + 285.86), controlPoint2: CGPoint(x: frame.minX + 151.79, y: frame.minY + 248.87))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 56.22, y: frame.minY + 284.85), controlPoint1: CGPoint(x: frame.minX + 92.4, y: frame.minY + 238.88), controlPoint2: CGPoint(x: frame.minX + 66.2, y: frame.minY + 261.11))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 68.2, y: frame.minY + 338.81), controlPoint1: CGPoint(x: frame.minX + 46.24, y: frame.minY + 308.58), controlPoint2: CGPoint(x: frame.minX + 58.97, y: frame.minY + 329.82))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 91.16, y: frame.minY + 353.81), controlPoint1: CGPoint(x: frame.minX + 77.43, y: frame.minY + 347.81), controlPoint2: CGPoint(x: frame.minX + 91.16, y: frame.minY + 353.81))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 93.15, y: frame.minY + 351.81))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 73.19, y: frame.minY + 308.83), controlPoint1: CGPoint(x: frame.minX + 93.15, y: frame.minY + 351.81), controlPoint2: CGPoint(x: frame.minX + 70.03, y: frame.minY + 329.97))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 95.15, y: frame.minY + 278.85), controlPoint1: CGPoint(x: frame.minX + 74.18, y: frame.minY + 302.2), controlPoint2: CGPoint(x: frame.minX + 77.03, y: frame.minY + 286.92))
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
