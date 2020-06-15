//
//  RootRoutableTests.swift
//  mvvm-base-tests
//
//  Created by nb-058-41b on 6/15/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import XCTest
@testable import mvvm_base

private class Router: RouterType, RootRoutable {
    
    var view: ViewType?
    var session: SessionType
    
    init(view: ViewType?, session: SessionType) {
        self.view = view
        self.session = session
    }
    
}

class LandingRoutableTests: XCTestCase {
    
    func test_WhenInitializeView_ItShouldReturn_BaseViewTypeWithViewModel() {
        let router = Router(view: ViewType(), session: SessionStub())
        let view = router.initializeRootView() as? BaseView<RootViewModel>
        
        XCTAssertNotNil(view)
        XCTAssertNotNil(view?.viewModel)
    }
    
    func test_WhenInitializeView_ItShouldReturn_BaseViewTypeWithRouter() {
        let router = Router(view: ViewType(), session: SessionStub())
        let view = router.initializeRootView() as? BaseView<RootViewModel>
        
        XCTAssertNotNil(view?.viewModel?.router)
    }
    
}
