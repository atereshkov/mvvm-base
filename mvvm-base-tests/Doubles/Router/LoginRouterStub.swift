//
//  LoginRouterStub.swift
//  mvvm-base-tests
//
//  Created by nb-058-41b on 6/16/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import Foundation
@testable import mvvm_base

class LoginRouterStub: BaseRouter, LoginRouterProtocol {
    
    var dismissCalled: Bool = false
    
    func dismiss(animated: Bool) {
        dismissCalled = true
    }
    
}
