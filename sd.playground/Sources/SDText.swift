


import SwiftUI
import Foundation


struct SDText: View {
    
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
    
    var fontName: String? {
        object["font"] as? String
    }
    
    var weightName: String? {
        object["weight"] as? String
        
    }
    
    var alignmentName: String? {
        object["alignment"] as? String
    }
    
    var font: Font {
        if let name = fontName {
            if name == "large_title" {
                return .largeTitle
            }
            if name == "title" {
                return .title
            }
            if name == "title2" {
                return .title2
            }
            if name == "title3" {
                return .title3
            }
            if name == "headline" {
                return .headline
            }
            if name == "body" {
                return .body
            }
            if name == "callout" {
                return .callout
            }
            if name == "caption" {
                return .caption
            }
            if name == "caption2" {
                return .caption2
            }
            if name == "footnote" {
                return .footnote
            }
        }
        return .body
    }
    
    var weight: Font.Weight {
        if let name = weightName {
            if name == "black" {
                return .black
            }
            if name == "bold" {
                return .bold
            }
            if name == "heavy" {
                return .heavy
            }
            if name == "light" {
                return .light
            }
            if name == "medium" {
                return .medium
            }
            if name == "regular" {
                return .regular
            }
            if name == "semibold" {
                return .semibold
            }
            if name == "thin" {
                return .thin
            }
            if name == "ultralight" {
                return .ultraLight
            }
        }
        return .regular
    }
    
    var alignment: TextAlignment {
        
        if let name = alignmentName {
            if name == "center" {
                return .center
            }
            if name == "leading" {
                return .leading
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
    
    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(weight)
            .multilineTextAlignment(alignment)
            .padding(edgeInsets)
    }
    
    //    func getItalized() -> Text {
    //
    //        let text = getBolded()
    //
    //        if let features = features, features.contains("italic") {
    //            return text.italic()
    //        }
    //
    //        return text
    //    }
    
}

