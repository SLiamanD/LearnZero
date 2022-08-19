import UIKit

class ViewController: UIViewController {
    
    
    // MARK: - declaration
    var view1:UIView!
    var view2:UIView!
    var imageView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func initViews(){
        // MARK: - inicialization
        self.view1 = UIView()
        self.view2 = UIView()
        
        //  prepare auto layout
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        
        // set background color
        view1.backgroundColor = UIColor.lightGray
        view2.backgroundColor = UIColor.darkGray
        
        //  add to super view
        self.view.addSubview(view1)
        self.view.addSubview(view2)
        
    }
    
}
