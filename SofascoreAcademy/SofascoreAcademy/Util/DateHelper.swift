//
//  DateHelper.swift
//  SofascoreAcademy
//
//  Created by Akademija on 22.03.2024..
//

import Foundation

func formatDateToHourAndMinutes(timestamp: Int) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "HH:mm"
    
    let date = Date(timeIntervalSince1970: TimeInterval(timestamp))
    let formattedDate = dateFormatter.string(from: date)
    
    return formattedDate
}
