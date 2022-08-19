import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    // MARK: outlets
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var companyPickerView: UIPickerView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    // MARK: UIPickerViewDataSource methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        self.companies.keys.count
    }
    
    //MARK: UIPickerViewDelegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array(self.companies.keys)[row]
    }
    
    // MARK: private properties
    
    private let companies: [String:String] = ["Apple":"AAPL", "Microsoft":"MSFT", "Google":"GOOG", "Amazon":"AMZN", "Facebook":"FB"]
    
    //MARK: view lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.isHidden = true
        self.companyNameLabel.text = "Tinkoff"
        self.companyPickerView.dataSource = self
        self.companyPickerView.delegate = self
    }

    
}
