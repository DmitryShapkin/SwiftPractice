//
//  BirdCollectionViewCell.swift
//  MyCollectionView
//
//  Created by Dmitry Shapkin on 25/03/2019.
//  Copyright © 2019 Dmitry Shapkin. All rights reserved.
//

import UIKit

class BirdCollectionViewCell: UICollectionViewCell {
    
    var coverImageView = UIImageView()
    var titleLabel = UILabel()
    var subtitleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        coverImageView.backgroundColor = UIColor.blue
        
        addSubview(coverImageView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let coverImageViewX = (frame.width - 50) / 2
        coverImageView.frame = CGRect(x: coverImageViewX, y: 10, width: 50, height: 50)
        
        let titleLabelY = coverImageView.frame.maxY + 5
        let titleLabelWidth = frame.width - 20
        titleLabel.frame = CGRect(x: 10, y: titleLabelY, width: titleLabelWidth, height: 10)
    }
}
