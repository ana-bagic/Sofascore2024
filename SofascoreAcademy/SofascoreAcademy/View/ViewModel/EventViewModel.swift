//
//  EventViewModel.swift
//  SofascoreAcademy
//
//  Created by Akademija on 21.03.2024..
//

import UIKit

struct EventViewModel {
    
    let eventTimeViewModel: EventTimeViewModel
    let homeTeamViewModel: TeamScoreViewModel
    let awayTeamViewModel: TeamScoreViewModel
    
    init(eventModel: Event) {
        let startTime = formatDateToHourAndMinutes(timestamp: eventModel.startTimestamp)
        
        var currentMinute: String
        var homeTeamScore: String
        var awayTeamScore: String
        var homeScoreStatus: ScoreStatus = .notFinished
        var awayScoreStatus: ScoreStatus = .notFinished
        
        switch eventModel.eventStatus {
        case .notStarted:
            currentMinute = .notStartedEvent
            homeTeamScore = String()
            awayTeamScore = String()
        case .inProgress:
            currentMinute = optionalIntToString(intNumber: eventModel.currentMinute) + "'"
            homeTeamScore = optionalIntToString(intNumber: eventModel.homeTeamScore)
            awayTeamScore = optionalIntToString(intNumber: eventModel.awayTeamScore)
        case .finished:
            currentMinute = .finishedEvent
            homeTeamScore = optionalIntToString(intNumber: eventModel.homeTeamScore)
            awayTeamScore = optionalIntToString(intNumber: eventModel.awayTeamScore)
            
            if homeTeamScore < awayTeamScore {
                homeScoreStatus = .lost
                awayScoreStatus = .won
            } else if homeTeamScore > awayTeamScore {
                homeScoreStatus = .won
                awayScoreStatus = .lost
            } else {
                homeScoreStatus = .draw
                awayScoreStatus = .draw
            }
        }
        
        eventTimeViewModel = EventTimeViewModel(startTime: startTime, currentMinute: currentMinute, eventStatus: eventModel.eventStatus)
        homeTeamViewModel = TeamScoreViewModel(teamModel: eventModel.homeTeam, teamScore: homeTeamScore, scoreStatus: homeScoreStatus)
        awayTeamViewModel = TeamScoreViewModel(teamModel: eventModel.awayTeam, teamScore: awayTeamScore, scoreStatus: awayScoreStatus)
    }
}
