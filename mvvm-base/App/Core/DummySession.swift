//
//  DummySession.swift
//  mvvm-base
//
//  Created by nb-058-41b on 6/15/20.
//  Copyright © 2020 Alexander Tereshkov. All rights reserved.
//

import Foundation

final class DummySession: SessionType {
    
    func resolve() {
        Swift.print("I do nothing at the moment..")
    }
    
}
