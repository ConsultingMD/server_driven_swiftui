//
//
//
//import SwiftUI
//import Foundation
//
//
//struct SDGridItem: View {
//
//    let object: [String: Any]
//
//    init(_ object: [String: Any]) {
//        self.object = object
//    }
//
//    var type: String {
//        object["__typename"] as! String
//    }
//
//    var sizeName {
//        object["padding"] as? [String : String]
//    }
//
//    var size: GridItem.Size {
//        object["padding"] as? [String : String]
//    }
//
//    var edgeInsets: EdgeInsets {
//        return EdgeInsets(top: padding?["top"] as? CGFloat ?? 0, leading: padding?["leading"] as? CGFloat ?? 0, bottom: padding?["bottom"] as? CGFloat ?? 0, trailing: padding?["trailing"] as? CGFloat ?? 0)
//    }
//
//    var body: GridItem {
//        return GridItem(size, spacing: spacingOpt, alignment: alignmentOpt)
//
//        func getItem(_ object: [String : Any]) -> GridItem {
//
//            let size: GridItem.Size = GridItem.Size.flexible()
//            var spacingOpt: CGFloat? = nil
//            var alignmentOpt: Alignment? = nil
//
//            if let spacing = object["spacing"] as? CGFloat {
//                spacingOpt = spacing
//            }
//
//            if let strAlignment = object["alignment"] as? String, let alignment = getAlignment(strAlignment) {
//                alignmentOpt = alignment
//            }
//
//            return GridItem(size, spacing: spacingOpt, alignment: alignmentOpt)
//        }
//        Divider()
//            .padding(edgeInsets)
//    }
//}
//
//
