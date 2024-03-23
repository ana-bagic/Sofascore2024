//
//  MatchViewModel.swift
//  SofascoreAcademy
//
//  Created by Akademija on 21.03.2024..
//

import UIKit

struct MatchViewModel {
    
    let matchTimeViewModel: MatchTimeViewModel
    let homeTeamViewModel: TeamScoreViewModel
    let awayTeamViewModel: TeamScoreViewModel
    
    init(matchModel: Match) {
        let startTime = formatDateToHourAndMinutes(timestamp: matchModel.startTimestamp)
        
        var currentMinute: String
        var homeTeamScore: String
        var awayTeamScore: String
        var homeScoreStatus: ScoreStatus = .notFinished
        var awayScoreStatus: ScoreStatus = .notFinished
        
        switch matchModel.matchStatus {
        case .notStarted:
            currentMinute = String("-")
            homeTeamScore = String()
            awayTeamScore = String()
        case .inProgress:
            currentMinute = optionalIntToString(intNumber: matchModel.currentMinute) + "'"
            homeTeamScore = optionalIntToString(intNumber: matchModel.homeTeamScore)
            awayTeamScore = optionalIntToString(intNumber: matchModel.awayTeamScore)
        case .finished:
            currentMinute = Strings.finishedMatch
            homeTeamScore = optionalIntToString(intNumber: matchModel.homeTeamScore)
            awayTeamScore = optionalIntToString(intNumber: matchModel.awayTeamScore)
            
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
        
        matchTimeViewModel = MatchTimeViewModel(startTime: startTime, currentMinute: currentMinute, matchStatus: matchModel.matchStatus)
        homeTeamViewModel = TeamScoreViewModel(teamModel: matchModel.homeTeam, teamScore: homeTeamScore, scoreStatus: homeScoreStatus)
        awayTeamViewModel = TeamScoreViewModel(teamModel: matchModel.awayTeam, teamScore: awayTeamScore, scoreStatus: awayScoreStatus)
    }
}
