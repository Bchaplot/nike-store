//
//  Detail_VC.swift
//  ShoeStore
//
//  Created by FCP27 on 02/07/24.
//


import UIKit

class Detail_VC: UIViewController {
    
    // Properties to hold product details
    var productImage: UIImage?
    var productName: String?
    var productCategory: String?
    var productPrice: String?
    var productImage2: UIImage?
    
    // Outlets in Detail_VC
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productCategoryLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set received data to UI elements
        productImageView.image = productImage
        productNameLabel.text = productName
        productCategoryLabel.text = productCategory
        productPriceLabel.text = productPrice
        productImageView2.image = productImage2
        
        setupNavigationBar()
    }
    
         func setupNavigationBar() {
        // Create search button in navigation bar
        let searchButton = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchButtonTapped))
        navigationItem.rightBarButtonItem = searchButton
    }
    
       @objc func searchButtonTapped() {
        // Handle search button tap here
        // You can implement your search functionality or show an alert for now
        showAlert(title: "Search", message: "Search functionality will be implemented here.")
    }
    
    
    @IBAction func AddToBag(_ sender: UIButton) {
        showAlert(title: "Add to Bag", message: "Added")
    }
    @IBAction func addToCart(_ sender: UIButton) {
        if let name = productName, let price = productPrice {
            Cart.shared.addItem(name: name, price: price)
            showAlert(title: "Add to Cart", message: "\(name) is added to your cart.")
        }
    }
    
  
    @IBAction func addToFav(_ sender: UIButton) {
        showAlert(title: "Add to Favourite", message: "🥶")
    }
    
    @IBAction func back(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}
