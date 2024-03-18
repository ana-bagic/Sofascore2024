//
//  Images.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import Foundation
import UIKit

struct Images {
    
    static let barcelonaLogo: UIImage = loadImage(name: "barcelona")
    static let manchesterLogo: UIImage = loadImage(name: "manchester-united")
    static let laligaLogo: UIImage = loadImage(name: "laliga")
    
    static let arrow: UIImage = loadImage(name: "arrow")

    static func loadImage(name: String) -> UIImage {
        guard let image: UIImage = UIImage(named: name) else {
            fatalError("""
                    Failed to load the "\(name)" image.
                    Make sure the image is included in the project and the image name is spelled correctly.
                    """
            )
        }
        return image
    }
}

