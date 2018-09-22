//
//  Kiriban.swift
//  Example
//
//  Created by isaoeka on 2018/09/22.
//  Copyright © 2018年 isaoeka. All rights reserved.
//

import UIKit

public extension Int {

    // TODO: Add alias for repdigit / monodigit
    var isZorome: Bool {
        let numbers = self.array
        guard numbers.count > 1, let first = numbers.first else {
            return false
        }
        let bools = numbers.map { $0 == first }
        return bools.all
    }
    
    private var array: [Int] {
        return String(abs(self)).compactMap{ Int(String($0)) }
    }
}

private extension Sequence where Element == Bool {
    var any: Bool {
        return self.reduce(false) { $0 || $1 }
    }
    var all: Bool {
        return self.reduce(true) { $0 && $1 }
    }
}
