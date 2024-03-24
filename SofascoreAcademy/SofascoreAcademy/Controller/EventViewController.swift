//
//  EventViewController.swift
//  SofascoreAcademy
//
//  Created by Akademija on 07.03.2024..
//

import UIKit
import SnapKit
import SofaAcademic

class EventViewController: UIViewController {
    
    private let league: League = createMockLeague()
    private let events: Array<Event> = createMockEvents()
    
    private let eventsCollectionView: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())

    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        styleViews()
        setupConstraints()
        setupCollectionView()
    }

    private func setupCollectionView() {
        eventsCollectionView.dataSource = self
        eventsCollectionView.delegate = self
        eventsCollectionView.register(EventCell.self, forCellWithReuseIdentifier: .eventCellIdentifier)
        eventsCollectionView.register(LeagueHeaderCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: .leagueHeaderCellIdentifier)
    }
    
}

extension EventViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        events.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let eventCell = eventsCollectionView.dequeueReusableCell(withReuseIdentifier: .eventCellIdentifier, for: indexPath) as? EventCell else {
            return UICollectionViewCell()
        }
        
        let event = events[indexPath.row]
        let eventViewModel = EventViewModel(eventModel: event)
        eventCell.setupData(eventModel: eventViewModel)
        return eventCell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            guard let leagueHeaderCell = eventsCollectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: .leagueHeaderCellIdentifier, for: indexPath) as? LeagueHeaderCell else {
                return UICollectionReusableView()
            }
            
            leagueHeaderCell.setupData(league: league)
            return leagueHeaderCell
        default:
            return UICollectionReusableView()
        }
    }
    
}

extension EventViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 56)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 56)
    }
}

extension EventViewController: BaseViewProtocol {
    
    func addViews() {
        view.addSubview(eventsCollectionView)
    }
    
    func styleViews() {
        view.backgroundColor = .secondaryVariant
        eventsCollectionView.backgroundColor = .surface1
    }
    
    func setupConstraints() {
        eventsCollectionView.snp.makeConstraints() {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            $0.leading.trailing.equalToSuperview()
        }
    }
    
}
