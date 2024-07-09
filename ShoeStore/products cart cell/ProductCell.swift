//
//  ProductCell.swift
//  ShoeStore
//
//  Created by FCP27 on 13/06/24.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    
    
    @IBOutlet weak var productTitle: UILabel!
    
    @IBOutlet weak var productCategory: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
