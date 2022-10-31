


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
    
    var padding: [String : CGFloat]? {
        object["padding"] as? [String : CGFloat]
    }

    var color: [String: Any]? {
        object["color"] as? [String : CGFloat]
    }
    
    var border: [String: Any]? {
        object["border"] as? [String: Any]
    }
    
    var cornerRadius: CGFloat {
        object["corner_radius"] as? CGFloat ?? 0
    }
    
    var borderColor: [String: Any]? {
        border?["color"] as? [String: Any]
    }
    
    var borderWidth: CGFloat {
        border?["width"] as? CGFloat ?? 0
    }
    
    var view: some View {
        if type == "stack" {
            return StackSD(object)
        }
        
//        if type == "grid" {
//            return SDGrid(object)
//        }
        
        if type == "async_image" {
            return SDAsyncImage(object)
        }
        
        if type == "image" {
            return SDImage(object)
        }
        
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
        view
            .foregroundColor(SDColor(color).color)
            .padding(SDPadding(padding).insets)
            .border(SDColor(borderColor).color, width: borderWidth)
            .cornerRadius(cornerRadius)
            .overlay(RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(SDColor(borderColor).color, lineWidth: borderWidth)
            )
    }
}


