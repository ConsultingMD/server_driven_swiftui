


import SwiftUI
import Foundation


struct SDPadding {
    
    let object: [String: CGFloat]?
    
    init(_ object: [String: CGFloat]?) {
        self.object = object
    }
    
    var all: CGFloat? {
        object?["all"] as? CGFloat
    }

    var top: CGFloat {
        object?["top"] as? CGFloat ?? 0
    }
    
    var leading: CGFloat {
        object?["leading"] as? CGFloat ?? 0
    }
    
    var bottom: CGFloat {
        object?["bottom"] as? CGFloat ?? 0
    }
    
    var trailing: CGFloat {
        object?["trailing"] as? CGFloat ?? 0
    }
    
    var insets: EdgeInsets {
        if let all = all {
            return EdgeInsets(top: all, leading: all, bottom: all, trailing: all)
        }
        return EdgeInsets(top: top, leading: leading, bottom: bottom, trailing: trailing)
    }
}

