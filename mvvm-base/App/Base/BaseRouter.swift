//
//  BaseRouter.swift
//  mvvm-base
//
//  Created by nb-058-41b on 6/15/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import Foundation

protocol RouterType: class {
    var view: ViewType? { get }
    var session: SessionType { get }
}

class BaseRouter: RouterType {
    
    let session: SessionType
    private(set) weak var view: ViewType?
    
    init(session: SessionType, view: ViewType) {
        self.session = session
        self.view = view
    }
    
    init(session: SessionType) {
        self.session = session
    }
    
}
