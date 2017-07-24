//.........................................................................................................
//
//  Problem:    How to return to previous VC that pushed current VC on the nav. con. stack but without
//              pressing back button on the nav controller.
//
//  Solution:   Add new Extension to your UIViewController and call this method in any
//              UIViewController where you want it implemented
//
// .........................................................................................................

// Add this extension anywhere in your project (or create Extensions.swift file just for extensions)

extension UIViewController {
    func performSegueToReturnBack()  {
        if let nav = self.navigationController {
            nav.popViewController(animated: false)
        } else {
            self.dismiss(animated: false, completion: nil)
        }
    }
}


// Call this method on any trigger point you want

self.performSegueToReturnBack()
