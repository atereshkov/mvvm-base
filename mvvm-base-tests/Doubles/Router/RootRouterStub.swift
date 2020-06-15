//
//  RootRouterStub.swift
//  mvvm-base-tests
//
//  Created by nb-058-41b on 6/16/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import Foundation
@testable import mvvm_base

class RootRouterStub: BaseRouter, RootRouterProtocol {
    
    var goToLoginCalled: Bool = false
    
    func goToLogin(animated: Bool) {
        self.goToLoginCalled = true
    }
    
}
