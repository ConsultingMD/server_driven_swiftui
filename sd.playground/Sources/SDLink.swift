


import SwiftUI
import Foundation


struct SDLink: View {
    
    let object: [String: Any]
    
    init(_ object: [String: Any]) {
        self.object = object
    }
    
    var type: String {
        object["__typename"] as! String
    }
    
    var text: String {
        object["text"] as! String
    }
    
    var destination: String {
        object["url"] as! String
    }
    
    var url: URL {
        URL(string: destination)!
    }
    
    var padding: [String : CGFloat]? {
        object["padding"] as? [String : CGFloat]
    }

    var color: [String: CGFloat]? {
        object["color"] as? [String : CGFloat]
    }
    
    var body: some View {
        Link(text, destination: url)
    }
}

