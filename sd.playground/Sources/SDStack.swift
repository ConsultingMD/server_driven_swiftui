


import SwiftUI
import Foundation


struct StackSD: View {
    
    let object: [String: Any]
    
    init(_ object: [String: Any]) {
        self.object = object
    }
    
    var type: String {
        object["__typename"] as! String
    }
    
    var direction: String {
        object["direction"] as! String
    }
    
    var objects: [[String : Any]] {
        object["objects"] as! [[String : Any]]
    }
    
    var spacing: CGFloat? {
        object["spacing"] as? CGFloat
    }
    
    var alignmentName: String? {
        object["alignment"] as? String
    }
    
    var verticalAlignment: VerticalAlignment {
        if let name = alignmentName {
            if name == "top" {
                return .top
            }
            if name == "center" {
                return .center
            }
            
            if name == "bottom" {
                return .bottom
            }
        }
        return .center
    }
    
    var horizontalAlignment: HorizontalAlignment {
        if let name = alignmentName {
            if name == "leading" {
                return .leading
            }
            if name == "center" {
                return .center
            }
            if name == "trailing" {
                return .trailing
            }
        }
        return .center
    }
    
    var padding: [String : Any]? {
        object["padding"] as? [String : String]
    }
    
    var edgeInsets: EdgeInsets {
        return EdgeInsets(top: padding?["top"] as? CGFloat ?? 0, leading: padding?["leading"] as? CGFloat ?? 0, bottom: padding?["bottom"] as? CGFloat ?? 0, trailing: padding?["trailing"] as? CGFloat ?? 0)
    }
    
    var view: some View {
        if direction == "horizontal" {
            return HStack(alignment: verticalAlignment, spacing: spacing) {
                ForEach(0..<objects.count) { index in
                    let object = objects[index]
                    SDView(object)
                }
            }
        }
        if direction == "vertical" {
            return VStack(alignment: horizontalAlignment, spacing: spacing) {
                ForEach(0..<objects.count) { index in
                    let object = objects[index]
                    SDView(object)
                }
            }
        }
        return Text("Unknown direction")
    }
    
    var body: some View {
        view
            .padding(edgeInsets)
    }
}


