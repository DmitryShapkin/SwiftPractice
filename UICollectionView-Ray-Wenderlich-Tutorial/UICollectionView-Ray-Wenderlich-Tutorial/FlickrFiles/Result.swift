//
//  Result.swift
//  UICollectionView-Ray-Wenderlich-Tutorial
//
//  Created by Dmitry Shapkin on 23/03/2019.
//  Copyright © 2019 Dmitry Shapkin. All rights reserved.
//

import Foundation

enum Result<ResultType> {
    case results(ResultType)
    case error(Error)
}

