


import SwiftUI
import Foundation


struct SDColor {
    
    let object: [String: Any]?
    
    init(_ object: [String: Any]?) {
        self.object = object
    }
    
    var name: String? {
        object?["name"] as? String
    }
    
    var red: CGFloat {
        object?["red"] as? CGFloat ?? 255
    }
    
    var green: CGFloat {
        object?["green"] as? CGFloat ?? 255
    }
    
    var blue: CGFloat {
        object?["blue"] as? CGFloat ?? 255
    }
    
    var color: Color {
        if let _ = object {
            if let name = name {
                switch name {
                case "black": return .black
                case "blue": return .blue
                case "brown": return .brown
                case "clear": return .clear
                case "cyan": return .cyan
                case "gray": return .gray
                case "green": return .green
                case "indigo": return .indigo
                case "mint": return .mint
                case "orange": return .orange
                case "pink": return .pink
                case "purple": return .purple
                case "red": return .red
                case "teal": return .teal
                case "white": return .white
                case "yellow": return .yellow
                default: break
                }
            }
            return Color(red: red, green: green, blue: blue)
        }
        return .white
    }
}

