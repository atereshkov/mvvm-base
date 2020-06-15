//
//  LoginViewModelStub.swift
//  mvvm-base-tests
//
//  Created by nb-058-41b on 6/16/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import Foundation
@testable import mvvm_base

class LoginViewModelStub: LoginViewModel {

    var backCalled: Bool = false
    
    override func backAction() {
        self.backCalled = true
    }

}
