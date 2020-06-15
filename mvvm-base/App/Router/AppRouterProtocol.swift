//
//  AppRouterProtocol.swift
//  mvvm-base
//
//  Created by nb-058-41b on 6/15/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import UIKit

protocol AppRouterProtocol {
    func start(with session: SessionType)
    
    var rootViewController: UIViewController? { get }
    var window: UIWindow { get }
}
