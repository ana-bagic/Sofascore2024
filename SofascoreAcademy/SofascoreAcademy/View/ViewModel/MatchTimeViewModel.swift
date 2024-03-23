//
//  MatchTimeViewModel.swift
//  SofascoreAcademy
//
//  Created by Akademija on 22.03.2024..
//

import UIKit

struct MatchTimeViewModel {
    
    let startTime: String
    let currentMinute: String
    let currentMinuteColor: UIColor
    
    init(startTime: String, currentMinute: String, matchStatus: MatchStatus) {
        self.startTime = startTime
        self.currentMinute = currentMinute
        self.currentMinuteColor = matchStatus == .inProgress ? .specificLive : .onSurfaceLv2
    }
}
