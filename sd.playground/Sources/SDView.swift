


import SwiftUI
import Foundation


public struct SDView: View {
    
    let object: [String: Any]
    
    public init(_ object: [String: Any]) {
        self.object = object
    }
    
    var type: String {
        object["__typename"] as! String
    }
    
    var padding: [String : Any]? {
        object["padding"] as? [String : String]
    }

    var edgeInsets: EdgeInsets {
        return EdgeInsets(top: padding?["top"] as? CGFloat ?? 0, leading: padding?["leading"] as? CGFloat ?? 0, bottom: padding?["bottom"] as? CGFloat ?? 0, trailing: padding?["trailing"] as? CGFloat ?? 0)
    }
    
    var view: some View {
        
        if type == "stack" {
            return StackSD(object)
        }
        
//        if type == "grid" {
//            return SDGrid(object)
//        }
        
        if type == "link" {
            return SDLink(object)
        }
        
        if type == "text" {
            return SDText(object)
        }
        
        if type == "divider" {
            return SDDivider(object)
        }
        
        return Text("Unknown __typename")
    }
    
    public var body: some View {
        view.padding(edgeInsets)
    }
}


