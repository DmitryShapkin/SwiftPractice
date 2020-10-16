//
//  GameScene.swift
//  SpriteKitEndlessBack
//
//  Created by Dmitry Shapkin on 16.10.2020.
//  Copyright © 2020 ShapkinDev. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
	
	var ground = SKSpriteNode()
    
    override func didMove(to view: SKView) {
		
		self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
		
		createGrounds()
    }

    override func update(_ currentTime: TimeInterval) {
		moveGrounds()
    }
	
	func createGrounds() {
		
		for i in 0...3 {
			
			let ground = SKSpriteNode(imageNamed: "ground")
			ground.name = "Ground"
			ground.size = CGSize(width: (self.scene?.size.width)!, height: 250)
			ground.anchorPoint = CGPoint(x: 0.5, y: 0.5)
			ground.position = CGPoint(x: CGFloat(i) * ground.size.width, y: -(self.frame.size.height / 2))
			
			self.addChild(ground)
		}
	}
	
	func moveGrounds() {
		
		self.enumerateChildNodes(withName: "Ground") { (node, error) in
			
			node.position.x -= 2
			
			if node.position.x < -((self.scene?.size.width)!) {
				
				node.position.x += (self.scene?.size.width)! * 3
			}
		}
	}
}
