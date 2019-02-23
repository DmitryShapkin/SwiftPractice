//
//  SecondViewController.swift
//  CallbackClosureApp
//
//  Created by Dmitry Shapkin on 23/02/2019.
//  Copyright © 2019 Dmitry Shapkin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var completion: ((String) -> ())?
    
    @IBAction func backPressed(sender: UIButton) {
        getDataAndBack()
    }
    
    private func getDataAndBack() {
        guard let text = textField.text, text != "" else {
            completion?("no data")
            navigationController?.popViewController(animated: true)
            return
        }
        completion?(text)
        navigationController?.popViewController(animated: true)
    }
}
