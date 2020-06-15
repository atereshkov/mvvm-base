//
//  RootRoutable.swift
//  mvvm-base
//
//  Created by nb-058-41b on 6/15/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import UIKit

protocol RootRoutable {
    
    func initializeRootView() -> UIViewController?
    
}

extension RootRoutable where Self: RouterType {
    
    func initializeRootView() -> UIViewController? {
        let viewModel = RootViewModel(session: session)
        let storyboard = UIStoryboard(name: "RootView", bundle: nil)
        let view = storyboard.instantiateInitialViewController() as! RootView
        view.viewModel = viewModel
        let router = RootRouter(session: session, view: view)
        viewModel.router = router
        return view
    }
    
}
