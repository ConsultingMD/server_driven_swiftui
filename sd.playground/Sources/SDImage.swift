


import SwiftUI
import Foundation


struct SDImage: View {
    
    let object: [String: Any]
    
    init(_ object: [String: Any]) {
        self.object = object
    }
    
    var type: String {
        object["__typename"] as! String
    }
    
    var name: String {
        object["name"] as! String
    }
    
    var padding: [String : CGFloat]? {
        object["padding"] as? [String : CGFloat]
    }

    var color: [String: CGFloat]? {
        object["color"] as? [String : CGFloat]
    }
    
    var body: some View {
        Image(uiImage: #imageLiteral(resourceName: name))
            .resizable()
            .scaledToFit()
            .frame(width: 28, height: 35)
    }
}


