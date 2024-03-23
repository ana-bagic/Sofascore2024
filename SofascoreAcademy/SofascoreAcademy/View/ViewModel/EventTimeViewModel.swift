//
//  EventTimeViewModel.swift
//  SofascoreAcademy
//
//  Created by Akademija on 22.03.2024..
//

import UIKit

struct EventTimeViewModel {
    
    let startTime: String
    let currentMinute: String
    let currentMinuteColor: UIColor
    
    init(startTime: String, currentMinute: String, eventStatus: EventStatus) {
        self.startTime = startTime
        self.currentMinute = currentMinute
        self.currentMinuteColor = eventStatus == .inProgress ? .specificLive : .onSurfaceLv2
    }
}
