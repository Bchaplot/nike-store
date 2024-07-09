import UIKit

class CategoryVC: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let postdata: [[String: Any]] = [
               [
                   "productimage": "nike32",
                   "productname": "Tatum 2 PF",
                   "productcategory": "Basketball shoes",
                   "productprice": "MRP:5000",
                   "productImage2":"nike32"
                   
               ],
               [
                   "productimage": "nike33",
                   "productname": "Tatum 1 PF",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP: 8000",
                   "productImage2":"nike33"
               ],
               [
                   "productimage": "nike44",
                   "productname": "KD17 NRG EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:4000",
                   "productImage2":"nike44"
               ],
               [
                   "productimage": "nike3",
                   "productname": "KD17 NRG ",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:5000",
                   "productImage2":"nike3"
               ],
               [
                   "productimage": "nike105",
                   "productname": "KD VR",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:8000",
                   "productImage2":"nike105"
               ],
               [
                   "productimage": "nike30",
                   "productname": "KD17 NRG EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:4000",
                   "productImage2":"nike30"
               ],
               [
                   "productimage": "nike35",
                   "productname": "KD17 NRG EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:4000",
                   "productImage2":"nike35"
               ],
               [
                   "productimage": "nike36",
                   "productname": "KD17 NRG EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:4000",
                   "productImage2":"nike36"
               ],
               [
                   "productimage": "nike101",
                   "productname": "KD17 NRG EP",
                   "productcategory": "Running shoes",
                   "productprice": "MRP:6000",
                   "productImage2":"nike101"
               ],
               [
                   "productimage": "nike100",
                   "productname": "KD15 NRG EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:4500",
                   "productImage2":"nike100"
               ],
               [
                   "productimage": "nike103",
                   "productname": "KD101 NRG EP",
                   "productcategory": "Basketball shoes",
                   "productprice": "MRP:5000",
                   "productImage2":"nike103"
               ],
               [
                   "productimage": "nike104",
                   "productname": "KD 17 EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:8000",
                   "productImage2":"nike104"
               ],
               [
                   "productimage": "nike106",
                   "productname": "KD 18 EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:8500",
                   "productImage2":"nike106"
               ],
               [
                   "productimage": "nike107",
                   "productname": "KD EP",
                   "productcategory": "Running shoes",
                   "productprice": "MRP:9000",
                   "productImage2":"nike107"
               ],
               [
                   "productimage": "nike108",
                   "productname": "KD 17 EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:1000",
                   "productImage2":"nike108"
               ],
               [
                   "productimage": "nike109",
                   "productname": "KD 17 EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:8500",
                   "productImage2":"nike109",
               ],
               
               
               [
                   "productimage": "nike200",
                   "productname": "KD 20 EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:1200",
                   "productImage2":"nike200"
               ],
               [
                   "productimage": "nike201",
                   "productname": "KD 19 EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:9500",
                   "productImage2":"nike201",
               ],
               [
                   "productimage": "nike202",
                   "productname": "KD 20 EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:1000",
                   "productImage2":"nike202",
               ],
               [
                   "productimage": "nike203",
                   "productname": "KD 21 EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:1100",
                   "productImage2":"nike203",
               ],
               [
                   "productimage": "nike204",
                   "productname": "KD 22 EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:1000",
                   "productImage2":"nike204",
               ],
               [
                   "productimage": "nike205",
                   "productname": "KD 23 EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:2000",
                   "productImage2":"nike205",
               ],
               [
                   "productimage": "nike206",
                   "productname": "KD 24 EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:2100",
                   "productImage2":"nike206",
               ],
               
               [
                   "productimage": "nike208",
                   "productname": "KD 26 EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:21000",
                   "productImage2":"nike208",
               ],
               [
                   "productimage": "nike209",
                   "productname": "KD 27 EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:2200",
                   "productImage2":"nike209",
               ],
               
               [
                   "productimage": "nike210",
                   "productname": "KD 28 EP",
                   "productcategory": "Sports shoes",
                   "productprice": "MRP:20000",
                   "productImage2":"nike210",
               ],
           ]
    
    var postdataFiltered: [[String: Any]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize postdataFiltered with all data initially
        postdataFiltered = postdata
        
        // Registering the nib for the UICollectionViewCell
        collectionView.register(UINib(nibName: "ProductCell", bundle: nil), forCellWithReuseIdentifier: "ProductCell")
    }
    
}

extension CategoryVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return postdataFiltered.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
        let post = postdataFiltered[indexPath.row]
        
        // Configure cell with data
                cell.productImage.image = UIImage(named: post["productimage"] as! String)
                cell.productTitle.text = post["productname"] as? String
                cell.productCategory.text = post["productcategory"] as? String
                cell.productPrice.text = post["productprice"] as? String
                cell.productImage.image = UIImage(named:  post["productImage2"] as! String )
                
                return cell
            }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // Retrieve selected product data
        let product = postdataFiltered[indexPath.row]
        guard
            let imageName = product["productimage"] as? String,
            let imageName2 = product["productImage2"] as? String,
            let name = product["productname"] as? String,
            let category = product["productcategory"] as? String,
            let price = product["productprice"] as? String,
            let image = UIImage(named: imageName),
            let image2 = UIImage(named: imageName2)
            else {
                return
        }
        
        let storyboard = UIStoryboard(name: "Category", bundle: nil)
        if let detailVC = storyboard.instantiateViewController(withIdentifier: "Detail_VC") as? Detail_VC {
            // Assign data to Detail_VC properties
            detailVC.productImage = image
            detailVC.productName = name
            detailVC.productCategory = category
            detailVC.productPrice = price
            detailVC.productImage2 = image2
            // Push Detail_VC to navigation stack
            navigationController?.pushViewController(detailVC, animated: true)
        }
    }
    
}

extension CategoryVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1.0, left: 8.0, bottom: 1.0, right: 8.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        let widthPerItem = collectionView.frame.width / 2 - layout.minimumInteritemSpacing - 16 // Adjusted the width calculation to consider both spacing and content insets
        return CGSize(width: widthPerItem, height: 250)
    }
    
}

extension CategoryVC: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // Filter your data based on the search text
        if searchText.isEmpty {
            // If the search text is empty, show all data
            postdataFiltered = postdata
        } else {
            // Filter the data based on the search text
            postdataFiltered = postdata.filter { ($0["productname"] as? String)?.lowercased().contains(searchText.lowercased()) ?? false }
        }
        collectionView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        // When the cancel button is clicked, show all data
        postdataFiltered = postdata
        collectionView.reloadData()
        searchBar.resignFirstResponder()
    }
    
}
