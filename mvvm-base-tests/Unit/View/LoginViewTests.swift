//
//  LoginViewTests.swift
//  mvvm-base-tests
//
//  Created by nb-058-41b on 6/16/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import XCTest
@testable import mvvm_base

class LoginViewTests: XCTestCase { }

extension LoginViewTests {
    
    func test_WhenCloseCalled_ItShould_CallViewModel() {
        let router = LoginRouterStub(session: SessionStub(), view: ViewType())
        let viewModel = LoginViewModelStub(session: SessionStub())
        viewModel.router = router
        let view = LoginView()
        view.viewModel = viewModel
        
        XCTAssertEqual(viewModel.backCalled, false)
        view.closeButtonAction(UIButton())
        XCTAssertEqual(viewModel.backCalled, true)
    }
    
}
