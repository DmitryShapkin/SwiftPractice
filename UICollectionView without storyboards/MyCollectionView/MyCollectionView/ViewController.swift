//
//  ViewController.swift
//  MyCollectionView
//
//  Created by Dmitry Shapkin on 25/03/2019.
//  Copyright © 2019 Dmitry Shapkin. All rights reserved.
//


import UIKit


class ViewController: UIViewController
{
    fileprivate lazy var collectionView: UICollectionView = {
        
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.itemSize = CGSize(width: 100, height: 100)
        collectionViewLayout.minimumInteritemSpacing = 10
        
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: collectionViewLayout)
        collectionView.backgroundColor = .yellow
        collectionView.dataSource = self
        collectionView.register(BirdCollectionViewCell.self, forCellWithReuseIdentifier: "BirdCollectionViewCell")
        
        return collectionView
    }()
    
    fileprivate let dataSource: [String] = ["Воробей",
                                            "Ворона",
                                            "Петух",
                                            "Пингвин",
                                            "Пингвин",
                                            "Пингвин"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        
        self.view.addSubview(collectionView)
    }
    
    open override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        collectionView.frame = view.frame
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let birdName = dataSource[indexPath.item]
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BirdCollectionViewCell", for: indexPath) as? BirdCollectionViewCell {
            
            cell.titleLabel.text = birdName
            
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    
}
