//
//  RootViewModelTests.swift
//  mvvm-base-tests
//
//  Created by nb-058-41b on 6/16/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import XCTest
@testable import mvvm_base

class RootViewModelTests: XCTestCase {
    
    func test_WhenLoginActionFired_RouterShouldBeCalled() {
        let router = RootRouterStub(session: SessionStub(), view: UIViewController())
        let viewModel = RootViewModel(session: SessionStub())
        viewModel.router = router

        XCTAssertEqual(router.goToLoginCalled, false)
        viewModel.loginAction()
        XCTAssertEqual(router.goToLoginCalled, true)
    }
    
}
