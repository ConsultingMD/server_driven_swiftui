//
//
//
//import SwiftUI
//import Foundation
//
//
//struct SDGrid: View {
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
//    var objects: [[String : Any]] {
//        object["objects"] as! [[String : Any]]
//    }
//
//    var direction: String {
//        object["direction"] as! String
//    }
//
//    var items: [[String : Any]] {
//        object["items"] as! [[String : Any]]
//    }
//
//    var padding: [String : Any]? {
//        object["padding"] as? [String : String]
//    }
//
//    var edgeInsets: EdgeInsets {
//        return EdgeInsets(top: padding?["top"] as? CGFloat ?? 0, leading: padding?["leading"] as? CGFloat ?? 0, bottom: padding?["bottom"] as? CGFloat ?? 0, trailing: padding?["trailing"] as? CGFloat ?? 0)
//    }
//
//    var view: some View {
//        if direction == "vertical" {
//            return LazyVGrid(columns: items.map({ object in
//                    SDGridItem(object)
//                })
//            ) {
//                ForEach(0..<objects.count) { index in
//                    let object = objects[index]
//                    SDView(object)
//                }
//            }
//        }
//        if direction == "horizontal" {
//            return LazyHGrid(rows: items.map({ object in
//                    SDGridItem(object)
//                })
//            ) {
//                ForEach(0..<objects.count) { index in
//                    let object = objects[index]
//                    SDView(object)
//                }
//            }
//        }
//        return Text("Unknown direction")
//    }
//
//    var body: some View {
//        view
//            .padding(edgeInsets)
//    }
//}
//
//
