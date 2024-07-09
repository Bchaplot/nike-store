//
//  Addtocart.swift
//  Shoe Store
//
//  Created by Apple 17 on 28/06/24.
//

import UIKit

class Addtocart: UITableViewCell {

    @IBOutlet weak var ProductName: UILabel!
    @IBOutlet weak var ProductCategory: UILabel!
    
    @IBOutlet weak var Size: UILabel!
    @IBOutlet weak var Incl: UILabel!
    @IBOutlet weak var Duties: UILabel!
    @IBOutlet weak var MRP: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
