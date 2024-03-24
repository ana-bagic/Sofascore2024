//
//  EventView.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import UIKit
import SofaAcademic

class EventView: BaseView {
    
    private let eventTimeView: EventTimeView
    private let homeTeamView: TeamScoreView
    private let awayTeamView: TeamScoreView
    
    init(eventModel: EventViewModel) {
        eventTimeView = EventTimeView(eventTimeViewModel: eventModel.eventTimeViewModel)
        homeTeamView = TeamScoreView(teamScoreViewModel: eventModel.homeTeamViewModel)
        awayTeamView = TeamScoreView(teamScoreViewModel: eventModel.awayTeamViewModel)
        super.init()
    }
    
    override func addViews() {
        addSubview(eventTimeView)
        addSubview(homeTeamView)
        addSubview(awayTeamView)
    }
    
    override func setupConstraints() {
        eventTimeView.snp.makeConstraints() {
            $0.top.bottom.leading.equalToSuperview()
            $0.width.equalTo(64)
        }
        
        homeTeamView.snp.makeConstraints() {
            $0.top.equalToSuperview().inset(10)
            $0.leading.equalTo(eventTimeView.snp.trailing).offset(16)
            $0.trailing.equalToSuperview().inset(16)
        }
        
        awayTeamView.snp.makeConstraints() {
            $0.top.equalTo(homeTeamView.snp.bottom).offset(4)
            $0.bottom.equalToSuperview().inset(10)
            $0.leading.equalTo(eventTimeView.snp.trailing).offset(16)
            $0.trailing.equalToSuperview().inset(16)
        }
    }
}
