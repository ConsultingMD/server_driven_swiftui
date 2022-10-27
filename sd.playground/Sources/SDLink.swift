


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
    
    var padding: [String : Any]? {
        object["padding"] as? [String : String]
    }

    var edgeInsets: EdgeInsets {
        return EdgeInsets(top: padding?["top"] as? CGFloat ?? 0, leading: padding?["leading"] as? CGFloat ?? 0, bottom: padding?["bottom"] as? CGFloat ?? 0, trailing: padding?["trailing"] as? CGFloat ?? 0)
    }
    
    var body: some View {
        Link(text, destination: url)
            .padding(edgeInsets)
    }
}

