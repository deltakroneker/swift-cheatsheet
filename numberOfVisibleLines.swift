//.........................................................................................................
//
//  Problem:    How to get number of visible lines that your UILabel is presenting, so that you can 
//              dynamically change height based on that number.
//
//  Solution:   Add new Extension to your UILabel and call this property on your labels
//
// .........................................................................................................

// Add this extension anywhere in your project (or create Extensions.swift file just for extensions)

extension UILabel {
    var numberOfVisibleLines: Int {
        let textSize = CGSize(width: CGFloat(self.frame.size.width), height: CGFloat(MAXFLOAT))
        let rHeight: Int = lroundf(Float(self.sizeThatFits(textSize).height))
        let charSize: Int = lroundf(Float(self.font.pointSize))
        return rHeight / charSize
    }
}

// Acces the number of lines by calling this properyu on any label you want

myLabel.numberOfVisibleLines
