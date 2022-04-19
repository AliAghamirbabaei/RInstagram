//
//  Extension.swift
//  Connecty
//
//  Created by Ali Aghamirbabaei on 4/16/22.
//

import Foundation

extension RangeExpression where Bound: FixedWidthInteger {
    func randomElements(_ n: Int) -> [Bound] {
        precondition(n > 0)
        switch self {
        case let range as Range<Bound>: return (0..<n).map { _ in .random(in: range) }
        case let range as ClosedRange<Bound>: return (0..<n).map { _ in .random(in: range) }
        default: return []
        }
    }
}

extension Range where Bound: FixedWidthInteger {
    var randomElement: Bound { .random(in: self) }
}

extension ClosedRange where Bound: FixedWidthInteger {
    var randomElement: Bound { .random(in: self) }
}
