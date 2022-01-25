//
//  GHFollowerItemVC.swift
//  Github
//
//  Created by Kevin Hankes on 1/20/22.
//

import UIKit

protocol GHFollowerItemVCDelegate: AnyObject {
    func didTapGetFollowers(for user: User)
}

class GHFollowerItemVC: GHItemInfoVC {
    
    weak var delegate: GHFollowerItemVCDelegate!
    
    init(user: User, delegate: GHFollowerItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}
