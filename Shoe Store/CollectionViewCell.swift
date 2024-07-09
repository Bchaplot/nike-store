//
//  CollectionViewCell.swift
//  Shoe Store
//
//  Created by Apple 17 on 15/06/24.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var Productname: UILabel!
    @IBOutlet weak var Productcategory: UILabel!
    @IBOutlet weak var ProductPrice: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
