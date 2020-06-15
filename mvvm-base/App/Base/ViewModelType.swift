//
//  ViewModelType.swift
//  mvvm-base
//
//  Created by nb-058-41b on 6/15/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

protocol ViewModelType: class {
    func onViewDidLoad()
    func onViewWillAppear()
    func onViewWillDisappear()
}
