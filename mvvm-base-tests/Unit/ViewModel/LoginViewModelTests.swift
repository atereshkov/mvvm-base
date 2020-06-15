//
//  LoginViewModelTests.swift
//  mvvm-base-tests
//
//  Created by nb-058-41b on 6/16/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import XCTest
@testable import mvvm_base

class LoginViewModelTests: XCTestCase {
    
    func test_WhenLoginActionFired_RouterShouldBeCalled() {
        let router = LoginRouterStub(session: SessionStub(), view: UIViewController())
        let viewModel = LoginViewModel(session: SessionStub())
        viewModel.router = router

        XCTAssertEqual(router.dismissCalled, false)
        viewModel.backAction()
        XCTAssertEqual(router.dismissCalled, true)
    }
    
}
