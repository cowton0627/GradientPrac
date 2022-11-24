//
//  ViewController.swift
//  GradientPrac
//
//  Created by Chun-Li Cheng on 2022/11/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        view.backgroundColor = .systemGray5
        
        
    }
    
    private func setupView() {
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

