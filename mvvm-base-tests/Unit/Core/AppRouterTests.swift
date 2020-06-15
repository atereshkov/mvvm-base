//
//  AppRouterTests.swift
//  mvvm-base-tests
//
//  Created by nb-058-41b on 6/16/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import XCTest
@testable import mvvm_base

class AppRouterTests: XCTestCase {
    
    func test_RootViewController_ShouldBe_SetFromWindow() {
        let rootDummyVC = UIViewController()
        let window = UIWindow(frame: .zero)
        window.rootViewController = rootDummyVC
        
        let router = AppRouter(window: window, session: SessionStub())
        
        XCTAssertEqual(router.rootViewController, rootDummyVC)
    }
    
    func test_RootView_ShouldBe_OpenedAtStart() {
        let window = UIWindow(frame: .zero)
        
        let router = AppRouter(window: window, session: SessionStub())
        router.start(with: SessionStub())
        
        XCTAssertTrue(window.rootViewController?.children[0] is RootView)
    }
    
}
