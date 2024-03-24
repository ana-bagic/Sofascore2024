//
//  DataMock.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import Foundation

func createMockLeague() -> League {
    return League(leagueName: "LaLiga", countryName: "Spain", logoImage: .laliga)
}

func createMockEvents() -> Array<Event> {
    var events: Array<Event> = []
    
    let barcelona: Team = Team(teamName: "Barcelona", logoImage: .barcelona)
    let manchester: Team = Team(teamName: "Manchester United", logoImage: .manchesterUnited)
    
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 1, awayTeamScore: 2, winnerCode: 2, startTimestamp: 1710590400, eventStatus: EventStatus.finished, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: 0, awayTeamScore: 1, winnerCode: nil, startTimestamp: 1710601200, eventStatus: EventStatus.inProgress, currentMinute: 36))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710608400, eventStatus: EventStatus.notStarted, currentMinute: nil))
    events.append(Event(homeTeam: manchester, awayTeam: barcelona, homeTeamScore: nil, awayTeamScore: nil, winnerCode: nil, startTimestamp: 1710613800, eventStatus: EventStatus.notStarted, currentMinute: nil))
    
    return events
}
