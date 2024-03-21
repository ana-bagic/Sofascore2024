//
//  LeagueHeaderView.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import UIKit
import SofaAcademic

class LeagueHeaderView: BaseView {
    
    var leagueModel: League
    
    let leagueLogoImageView: UIImageView = UIImageView()
    let countryLabel: UILabel = UILabel()
    let leagueNameLabel: UILabel = UILabel()
    let arrowImageView: UIImageView = UIImageView(image: Images.arrow)
    let horizontalStackView: UIStackView = UIStackView()
    
    init(league: League) {
        leagueModel = league
        super.init()
    }
    
    override func addViews() {
        horizontalStackView.addArrangedSubview(countryLabel)
        horizontalStackView.addArrangedSubview(arrowImageView)
        horizontalStackView.addArrangedSubview(leagueNameLabel)
        
        addSubview(leagueLogoImageView)
        addSubview(horizontalStackView)
    }

    override func styleViews() {
        leagueLogoImageView.image = leagueModel.logoImage
        
        horizontalStackView.alignment = .center

        countryLabel.text = leagueModel.countryName
        countryLabel.font = .headline3
        countryLabel.textColor = .onSurfaceLv1
        
        leagueNameLabel.text = leagueModel.leagueName
        leagueNameLabel.font = .headline3
        leagueNameLabel.textColor = .onSurfaceLv2
        
        arrowImageView.tintColor = .onSurfaceLv2
    }
    
    override func setupConstraints() {
        leagueLogoImageView.snp.makeConstraints() {
            $0.top.bottom.equalToSuperview().inset(12)
            $0.leading.equalToSuperview().inset(16)
            $0.size.equalTo(32)
        }
        
        horizontalStackView.snp.makeConstraints() {
            $0.top.bottom.equalToSuperview().inset(16)
            $0.trailing.lessThanOrEqualToSuperview().inset(16)
            $0.leading.equalTo(leagueLogoImageView.snp.trailing).offset(32)
            $0.centerY.equalTo(leagueLogoImageView)
        }
        
        arrowImageView.snp.makeConstraints() {
            $0.size.equalTo(24)
        }
    }

}
