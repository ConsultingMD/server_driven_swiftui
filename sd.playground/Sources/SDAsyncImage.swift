


import SwiftUI
import Foundation


struct SDAsyncImage: View {
    
    let object: [String: Any]
    
    init(_ object: [String: Any]) {
        self.object = object
    }
    
    var url: String {
        object["url"] as! String
    }
    
    var body: some View {
        AsyncImage(url: URL(string: url))
    }
}

