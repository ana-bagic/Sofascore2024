//
//  TeamLogoNameView.swift
//  SofascoreAcademy
//
//  Created by Akademija on 21.03.2024..
//

import UIKit
import SofaAcademic

class TeamScoreView: BaseView {
    
    let teamScoreViewModel: TeamScoreViewModel
    
    let teamLogoImageView: UIImageView = UIImageView()
    let teamNameLabel: UILabel = UILabel()
    let teamScoreLabel: UILabel = UILabel()
    
    init(teamScoreViewModel: TeamScoreViewModel) {
        self.teamScoreViewModel = teamScoreViewModel
        super.init()
    }
    
    override func addViews() {
        addSubview(teamLogoImageView)
        addSubview(teamNameLabel)
        addSubview(teamScoreLabel)
    }

    override func styleViews() {
        teamLogoImageView.image = teamScoreViewModel.logoImage
        
        teamNameLabel.text = teamScoreViewModel.teamName
        teamNameLabel.font = .body
        teamNameLabel.textColor = teamScoreViewModel.teamNameColor
        
        teamScoreLabel.text = teamScoreViewModel.teamScore
        teamScoreLabel.font = .body
        teamScoreLabel.textColor = teamScoreViewModel.teamScoreColor
        teamScoreLabel.textAlignment = .right
    }
    
    override func setupConstraints() {
        teamLogoImageView.snp.makeConstraints() {
            $0.top.bottom.leading.equalToSuperview()
            $0.size.equalTo(16)
        }
        
        teamNameLabel.snp.makeConstraints() {
            $0.top.bottom.equalToSuperview()
            $0.leading.equalTo(teamLogoImageView.snp.trailing).offset(8)
        }
        
        teamScoreLabel.snp.makeConstraints() {
            $0.top.bottom.trailing.equalToSuperview()
            $0.leading.equalTo(teamNameLabel.snp.trailing).offset(16)
            $0.width.equalTo(32)
        }
    }
}
