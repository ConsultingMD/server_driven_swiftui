


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
    
    var cornerRadius: CGFloat {
        object["corner_radius"] as? CGFloat ?? 0
    }
    
    var frame: [String: Any]? {
        object["frame"] as? [String: Any]
    }
    
    var border: [String: Any]? {
        object["border"] as? [String: Any]
    }
    
    var borderColor: [String: Any]? {
        border?["color"] as? [String: Any]
    }
    
    var borderWidth: CGFloat {
        border?["width"] as? CGFloat ?? 0
    }
    
    var view: some View {
        
        let view: any View
        
        if type == "stack" {
            view = StackSD(object)
        }
        
//        if type == "grid" {
//            return SDGrid(object)
//        }
        
        else if type == "async_image" {
            view = SDAsyncImage(object)
        }
        
        else if type == "image" {
            view = SDImage(object)
        }
        
        else if type == "link" {
            view = SDLink(object)
        }
        
        else if type == "text" {
            view = SDText(object)
        }
        
        else if type == "divider" {
            view = SDDivider(object)
        }
        
        else {
            view = Text("Unknown __typename")
        }

        if let frame = frame {
            return SDFrame(frame, view)
        }
        
        return view
    }
    
    var viewFramed: some View {
        if let frame = frame {
            return SDFrame(frame, view)
        }
        return view
    }
    
    public var body: some View {
        viewFramed
            .foregroundColor(SDColor(color).color)
            .padding(SDPadding(padding).insets)
            .border(SDColor(borderColor).color, width: borderWidth)
            .cornerRadius(cornerRadius)
            .overlay(RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(SDColor(borderColor).color, lineWidth: borderWidth)
            )
    }
}


