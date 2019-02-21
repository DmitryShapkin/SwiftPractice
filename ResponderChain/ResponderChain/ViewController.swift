//
//  ViewController.swift
//  ResponderChain
//
//  Created by Dmitry Shapkin on 22/02/2019.
//  Copyright © 2019 Dmitry Shapkin. All rights reserved.
//

import UIKit

extension UIView {
    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("UIView: touchesBegan")
        next?.touchesBegan(touches, with: event)
    }
}

extension UIWindow {
    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("UIWindow: touchesBegan")
        next?.touchesBegan(touches, with: event)
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("UIViewController: touchesBegan")
        next?.touchesBegan(touches, with: event)
    }

}

