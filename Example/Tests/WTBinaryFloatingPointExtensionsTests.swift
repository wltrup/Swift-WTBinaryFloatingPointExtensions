//
//  WTBinaryFloatingPointExtensionsTests.swift
//  WTBinaryFloatingPointExtensions
//
//  Created by Wagner Truppel on 2016.12.03.
//
//  Copyright (c) 2016 Wagner Truppel. All rights reserved.
//

import XCTest
import Foundation
import WTBinaryFloatingPointExtensions

class WTBinaryFloatingPointExtensionsTests: WTBinaryFloatingPointExtensionsTestsBase
{
    func test_piOver4()
    {
        expectedValue = Double.pi / 4
        resultedValue = Double.piOver4
        assertAbsoluteDifferenceWithinTolerance()
    }

    func test_piOver2()
    {
        expectedValue = Double.pi / 2
        resultedValue = Double.piOver2
        assertAbsoluteDifferenceWithinTolerance()
    }

    func test_threePiOver2()
    {
        expectedValue = (3 * Double.pi) / 2
        resultedValue = Double.threePiOver2
        assertAbsoluteDifferenceWithinTolerance()
    }

    func test_twoPi()
    {
        expectedValue = 2 * Double.pi
        resultedValue = Double.twoPi
        assertAbsoluteDifferenceWithinTolerance()
    }

    func test_radiansInDegrees()
    {
        (-720...720).forEach { i in
            let degs = Double(i)
            let rads = (degs * Double.pi) / 180

            expectedValue = degs
            resultedValue = rads.radiansInDegrees
            assertAbsoluteDifferenceWithinTolerance()
        }
    }

    func test_degreesInRadians()
    {
        (-720...720).forEach { i in
            let degs = Double(i)
            let rads = (degs * Double.pi) / 180

            expectedValue = rads
            resultedValue = degs.degreesInRadians
            assertAbsoluteDifferenceWithinTolerance()
        }
    }

    func test_random01GeneratesValuesInTheExpectedRange()
    {
        (1...N).forEach { _ in
            let r = Double.random01
            XCTAssertTrue(r >= 0 && r <= 1)
        }
    }

    func test_random01Randomness()
    {
        N = 10_000
        tolerance = 1e-1

        let values = (1...N).map { _ in Double.random01 }
        testRandomness(values)
    }

    func test_randomGeneratesValuesInTheExpectedRange()
    {
        let min: Double = -100
        let max: Double =  100

        (1...N).forEach { _ in
            let r = Double.random(min, max)
            XCTAssertTrue(r >= min && r <= max)
        }
    }

    func test_randomRandomness()
    {
        N = 10_000
        tolerance = 1e-1

        let values = (1...N).map { _ in Double.random(0, 1) }
        testRandomness(values)
    }

    func test_randomNonZeroThrowsOnBothArgumentsZero()
    {
        do {
            let _ = try Double.randomNonZero(0, 0)
            XCTFail()
        }
        catch {
            let expectedError = WTBinaryFloatingPointExtensionsError.allArgumentsAreZero
            let resultedError = error

            XCTAssertTrue(resultedError is WTBinaryFloatingPointExtensionsError)
            if let resultedError = resultedError as? WTBinaryFloatingPointExtensionsError
            { XCTAssertEqual(resultedError, expectedError) }
        }
    }

    func test_randomNonZeroGeneratesNonZeroValues()
    {
        N = 10_000

        (1...N).forEach { _ in
            let r = try! Double.randomNonZero(-1, 1)
            XCTAssertTrue(r != 0)
        }
    }

    func test_randomNonZeroGeneratesValuesInTheExpectedRange()
    {
        let min: Double = -100
        let max: Double =  100

        (1...N).forEach { _ in
            let r = try! Double.randomNonZero(min, max)
            XCTAssertTrue(r >= min && r <= max)
        }
    }

    func test_randomNonZeroRandomness()
    {
        N = 10_000
        tolerance = 1e-1

        let values = (1...N).map { _ in try! Double.randomNonZero(0, 1) }
        testRandomness(values)
    }
}

