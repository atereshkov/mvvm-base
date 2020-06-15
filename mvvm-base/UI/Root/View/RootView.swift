//
//  RootView.swift
//  mvvm-base
//
//  Created by nb-058-41b on 6/15/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import UIKit

class RootView: BaseView<RootViewModel> {
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func loginButtonAction(_ sender: Any) {
        viewModel?.loginAction()
    }
    
}
