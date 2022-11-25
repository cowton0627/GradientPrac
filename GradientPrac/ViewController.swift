//
//  ViewController.swift
//  GradientPrac
//
//  Created by Chun-Li Cheng on 2022/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    // for CGAffineTranform to use
    var angle = CGFloat.pi/180

    override func viewDidLoad() {
        super.viewDidLoad()
//        setupGradientBorder()
        view.backgroundColor = .systemGray5
//        setupOriginal()
       
//        setupOriginal()
//        setupOriginal().transform = CGAffineTransform.identity.translatedBy(x: 0, y: 0).scaledBy(x: 0.7, y: 0.5).rotated(by: angle * 45)
//        setupOriginal().transform = CGAffineTransform.identity.translatedBy(x: 25, y: 120).scaledBy(x: 0.5, y: 0.5).rotated(by: angle * 90)
//        setupOriginal().transform = CGAffineTransform.identity.translatedBy(x: -25, y: -120).scaledBy(x: 0.5, y: 0.5).rotated(by: angle * 135)
//        setupOriginal().transform = CGAffineTransform.identity.translatedBy(x: 50, y: 200).scaledBy(x: 0.5, y: 0.5).rotated(by: angle * 180)
//        setupOriginal().transform = CGAffineTransform.identity.translatedBy(x: -50, y: -200).scaledBy(x: 0.5, y: 0.7).rotated(by: angle * 225)
        
        
        setupMapleLeaf()
        setupMapleLeaf().transform = CGAffineTransform.identity.translatedBy(x: 25, y: 0).scaledBy(x: -1, y: 1)
    }
    
    private func setupMapleLeaf() -> UIView {
        let size = UIScreen.main.bounds.size
        let redView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        let mapleView = UIView(frame: redView.frame)
        mapleView.backgroundColor = UIColor.red
        redView.addSubview(mapleView)
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 162.87, y: 14.05))
        path.addLine(to: CGPoint(x: 150.53, y: 36.54))
        path.addLine(to: CGPoint(x: 137.40, y: 29.70))
        path.addLine(to: CGPoint(x: 143.47 , y: 67.85))
        path.addLine(to: CGPoint(x: 126.06, y: 52.41))
        path.addLine(to: CGPoint(x: 120, y: 60))
        path.addLine(to: CGPoint(x: 100, y: 60))
        path.addLine(to: CGPoint(x: 108.26, y: 78.65))
        path.addLine(to: CGPoint(x: 100.26, y: 83.28))
        path.addLine(to: CGPoint(x: 132.45, y: 110.39))
        path.addLine(to: CGPoint(x: 128.48, y: 122.08))
        path.addLine(to: CGPoint(x: 158.68, y: 116.79))
        path.addLine(to: CGPoint(x: 158.68, y: 149.42))
        path.addLine(to: CGPoint(x: 162.87, y: 149.42))
        path.close()
                
        let mapleShapeLayer = CAShapeLayer()
        mapleShapeLayer.path = path.cgPath
        mapleView.layer.mask = mapleShapeLayer
        redView.center = CGPoint(x: size.width/2, y: size.height/2)
        self.view.addSubview(redView)
        
        return redView
    }
    
    private func setupOriginal() -> UIView {
        let size = UIScreen.main.bounds.size
        // background rectangle view
        var rect = UIView(frame: CGRect(x: 0,
                                        y: 0,
                                        width: 350,
                                        height: 250))
        rect.center = CGPoint(x: size.width/2, y: size.height/2)
        rect.backgroundColor = UIColor.white
        rect.layer.borderWidth = 15
        rect.layer.borderColor = CGColor(red: 42/255, green: 43/255, blue: 42/255, alpha: 1)
        self.view.addSubview(rect)

        // 日本國旗中心紅圓，just like setupJapan() or something
//        var circle = UIView(frame: CGRect(x: 0,
//                                          y: 0,
//                                          width: 250,
//                                          height: 250))
//        circle.center = CGPoint(x: rect.bounds.width/2, y: rect.bounds.height/2)
//        circle.backgroundColor = UIColor.red
//        circle.layer.cornerRadius = 125
//        rect.addSubview(circle)

        setupGeorgia()

        func setupGeorgia() {
            var factor = CGRect(x: 0, y: 0, width: 40, height: 250)
            let redBack1 = UIView(frame: factor)
            redBack1.center = CGPoint(x: rect.bounds.width/2, y: rect.bounds.height/2)
            redBack1.backgroundColor = UIColor.red
            rect.addSubview(redBack1)

            factor = CGRect(x: 45 , y: 25, width: 20, height: 60)
            let redBack3 = UIView(frame: factor)
            redBack3.backgroundColor = .red
            rect.addSubview(redBack3)
            factor = CGRect(x: 45, y: 165, width: 20, height: 60)
            let redBack5 = UIView(frame: factor)
            redBack5.backgroundColor = .red
            rect.addSubview(redBack5)
            factor = CGRect(x: 280  , y: 25, width: 20, height: 60)
            let redBack7 = UIView(frame: factor)
            redBack7.backgroundColor = .red
            rect.addSubview(redBack7)
            factor = CGRect(x: 280  , y: 165, width: 20, height: 60)
            let redBack9 = UIView(frame: factor)
            redBack9.backgroundColor = .red
            rect.addSubview(redBack9)
            
            factor = CGRect(x: 0, y: 0, width: 350, height: 40)
            let redBack2 = UIView(frame: factor)
            redBack2.backgroundColor = .red
            redBack2.center = CGPoint(x: rect.bounds.width/2, y: rect.bounds.height/2)
            rect.addSubview(redBack2)
            factor = CGRect(x: 25, y: 45, width: 60, height: 20)
            let redBack4 = UIView(frame: factor)
            redBack4.backgroundColor = .red
            rect.addSubview(redBack4)
            factor = CGRect(x: 260, y: 45, width: 60, height: 20)
            let redBack6 = UIView(frame: factor)
            redBack6.backgroundColor = .red
            rect.addSubview(redBack6)
            factor = CGRect(x: 25  , y: 185, width: 60, height: 20)
            let redBack8 = UIView(frame: factor)
            redBack8.backgroundColor = .red
            rect.addSubview(redBack8)
            factor = CGRect(x: 260, y: 185, width: 60, height: 20)
            let redBack10 = UIView(frame: factor)
            redBack10.backgroundColor = .red
            rect.addSubview(redBack10)
        }
        
        return rect
    }
    
    private func setupGradientBorder() {
        let size = UIScreen.main.bounds.size
        var leftView = UIView(frame: CGRect(x: 0,
                                            y: 0,
                                            width: size.width/2,
                                            height: size.height))
        leftView.backgroundColor = .systemBrown
        view.addSubview(leftView)

        var leftPath = UIBezierPath(roundedRect: CGRect(x: 0,
                                                        y: 0 + size.height/4,
                                                        width: size.width/2,
                                                        height: size.height/2),
                                    byRoundingCorners: [.topRight, .bottomRight],
                                    cornerRadii: CGSize(width: 150, height: 0))

        let leftShapeLayer = CAShapeLayer()
        leftShapeLayer.path = leftPath.cgPath
        leftView.layer.mask = leftShapeLayer

        
        // Add Border
        let leftBorderLayer = CAShapeLayer()
        leftBorderLayer.path = leftShapeLayer.path
        leftBorderLayer.fillColor = UIColor.clear.cgColor
        leftBorderLayer.strokeColor = UIColor.purple.cgColor
        leftBorderLayer.lineWidth = 15

//        leftView.layer.addSublayer(leftBorderLayer)
        
        // Add Gradient Border
        let lightCgColor = UIColor.yellow.cgColor
        let deepCgColor = UIColor.purple.cgColor

        let leftGradient = CAGradientLayer()
        leftGradient.frame = leftView.bounds
        leftGradient.colors = [lightCgColor, deepCgColor]
        leftGradient.mask = leftBorderLayer
        leftView.layer.addSublayer(leftGradient)

    }


}

