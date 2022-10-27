


import Foundation
import PlaygroundSupport


if let pathJson = Bundle.main.path(forResource:"provider_card", ofType: "json"), let dataJson = FileManager.default.contents(atPath: pathJson) {
    do {
        let object = try JSONSerialization.jsonObject(with: dataJson, options: JSONSerialization.ReadingOptions.json5Allowed) as! [String : Any]
        let view = SDView(object)
        PlaygroundPage.current.setLiveView(
            view.frame(width: 500, height: 1000, alignment: .center).preferredColorScheme(.dark)
        )
    }
}

