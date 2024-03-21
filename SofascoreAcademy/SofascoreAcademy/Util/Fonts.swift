//
//  Fonts.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import UIKit

extension UIFont {

    class var headline1Desktop: UIFont {
        return loadFont(name: "Roboto Bold", size: 32.0)
    }

    class var headline1: UIFont {
        return loadFont(name: "Roboto Bold", size: 20.0)
    }

    class var headline2: UIFont {
        return loadFont(name: "Roboto Bold", size: 16.0)
    }

    class var action: UIFont {
        return loadFont(name: "Roboto Bold", size: 16.0)
    }

    class var headline3: UIFont {
        return loadFont(name: "Roboto Bold", size: 14.0)
    }

    class var tabular: UIFont {
        return loadFont(name: "Roboto CondensedRegular", size: 14.0)
    }

    class var bodyParagraph: UIFont {
        return loadFont(name: "Roboto Regular", size: 14.0)
    }

    class var body: UIFont {
        return loadFont(name: "Roboto Regular", size: 14.0)
    }

    class var assistive: UIFont {
        return loadFont(name: "Roboto Bold", size: 12.0)
    }

    class var micro: UIFont {
        return loadFont(name: "Roboto CondensedRegular", size: 12.0)
    }
    
    static func loadFont(name: String, size: Double) -> UIFont {
        guard let font: UIFont = UIFont(name: name, size: size) else {
            fatalError("""
                    Failed to load the "\(name)" font.
                    Make sure the font file is included in the project and the font name is spelled correctly.
                    """
            )
        }
        return font
    }

}
