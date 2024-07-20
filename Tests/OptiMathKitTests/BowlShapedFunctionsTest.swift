import XCTest
@testable import OptiMathKit

final class BowlShapedFunctionsTest: XCTestCase {
    // Set up random numbers
    let positiveSample_01 = Double.random(in: 0.1..<10)
    let positiveSample_02 = Double.random(in: 0.1..<10)
    let negativeSample_01 = Double.random(in: -10..<0)
    let negativeSample_02 = Double.random(in: -10..<0)
    
    
    // MARK: Correct Minimum Tests
    
    func testBohachevskyFuncMinimum() throws {
        // Minimum at (0,0)
        let minimum = BowlShapedFunctions.bohachevskyFunc(parameter: 0, parameter: 0)
        XCTAssertTrue(minimum == 0, "The minimum is not correct.")
    }
    
    
    // MARK: Positive Smaples compared to Minimum Tests

    func testBohachevskyhFuncPositiveSamples() throws {
        // Values have to be greater than 0.
        let result_01 = BowlShapedFunctions.bohachevskyFunc(parameter: positiveSample_01, parameter: positiveSample_02)
        let result_02 = BowlShapedFunctions.bohachevskyFunc(parameter: positiveSample_02, parameter: positiveSample_01)
        XCTAssertGreaterThan(result_01, 0, "The result has to be greater than the minimum.")
        XCTAssertGreaterThan(result_02, 0, "The result has to be greater than the minimum.")
    }
    
    
    //MARK: Negative Samples compared to Minimum Tests
    
    func testBohachevskyFuncNegativeSamples() throws {
        // Values have to be greater than 0.
        let result_01 = BowlShapedFunctions.bohachevskyFunc(parameter: negativeSample_01, parameter: negativeSample_02)
        let result_02 = BowlShapedFunctions.bohachevskyFunc(parameter: negativeSample_02, parameter: negativeSample_01)
        XCTAssertGreaterThan(result_01, 0, "The result has to be greater than the minimum.")
        XCTAssertGreaterThan(result_02, 0, "The result has to be greater than the minimum.")
    }

    //MARK: Positive and Negative Samples compared to Minimum Tests
    
    func testBohachevskyFuncMixedSamples() throws {
        // Values have to be greater than 0.
        let result_01 = BowlShapedFunctions.bohachevskyFunc(parameter: positiveSample_01, parameter: negativeSample_01)
        let result_02 = BowlShapedFunctions.bohachevskyFunc(parameter: negativeSample_02, parameter: positiveSample_02)
        XCTAssertGreaterThan(result_01, 0, "The result has to be greater than the minimum.")
        XCTAssertGreaterThan(result_02, 0, "The result has to be greater than the minimum.")
    }
}

