//
//  ViewController.swift
//  UICollectionView-Ray-Wenderlich-Tutorial
//
//  Created by Dmitry Shapkin on 23/03/2019.
//  Copyright © 2019 Dmitry Shapkin. All rights reserved.
//


import UIKit


class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
        button.backgroundColor = .red
        button.setTitle("Button", for: .normal)
        self.view.addSubview(button)
    }
}

