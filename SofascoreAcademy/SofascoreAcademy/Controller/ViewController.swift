//
//  ViewController.swift
//  SofascoreAcademy
//
//  Created by Akademija on 07.03.2024..
//

import SnapKit
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .secondaryVariant
        
        let league = createMockLeague()
        let matches = createMockMatches()
        
        let leagueComponent: LeagueComponentView = LeagueComponentView(league: league, matches: matches)
        
        view.addSubview(leagueComponent)
        
        leagueComponent.snp.makeConstraints() {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(30)
            $0.leading.equalToSuperview()
            $0.width.equalToSuperview()
        }
        
        leagueComponent.backgroundColor = .surface1
    }

}

