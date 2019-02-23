//
//  ViewController.swift
//  CallbackClosureApp
//
//  Created by Dmitry Shapkin on 23/02/2019.
//  Copyright © 2019 Dmitry Shapkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if case let controller as SecondViewController = segue.destination, segue.identifier == "segue" {
            controller.completion = { [unowned self] text in
                self.label.text = text
            }
        }
    }
}
