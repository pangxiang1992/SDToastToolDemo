
import UIKit

extension UIView {
    // XIB绑定的名字必须和类名字一样
    class func loadFromXIB() -> UIView {
        
        let classNameCopy = NSStringFromClass(self.classForCoder())
        let name = classNameCopy.components(separatedBy: ".").last
        
        let nibView = Bundle.main.loadNibNamed(name!, owner: self, options: nil)!.first
        return nibView as! UIView
    }
    
    var sdWidth: CGFloat {
        get{
            return self.frame.size.width
        }
        set{
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }
    var sdHeight: CGFloat {
        get{
            return self.frame.size.height
        }
        set{
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    var sdX: CGFloat {
        get{
            return self.frame.origin.x
        }
        set{
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    var sdY: CGFloat {
        get{
            return self.frame.origin.y
        }
        set{
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    var sdSize: CGSize {
        get{
            return self.frame.size
        }
        set{
            var frame = self.frame
            frame.size = newValue
            self.frame = frame
        }
    }
    
}
