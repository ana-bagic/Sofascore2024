//
//  MiscUtil.swift
//  SofascoreAcademy
//
//  Created by Akademija on 23.03.2024..
//

import Foundation

func optionalIntToString(intNumber: Int?) -> String {
    guard let unwrapped = intNumber else {
        return ""
    }
    return String(unwrapped)
}
