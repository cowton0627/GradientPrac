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
        
        
    }
    
    private func setupView() {
        let size = UIScreen.main.bounds.size
        var leftView = UIView(frame: CGRect(x: 0, y: 0,
                                            width: size.width/2,
                                            height: size.height))
        leftView.backgroundColor = .yellow
        view.addSubview(leftView)
        
        var leftPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0 + size.height/4,
                                                        width: size.width/2,
                                                        height: size.height/2),
                                    byRoundingCorners: [.topRight, .bottomRight, .topLeft, .bottomLeft],
                                    cornerRadii: CGSize(width: 150, height: 0))
        
        let leftShapeLayer = CAShapeLayer()
        leftShapeLayer.path = leftPath.cgPath
        leftView.layer.mask = leftShapeLayer
        
        
        
    }


}

