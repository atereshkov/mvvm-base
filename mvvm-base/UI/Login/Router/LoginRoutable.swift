//
//  LoginRoutable.swift
//  mvvm-base
//
//  Created by nb-058-41b on 6/15/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import UIKit

protocol LoginRoutable {
    
    func goToLogin(animated: Bool)
    
}

extension LoginRoutable where Self: RouterType {
    
    func goToLogin(animated: Bool) {
        let viewModel = LoginViewModel(session: session)
        let storyboard = UIStoryboard(name: "LoginView", bundle: nil)
        let view = storyboard.instantiateInitialViewController() as! LoginView
        view.viewModel = viewModel
        let router = LoginRouter(session: session, view: view)
        viewModel.router = router
        self.view?.navigationController?.pushViewController(view, animated: animated)
    }
    
}
