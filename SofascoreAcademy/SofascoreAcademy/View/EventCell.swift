//
//  EventCell.swift
//  SofascoreAcademy
//
//  Created by Akademija on 24.03.2024..
//

import UIKit
import SofaAcademic

class EventCell: UICollectionViewCell {
    
    private let eventView: EventView = EventView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupData(eventModel: EventViewModel) {
        eventView.setupData(eventModel: eventModel)
    }
}

extension EventCell: BaseViewProtocol {
    
    func addViews() {
        addSubview(eventView)
    }
    
    func setupConstraints() {
        eventView.snp.makeConstraints() {
            $0.edges.equalToSuperview()
        }
    }
    
}
