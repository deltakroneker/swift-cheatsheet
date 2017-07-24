//.........................................................................................................
//
//  Problem:    App crashes when trying to access URL that has some special characters when getting
//              data from RESTfull services, or any other situation.
//
//  Solution:   Add Extension to String class and encode URLs to be error-safe, and if you want there is 
//              method for decoding.
//
// .........................................................................................................

// Add this extension anywhere in your project (or create Extensions.swift file just for extensions)

extension String
{
    func encodeUrl() -> String
    {
        return self.addingPercentEncoding( withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!
    }
    func decodeUrl() -> String
    {
        return self.removingPercentEncoding!
    }
    
}


// Call this on any string you want to be safe from special characters that may cause problems

doSomething(string: myString.encodeUrl())


