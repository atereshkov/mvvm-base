//
//  LoginRoutableTests.swift
//  mvvm-base-tests
//
//  Created by nb-058-41b on 6/16/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import XCTest
@testable import mvvm_base

private class Router: RouterType, LoginRoutable {
    
    var view: ViewType?
    var session: SessionType
    
    init(view: ViewType?, session: SessionType) {
        self.view = view
        self.session = session
    }
    
}

class LoginRoutableTests: XCTestCase { }

extension LoginRoutableTests {
    
    func test_WhenGoToLoginCalled_ItShouldPushView() {
        let rootVC = ViewType()
        let navVC = UINavigationController(rootViewController: rootVC)
        let view1 = ViewType()
        navVC.pushViewController(view1, animated: false)
        let router = Router(view: view1, session: SessionStub())
        router.goToLogin(animated: false)
        
        let presentedView = view1.navigationController?.children.first(where: { $0 is BaseView<LoginViewModel> })
        XCTAssertNotNil(presentedView)
    }
    
    func test_WhenGoToLogin_ItShould_SetViewModel() throws {
        let rootVC = ViewType()
        let navVC = UINavigationController(rootViewController: rootVC)
        let view1 = ViewType()
        navVC.pushViewController(view1, animated: false)
        let router = Router(view: view1, session: SessionStub())
        router.goToLogin(animated: false)
        
        let foundView = try XCTUnwrap(view1.navigationController?.children.first(where: { $0 is BaseView<LoginViewModel> }))
        let presentedView = try XCTUnwrap(foundView as? BaseView<LoginViewModel>)
        
        XCTAssertNotNil(presentedView.viewModel)
    }
    
    func test_WhenGoToLogin_ItShould_SetRouter() throws {
        let rootVC = ViewType()
        let navVC = UINavigationController(rootViewController: rootVC)
        let view1 = ViewType()
        navVC.pushViewController(view1, animated: false)
        let router = Router(view: view1, session: SessionStub())
        router.goToLogin(animated: false)
        
        let foundView = try XCTUnwrap(view1.navigationController?.children.first(where: { $0 is BaseView<LoginViewModel> }))
        let presentedView = try XCTUnwrap(foundView as? BaseView<LoginViewModel>)
        
        XCTAssertNotNil(presentedView.viewModel?.router)
    }
    
}
