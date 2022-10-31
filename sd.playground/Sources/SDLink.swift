


import SwiftUI
import Foundation


struct SDLink: View {
    
    let object: [String: Any]
    
    init(_ object: [String: Any]) {
        self.object = object
    }
    var text: String {
        object["text"] as! String
    }
    
    var url: String {
        object["url"] as! String
    }
    
    var body: some View {
        Link(text, destination: URL(string: url)!)
    }
}

