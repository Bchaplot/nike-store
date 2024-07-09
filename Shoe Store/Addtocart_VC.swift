//
//  Addtocart_VC.swift
//  Shoe Store
//
//  Created by Apple 17 on 28/06/24.
//

import UIKit

class Addtocart_VC: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    
    @IBOutlet weak var Estimatedtotal: UILabel!
    @IBOutlet weak var Subtotal: UILabel!
    @IBOutlet weak var Shipping: UILabel!
    @IBOutlet weak var ShippingRs: UILabel!
    @IBOutlet weak var TotalRs: UILabel!
    @IBOutlet weak var EstimatedRs: UILabel!
    
    let postdata: [[String: Any]] = [
        [
            "Image" : "nike1" ,
            "Productname": "Nike Air Force 1'07",
            "Productcategory" : "Men's Shoes",
            "ProductPrice" : "MRP : Rs 7495"
        ]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        self.TableView.register(UINib(nibName: "Addtocart", bundle: nil), forCellReuseIdentifier: "Addtocart")
    }

}
