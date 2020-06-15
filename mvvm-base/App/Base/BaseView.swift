//
//  BaseView.swift
//  mvvm-base
//
//  Created by nb-058-41b on 6/15/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import UIKit

typealias ViewType = UIViewController

class BaseView<ViewModel: ViewModelType>: ViewType {
    
    var viewModel: ViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func bindViewModel() {}
    
}
