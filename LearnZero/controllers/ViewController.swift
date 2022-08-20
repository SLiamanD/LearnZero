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
        self.activityIndicator.startAnimating()
        
        let selectedSymbol = Array(self.companies.values)[row]
        self.requestQuote(for: selectedSymbol)
        
        
        return Array(self.companies.keys)[row]
    }
    
    // MARK: private properties
    
    private let companies: [String:String] = ["Apple":"AAPL", "Microsoft":"MSFT", "Google":"GOOG", "Amazon":"AMZN", "Facebook":"FB"]
    
    //MARK: view lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.companyNameLabel.text = "Tinkoff"
        self.companyPickerView.dataSource = self
        self.companyPickerView.delegate = self
        self.activityIndicator.hidesWhenStopped = true
        activityIndicator.isHidden = false
        self.activityIndicator.startAnimating()
        self.requestQuote(for: "APPL")
        self.requestQuoteUpdate()
    }
    
    //MARK: pravate methods
    
    
    private func requestQuote(for symbol: String) {
        let url = URL(string: "https://cloud.iexapis.com/stable/stock/\(symbol)/quote?token=pk_aebcb09cb11e4309ad7cb286f55f57ac")!
//    https://cloud.iexapis.com/stable/stock/\(symbol)/quote?token=YOUR_TOKEN_HERE

        let dataTask = URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                error == nil,
                (response as? HTTPURLResponse)?.statusCode == 200,
                let data = data
            else {
            print("! Network error")
            return
        }
            self.parceQuote(data:data)
            print(String(data:data, encoding: .utf8))
            
        }
        
        dataTask.resume()
    
    }
    
    
    
    private func parceQuote(data:Data) {
        do {
            let jsonObject = try JSONSerialization.jsonObject(with: data)
            guard
                let json = jsonObject as? [String:Any],
                let companyName = json["companyName"] as? String


            else {
                print (" ! invalid JSON format")
                return
            }
            print( "Company name is '\(companyName)' ")

           
        } catch {
            print ("! Json parsing error:" + error.localizedDescription)
        }
    
    }
    
    private func requestQuoteUpdate() {
        self.activityIndicator.startAnimating()
        
        let selectedRow = self.companyPickerView.selectedRow(inComponent: 0)
        let selectedSymbol = Array(self.companies.values)[selectedRow]
        self.requestQuote(for: selectedSymbol)
    }
    
    
    
    private func displayStockInfo(companyName: String) {
        self.activityIndicator.stopAnimating()
        self.companyNameLabel.text = companyName
    }
    
}
