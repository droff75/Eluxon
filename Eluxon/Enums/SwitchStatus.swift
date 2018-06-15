//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by david.roff on 1/22/18.
//  Copyright © 2018 david.roff. All rights reserved.
//

import Foundation

enum SwitchStatus: Toggleable {
    case on, off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
