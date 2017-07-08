//.........................................................................................................
//
//  Problem:    Keyboard doesn't close when you tap around the screen.
//  
//  Solution:   Add new Extension to your UIViewController and call this method in any
//              UIViewController where you want it implemented.Add
//
//  Notes:      This may cause problem in situation where you have SWReavealViewController and UITableview
//              as it can mess with the Tap Recognizer. 
// .........................................................................................................

// Add this extension anywhere in your project (or create Extensions.swift file just for extensions)

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:  #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}


// Call this in viewDidLoad() in any UIViewController where you want this implemented

    hideKeyboardWhenTappedAround()

