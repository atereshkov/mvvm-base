//
//  RootViewModelStub.swift
//  mvvm-base-tests
//
//  Created by nb-058-41b on 6/16/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import Foundation
@testable import mvvm_base

class RootViewModelStub: RootViewModel {

    var loginCalled: Bool = false
    
    override func loginAction() {
        self.loginCalled = true
    }

}
