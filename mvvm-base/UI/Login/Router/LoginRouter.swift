//
//  LoginRouter.swift
//  mvvm-base
//
//  Created by nb-058-41b on 6/15/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import Foundation

protocol LoginRouterProtocol: RouterType {
    
    func dismiss(animated: Bool)
    
}

final class LoginRouter: BaseRouter, LoginRouterProtocol {
    
    func dismiss(animated: Bool) {
        self.view?.navigationController?.popViewController(animated: true)
    }
    
}
