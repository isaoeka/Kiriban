//
//  Kiriban.swift
//  Example
//
//  Created by isaoeka on 2018/09/22.
//  Copyright © 2018年 isaoeka. All rights reserved.
//

import UIKit

public extension Int {
    
    /**
     * 10, 200, 3000, ...etc
     */
    var isKiriban: Bool {
        let numbers = self.array
        guard numbers.count > 1 else {
            return false
        }
        return numbers.dropFirst().map { $0 == 0 }.all
    }

    /**
     * 11, 222, 3333, ...etc
     */
    var isZoroban: Bool {
        let numbers = self.array
        guard numbers.count > 1, let first = numbers.first else {
            return false
        }
        let bools = numbers.map { $0 == first }
        return bools.all
    }
    // alias..
    var isZorome: Bool { return self.isZoroban }
    var isRepdigit: Bool { return self.isZoroban }
    var isMonodigit: Bool { return self.isZoroban }

    /**
     * 123, 1234, 12345, ...etc
     */
    var isRenban: Bool {
        let numbers = self.array
        guard numbers.count > 1 else {
            return false
        }
        return numbers.enumerated().map { index, next -> Bool in
            let prev = index == 0 ? 0 : numbers[index - 1]
            return prev == (next - 1)
        }.all
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
