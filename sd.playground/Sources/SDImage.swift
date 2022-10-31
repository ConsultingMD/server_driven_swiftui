


import SwiftUI
import Foundation


struct SDImage: View {
    
    let object: [String: Any]
    
    init(_ object: [String: Any]) {
        self.object = object
    }
    
    var name: String {
        object["name"] as! String
    }
    
    var body: some View {
        Image(uiImage: #imageLiteral(resourceName: name))
            .resizable()
            .scaledToFit()
    }
}


