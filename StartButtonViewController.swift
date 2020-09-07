//
//  ViewController.swift
//  SwiftButton
//
//  Created by Dmitry Shapkin on 07.09.2020.
//  Copyright © 2020 ShapkinDev. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
	
	var startButton: UIButton = {
		var button = UIButton()
		button.setTitle("Start", for: .normal)
		button.backgroundColor = .blue
		button.addTarget(self,
						 action: #selector(startButtonClicked),
						 for: .touchUpInside)
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()

	override func viewDidLoad() {
		super.viewDidLoad()
		setupLayout()
	}
	
	func setupLayout() {
		self.view.addSubview(startButton)
		NSLayoutConstraint.activate([
			startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
		])
	}
	
	@objc func startButtonClicked() {
		print("startButtonClicked")
		let newViewController = NewViewController()
		self.navigationController?.pushViewController(newViewController,
													  animated: true)
	}
}
