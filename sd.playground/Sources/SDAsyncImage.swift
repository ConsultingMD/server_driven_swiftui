


import SwiftUI
import Foundation


struct SDAsyncImage: View {
    
    let object: [String: Any]
    
    init(_ object: [String: Any]) {
        self.object = object
    }
    
    var type: String {
        object["__typename"] as! String
    }
    
    var stringUrl: String {
        object["url"] as! String
    }
    
    var url: URL? {
        URL(string: stringUrl)
    }
    
    var body: some View {
        AsyncImage(url: url)
            .scaledToFit()
            .frame(width: 100, height: 100, alignment: .center)
            .cornerRadius(50)
    }
}

