

import UIKit

class world: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    static func showAlert(controller : UIViewController,title: String ,messages: String){
            
            let alert = UIAlertController(title: title, message: messages , preferredStyle:.alert)
            let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(cancelAction)
            controller.present(alert, animated:true,completion: nil)
        }

}
