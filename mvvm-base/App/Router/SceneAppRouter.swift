//
//  SceneAppRouter.swift
//  mvvm-base
//
//  Created by nb-058-41b on 6/15/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
final class SceneAppRouter: AppRouterProtocol {
    
    private var session: SessionType
    private(set) var window: UIWindow
    private(set) var sceneWindow: UIWindowScene
    
    init(window: UIWindow, sceneWindow: UIWindowScene, session: SessionType) {
        self.window = window
        self.session = session
        self.sceneWindow = sceneWindow
    }
    
    var rootViewController: UIViewController? {
        return window.rootViewController
    }
    
}

// MARK: - Public API

@available(iOS 13.0, *)
extension SceneAppRouter {
    
    func start(with session: SessionType) {
        let rootRouter = RootRouter(session: session)
        guard let vc = rootRouter.initializeRootView() else { return }
        window.rootViewController = UINavigationController(rootViewController: vc)
        window.makeKeyAndVisible()
        window.windowScene = sceneWindow
    }
    
}
