


import SwiftUI
import Foundation


struct SDFrame: View {
    
    let object: [String: Any]
    let view: any View

    init(_ object: [String: Any], _ view: any View) {
        self.object = object
        self.view = view
    }
    
    var width: CGFloat {
        object["width"] as! CGFloat
    }
    
    var height: CGFloat {
        object["height"] as! CGFloat
    }
    
    var body: some View {
        view
            .frame(width: width, height: height)
    }
}

