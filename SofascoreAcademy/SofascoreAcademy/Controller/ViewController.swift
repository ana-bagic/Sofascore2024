//
//  ViewController.swift
//  SofascoreAcademy
//
//  Created by Akademija on 07.03.2024..
//

import SnapKit
import UIKit

class ViewController: UIViewController {
    
    let leagueComponent: LeagueComponentView = LeagueComponentView(league: createMockLeague(), matches: createMockMatches())

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(leagueComponent)
        
        view.backgroundColor = .secondaryVariant
        leagueComponent.backgroundColor = .surface1
        
        leagueComponent.snp.makeConstraints() {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(30)
            $0.leading.trailing.equalToSuperview()
        }
    }

}
