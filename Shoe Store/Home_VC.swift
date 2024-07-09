//
//  Home_VC.swift
//  Shoe Store
//
//  Created by Apple 17 on 26/06/24.
//

import UIKit

class Home_VC: UIViewController {
    
    
    
    
    
   
    
    @IBOutlet weak var Collectionview: UICollectionView!
    @IBAction func Menu(_ sender: Any) {
    }
    
    @IBAction func Search(_ sender: Any) {
    }
    
    @IBOutlet weak var GoodMorning: UILabel!
    @IBOutlet weak var TopPicks: UILabel!
    @IBOutlet weak var RecommendedProducts: UILabel!

    @IBOutlet weak var Menscollection: UILabel!
    
    @IBOutlet weak var Collectionview2: UICollectionView!
    
    
    @IBOutlet weak var homelabel: UILabel!
    let postdata: [[String: Any]] = [
        [
            "Image" : "nike1" ,
            "Productname": "Nike Air Force 1'07",
            "Productcategory" : "Men's Shoes",
            "ProductPrice" : "MRP : Rs 7495"
        ],
        [
            "Image" : "nike2",
            "Productname" : "Nike Pegasus 41",
            "Productcategory" : "Men's road Running Shoes",
            "ProductPrice" : "MRP : Rs 11895"
        ],
        [
            "Image": "nike3",
            "Productname" : "Nike Air Zoom Spiridon Cage 2",
            "Productcategory" : "Men's Shoe",
            "ProductPrice" : "MRP : Rs 15995",
        ],
        [
            "Image": "nike4",
            "Productname" : "Nike Alphafly 3",
            "Productcategory" : "Men's Shoe",
            "ProductPrice" : "MRP : Rs 22795",
            
        ],
        [
            "Image": "nike5",
            "Productname" : "Nike Flyknit Bloom",
            "Productcategory" : "Men's Shoe",
            "ProductPrice" : "MRP : Rs 13995",
        ],
        [
            "Image": "nike6",
            "Productname" : "Nike Attack",
            "Productcategory" : "Men's Shoe",
            "ProductPrice" : "MRP : Rs 12795",
        ],
        [
            "Image": "nike7",
            "Productname" : "Nike P-6000",
            "Productcategory" : "Men's Shoe",
            "ProductPrice" : "MRP : Rs 7995",
        ],
        [
            "Image": "nike8",
            "Productname" : "Nike Cortez Leather",
            "Productcategory" : "Men's Shoe",
            "ProductPrice" : "MRP : Rs 8495",
        ],
        [
            "Image": "nike9",
            "Productname" : "Nike Lunar Roam",
            "Productcategory" : "Men's Shoe",
            "ProductPrice" : "MRP : Rs 13995",
        ],
        [
            "Image": "nike10",
            "Productname" : "Air Jordan 1 Low",
            "Productcategory" : "Men's Shoe",
            "ProductPrice" : "MRP : Rs 8995",
        ],
    ]
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        Collectionview.register(UINib(nibName:"CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        Collectionview2.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        
    }
    
    @IBAction func Cart(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Addtocart_VC") as! Addtocart_VC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension Home_VC : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)as! CollectionViewCell
        if (collectionView == self.Collectionview){
           
            let post = self.postdata[indexPath.row]
            cell.Image.image = UIImage(named: post["Image"] as? String ?? "")
            cell.Productname.text = post["Productname"] as? String
            cell.Productcategory.text = post["Productcategory"] as? String
            cell.ProductPrice.text = post["ProductPrice"] as? String
        }
        else
        {
            
            let post = self.postdata[indexPath.row]
            cell.Image.image = UIImage(named: post["Image"] as? String ?? "")
            cell.Productname.text = post["Productname"] as? String
            cell.Productcategory.text = post["Productcategory"] as? String
            cell.ProductPrice.text = post["ProductPrice"] as? String
            
        }
        
        return cell
    }
    
    func collectionView(_ _collectionView:UICollectionView,numberOfItemsInSection section: Int) -> Int{
        return postdata.count
    }
}
extension Home_VC: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets (top: 1.0, left: 8.0, bottom: 1.0, right: 8.0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        _ = collectionViewLayout as! UICollectionViewFlowLayout
        let widthPerItem = collectionView.frame.width/2
        return CGSize(width: widthPerItem, height: 250)
    }
    
}



