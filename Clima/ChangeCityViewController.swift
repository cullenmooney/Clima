import UIKit


//Write the protocol declaration here:
// think of a protocol as a contract - in order to use protocol, must use the method below!
protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
}


class ChangeCityViewController: UIViewController {
    
    //Declare the delegate variable here:
    //Can be filled or not filled - hence the optional
    var delegate : ChangeCityDelegate?
    
    //This is the pre-linked IBOutlets to the text field:
    @IBOutlet weak var changeCityTextField: UITextField!

    
    //This is the IBAction that gets called when the user taps on the "Get Weather" button:
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        
        
        //1 Get the city name the user entered in the text field
        let cityName = changeCityTextField.text!
        
        //2 If we have a delegate set, call the method userEnteredANewCityName
        //Optional chaining - checks to see if that delegate has a value or is nil
        //If it contains a value...go ahead and execute function
        //If it doesn't contain a value...go ahead and ignore this entirely
        delegate?.userEnteredANewCityName(city: cityName)
        
        //3 dismiss the Change City View Controller to go back to the WeatherViewController
        self.dismiss(animated: true, completion: nil)
        
    }
    
    

    //This is the IBAction that gets called when the user taps the back button. It dismisses the ChangeCityViewController.
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
