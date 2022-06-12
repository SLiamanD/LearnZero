

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
//    @IBAction func toGreenView(_ sender: UIButton) {
//        let newVC = storyboard?.instantiateViewController(withIdentifier: "GreenViewController") as! GreenViewController
//        let text = textField.text
//        newVC.textFromVC = text
//        navigationController?.pushViewController(newVC, animated: true)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGreen" {
            let text = textField.text
            let newVC = segue.destination as! GreenViewController
            newVC.textFromVC = text
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {


        
        
        // Navigation Bar:
//        navigationController?.navigationBar.barTintColor = UIColor.gray

        // back button chose color
        
        
        self.navigationController?.navigationBar.tintColor = UIColor.black

    }
    

}
