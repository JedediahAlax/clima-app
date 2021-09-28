// Clima weather app created as part of an online iOS boot camp.


import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    var weatherManager = WeatherManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTextField.delegate = self
    }
    
   // needed get text when search button is pressed
    @IBAction func searchButtonPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
    }
    
    // needed to get text if Go button is pressed on keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        return true
    }
    
    // if let to unwrap optonal city name string and then clears text field so new city name can be typed in
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let city = searchTextField.text {
            weatherManager.getCityName(cityName: city)
        }
    searchTextField.text = ""
    }
    
    // this is to dismiss the keyboard after editing. checking for empty string because we'll need that to get the weather data so it cant be empty/nil.
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if (textField.text != "") {
            return true
        } else {
            textField.placeholder = "Please type a name of a city"
            return false
        }
    }
    
    
    
    
    
    
    
    
    
}

