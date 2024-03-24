//
//  LeagueComponentView.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import UIKit
import SofaAcademic

class LeagueComponentView: BaseView {
    
    private let leagueHeaderView: LeagueHeaderView
    private let eventsStackView: UIStackView = UIStackView()
    
    init(league: League, events: Array<Event>) {
        leagueHeaderView = LeagueHeaderView(league: league)
        for event in events {
            let eventViewModel: EventViewModel = EventViewModel(eventModel: event)
            eventsStackView.addArrangedSubview(EventView(eventModel: eventViewModel))
        }
        
        super.init()
    }
    
    override func addViews() {
        addSubview(leagueHeaderView)
        addSubview(eventsStackView)
    }

    override func styleViews() {
        eventsStackView.axis = .vertical
    }
    
    override func setupConstraints() {
        leagueHeaderView.snp.makeConstraints() {
            $0.top.leading.trailing.equalToSuperview()
        }
        
        eventsStackView.snp.makeConstraints() {
            $0.top.equalTo(leagueHeaderView.snp.bottom)
            $0.leading.trailing.bottom.equalToSuperview()
        }
    }

}
