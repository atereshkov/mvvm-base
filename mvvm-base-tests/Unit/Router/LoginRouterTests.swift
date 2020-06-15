//
//  LoginRouterTests.swift
//  mvvm-base-tests
//
//  Created by nb-058-41b on 6/16/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import XCTest
@testable import mvvm_base

class LoginRouterTests: XCTestCase {
    
    class MockNavigationController: UINavigationController {
        var popViewControllerCalled = false
        
        var popViewControllerAnimationParam: Bool?
        
        override func popViewController(animated: Bool) -> UIViewController? {
            self.popViewControllerCalled = true
            self.popViewControllerAnimationParam = animated
            return nil
        }
    }
    
    func test_WhenDismissCalled_ItShould_CallPopViewController() {
        let view = ViewType()
        let rootVC = ViewType()
        let navVC = MockNavigationController(rootViewController: rootVC)
        navVC.pushViewController(view, animated: false)
        let router = LoginRouter(session: SessionStub(), view: view)
        
        XCTAssertEqual(navVC.popViewControllerCalled, false)
        
        router.dismiss(animated: false)
        
        XCTAssertEqual(navVC.popViewControllerCalled, true)
    }
    
    func test_WhenDismissCalled_ItShould_UsePassedAnimationParam() {
        let view = ViewType()
        let rootVC = ViewType()
        let navVC = MockNavigationController(rootViewController: rootVC)
        navVC.pushViewController(view, animated: false)
        let router = LoginRouter(session: SessionStub(), view: view)
        
        XCTAssertNil(navVC.popViewControllerAnimationParam)
        
        let animated: Bool = false
        router.dismiss(animated: animated)
        
        XCTAssertEqual(navVC.popViewControllerAnimationParam, animated)
    }

}
