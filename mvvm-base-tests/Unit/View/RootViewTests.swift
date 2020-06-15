//
//  RootViewTests.swift
//  mvvm-base-tests
//
//  Created by nb-058-41b on 6/16/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import XCTest
@testable import mvvm_base

class RootViewTests: XCTestCase { }

extension RootViewTests {
    
    func test_WhenLoginCalled_ItShould_CallViewModel() {
        let router = RootRouterStub(session: SessionStub(), view: ViewType())
        let viewModel = RootViewModelStub(session: SessionStub())
        viewModel.router = router
        let view = RootView()
        view.viewModel = viewModel
        
        XCTAssertEqual(viewModel.loginCalled, false)
        view.loginButtonAction(UIButton())
        XCTAssertEqual(viewModel.loginCalled, true)
    }
    
}
