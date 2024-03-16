//
//  Fonts.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import Foundation
import UIKit

struct Fonts {
    
    static let boldFont: UIFont = loadFont(name: "Roboto-Bold")
    static let regularFont: UIFont = loadFont(name: "Roboto-Regular")
    static let regularCondensedFont: UIFont = loadFont(name: "RobotoCondensed-Regular")

    static func loadFont(name: String) -> UIFont {
        guard let font: UIFont = UIFont(name: name, size: UIFont.labelFontSize) else {
            fatalError("""
                    Failed to load the "\(name)" font.
                    Make sure the font file is included in the project and the font name is spelled correctly.
                    """
            )
        }
        return font
    }
}
