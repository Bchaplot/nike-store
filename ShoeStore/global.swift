//
//  global.swift
//  ShoeStore
//
//  Created by FCP27 on 25/06/24.
//

import Foundation
import UIKit
struct studentdata{
    var id: Int?
    var name: String?
    init(id: Int? = nil, name: String? = nil) {
        self.id = id
        self.name = name
    }
}

extension Detail_VC: UICollectionViewDelegate{
    func collectionview(_collectionview: UICollectionView, didSelectitmAt indexPath: IndexPath){
        
    }
}
