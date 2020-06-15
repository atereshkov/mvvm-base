//
//  AppRouter.swift
//  mvvm-base
//
//  Created by nb-058-41b on 6/15/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import UIKit

final class AppRouter: AppRouterProtocol {
    
    private(set) var window: UIWindow
    private var session: SessionType
    
    init(window: UIWindow, session: SessionType) {
        self.window = window
        self.session = session
    }
    
    var rootViewController: UIViewController? {
        return window.rootViewController
    }
    
}

// MARK: - Public API

extension AppRouter {
    
    func start(with session: SessionType) {
        let rootRouter = RootRouter(session: session)
        guard let vc = rootRouter.initializeRootView() else { return }
        window.rootViewController = UINavigationController(rootViewController: vc)
        window.makeKeyAndVisible()
    }
    
}
