//
//  LeagueHeaderView.swift
//  SofascoreAcademy
//
//  Created by Akademija on 16.03.2024..
//

import Foundation
import UIKit
import SofaAcademic

class LeagueHeaderView: BaseView {
    
    var leagueModel: League
    
    let leagueLogo: UIImageView = UIImageView()
    let country: UILabel = UILabel()
    let leagueName: UILabel = UILabel()
    let arrow: UIImageView = UIImageView(image: Images.arrow)
    let horizontalStack: UIStackView = UIStackView()
    
    init(league: League) {
        leagueModel = league
        super.init()
    }
    
    override func addViews() {
        horizontalStack.addArrangedSubview(country)
        horizontalStack.addArrangedSubview(arrow)
        horizontalStack.addArrangedSubview(leagueName)
        
        addSubview(leagueLogo)
        addSubview(horizontalStack)
    }

    override func styleViews() {
        leagueLogo.image = leagueModel.logo
        
        country.text = leagueModel.country
        country.font = Fonts.boldFont.withSize(Fonts.regularSize)
        country.textColor = Colors.onSurfaceLv1
        
        leagueName.text = leagueModel.name
        leagueName.font = Fonts.boldFont.withSize(Fonts.regularSize)
        leagueName.textColor = Colors.onSurfaceLv2
        
        arrow.tintColor = Colors.onSurfaceLv2
    }
    
    override func setupConstraints() {
        self.snp.makeConstraints() {
            $0.height.equalTo(56)
        }
        
        leagueLogo.snp.makeConstraints() {
            $0.top.equalToSuperview().inset(12)
            $0.leading.equalToSuperview().inset(16)
            $0.size.equalTo(32)
        }
        
        horizontalStack.snp.makeConstraints() {
            $0.top.equalToSuperview().inset(16)
            $0.leading.equalToSuperview().inset(80)
        }
    }

}
