


import Foundation
import SwiftUI
import PlaygroundSupport


if let pathJson = Bundle.main.path(forResource:"card3", ofType: "json"), let dataJson = FileManager.default.contents(atPath: pathJson) {
    do {
        let object = try JSONSerialization.jsonObject(with: dataJson, options: JSONSerialization.ReadingOptions.json5Allowed) as! [String : Any]
        let view = SDView(object)
        PlaygroundPage.current.setLiveView(
            view
                .preferredColorScheme(.dark)
                .padding(EdgeInsets(top: 50, leading: 50, bottom: 50, trailing: 50))
        )
    }
}

