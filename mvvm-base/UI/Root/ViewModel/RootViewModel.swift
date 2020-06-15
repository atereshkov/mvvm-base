//
//  RootViewModel.swift
//  mvvm-base
//
//  Created by nb-058-41b on 6/15/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import Foundation

class RootViewModel: BaseViewModel<RootRouterProtocol>, RootViewModelProtocol {
    
    // MARK: - Init
    
    override init(session: SessionType) {
        super.init(session: session)
    }
    
    // MARK: - Actions
    
    func loginAction() {
        router?.goToLogin(animated: true)
    }
    
}
