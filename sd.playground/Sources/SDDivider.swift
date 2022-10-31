


import SwiftUI
import Foundation


struct SDDivider: View {
    
    let object: [String: Any]
    
    init(_ object: [String: Any]) {
        self.object = object
    }
    
    var type: String {
        object["__typename"] as! String
    }
    
    var padding: [String : CGFloat]? {
        object["padding"] as? [String : CGFloat]
    }

    var color: [String: CGFloat]? {
        object["color"] as? [String : CGFloat]
    }
    
    var body: some View {
        Divider()
    }
}


