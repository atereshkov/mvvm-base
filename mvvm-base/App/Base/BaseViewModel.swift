//
//  BaseViewModel.swift
//  mvvm-base
//
//  Created by nb-058-41b on 6/15/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import Foundation

class BaseViewModel<RouterType>: ViewModelType {

    var router: RouterType?
    let session: SessionType
    
    init(session: SessionType) {
        self.session = session
    }
    
    func onViewDidLoad() {}
    
    func onViewWillAppear() {}
    
    func onViewWillDisappear() {}
    
}
