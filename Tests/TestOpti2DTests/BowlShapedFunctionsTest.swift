import XCTest
@testable import TestOpti2D

final class BowlShapedFunctionsTest: XCTestCase {
    // Set up random numbers for Bohachevsky Function
    let bohachevskyPositiveSample_01 = Double.random(in: 0.01..<100)
    let bohachevskyPositiveSample_02 = Double.random(in: 0.01..<100)
    let bohachevskyNegativeSample_01 = Double.random(in: -100..<0)
    let bohachevskyNegativeSample_02 = Double.random(in: -100..<0)
    
    // Set up random numbers for Sphere Function
    let spherePositiveSample_01 = Double.random(in: 0.01..<5.12)
    let spherePositiveSample_02 = Double.random(in: 0.01..<5.12)
    let sphereNegativeSample_01 = Double.random(in: -5.12..<0)
    let sphereNegativeSample_02 = Double.random(in: -5.12..<0)
    
    // Set up random numbers for Sum of different powers Function
    let sumPositiveSample_01 = Double.random(in: 0.1..<1)
    let sumPositiveSample_02 = Double.random(in: 0.1..<1)
    let sumNegativeSample_01 = Double.random(in: -1..<0)
    let sumNegativeSample_02 = Double.random(in: -1..<0)
    
    
    // MARK: Correct Minimum Tests
    
    func testBohachevskyFuncMinimum() throws {
        // Minimum at (0,0)
        let minimum = BowlShapedFunctions.bohachevskyFunc(parameter: 0, parameter: 0)
        XCTAssertTrue(minimum == 0)
    }
    
    func testSphereFuncMinimum() throws {
        // Minimum at (0,0)
        let minimum = BowlShapedFunctions.sphereFunc(parameter: 0, parameter: 0)
        XCTAssertTrue(minimum == 0)
    }
    
    func testSumOfDifferentPowersFuncMinimum() throws {
        // Minimum at (0,0)
        let minimum = BowlShapedFunctions.sumOfDifferentPowersFunc(parameter: 0, parameter: 0)
        XCTAssertTrue(minimum == 0)
    }
  
    
    // MARK: Positive Smaples compared to Minimum Tests

    func testBohachevskyhFuncPositiveSamples() throws {
        // Values have to be greater than 0.
        let result_01 = BowlShapedFunctions.bohachevskyFunc(parameter: bohachevskyPositiveSample_01,
                                                            parameter: bohachevskyPositiveSample_02)
        let result_02 = BowlShapedFunctions.bohachevskyFunc(parameter: bohachevskyPositiveSample_02,
                                                            parameter: bohachevskyPositiveSample_01)
        XCTAssertGreaterThan(result_01, 0)
        XCTAssertGreaterThan(result_02, 0)
    }
    
    func testSphereFuncPositiveSamples() throws {
        // Values have to be greater than 0.
        let result_01 = BowlShapedFunctions.sphereFunc(parameter: spherePositiveSample_01,
                                                       parameter: spherePositiveSample_02)
        let result_02 = BowlShapedFunctions.sphereFunc(parameter: spherePositiveSample_02,
                                                       parameter: spherePositiveSample_01)
        XCTAssertGreaterThan(result_01, 0)
        XCTAssertGreaterThan(result_02, 0)
    }
    
    func testSumOfDifferentPowersFuncPositiveSamples() throws {
        // Values have to be greater than 0.
        let result_01 = BowlShapedFunctions.sumOfDifferentPowersFunc(parameter: sumPositiveSample_01,
                                                                     parameter: sumPositiveSample_02)
        let result_02 = BowlShapedFunctions.sumOfDifferentPowersFunc(parameter: sumPositiveSample_02,
                                                                     parameter: sumPositiveSample_01)
        XCTAssertGreaterThan(result_01, 0)
        XCTAssertGreaterThan(result_02, 0)
    }
    
    
    //MARK: Negative Samples compared to Minimum Tests
    
    func testBohachevskyFuncNegativeSamples() throws {
        // Values have to be greater than 0.
        let result_01 = BowlShapedFunctions.bohachevskyFunc(parameter: bohachevskyNegativeSample_01,
                                                            parameter: bohachevskyNegativeSample_02)
        let result_02 = BowlShapedFunctions.bohachevskyFunc(parameter: bohachevskyNegativeSample_02,
                                                            parameter: bohachevskyNegativeSample_01)
        XCTAssertGreaterThan(result_01, 0)
        XCTAssertGreaterThan(result_02, 0)
    }
    
    func testSphereFuncNegaitiveSamples() throws {
        // Values have to be greater than 0.
        let result_01 = BowlShapedFunctions.sphereFunc(parameter: sphereNegativeSample_01,
                                                       parameter: sphereNegativeSample_02)
        let result_02 = BowlShapedFunctions.sphereFunc(parameter: sphereNegativeSample_02,
                                                       parameter: sphereNegativeSample_01)
        XCTAssertGreaterThan(result_01, 0)
        XCTAssertGreaterThan(result_02, 0)
    }
    
    func testSumOfDifferentPowersFuncNegaitiveSamples() throws {
        // Values have to be greater than 0.
        let result_01 = BowlShapedFunctions.sumOfDifferentPowersFunc(parameter: sumNegativeSample_01,
                                                                     parameter: sumNegativeSample_02)
        let result_02 = BowlShapedFunctions.sumOfDifferentPowersFunc(parameter: sumNegativeSample_02,
                                                                     parameter: sumNegativeSample_01)
        XCTAssertGreaterThan(result_01, 0)
        XCTAssertGreaterThan(result_02, 0)
    }

    //MARK: Positive and Negative Samples compared to Minimum Tests
    
    func testBohachevskyFuncMixedSamples() throws {
        // Values have to be greater than 0.
        let result_01 = BowlShapedFunctions.bohachevskyFunc(parameter: bohachevskyPositiveSample_01,
                                                            parameter: bohachevskyNegativeSample_01)
        let result_02 = BowlShapedFunctions.bohachevskyFunc(parameter: bohachevskyNegativeSample_02,
                                                            parameter: bohachevskyPositiveSample_02)
        XCTAssertGreaterThan(result_01, 0)
        XCTAssertGreaterThan(result_02, 0)
    }
    
    func testSphereFuncMixedSamples() throws {
        // Values have to be greater than 0.
        let result_01 = BowlShapedFunctions.sphereFunc(parameter: spherePositiveSample_01,
                                                       parameter: sphereNegativeSample_01)
        let result_02 = BowlShapedFunctions.sphereFunc(parameter: sphereNegativeSample_02,
                                                       parameter: spherePositiveSample_02)
        XCTAssertGreaterThan(result_01, 0)
        XCTAssertGreaterThan(result_02, 0)
    }
    
    func testSumOfDifferentPowersFuncMixedSamples() throws {
        // Values have to be greater than 0.
        let result_01 = BowlShapedFunctions.sumOfDifferentPowersFunc(parameter: sumPositiveSample_01,
                                                                     parameter: sumNegativeSample_01)
        let result_02 = BowlShapedFunctions.sumOfDifferentPowersFunc(parameter: sumNegativeSample_02,
                                                                     parameter: sumPositiveSample_02)
        XCTAssertGreaterThan(result_01, 0)
        XCTAssertGreaterThan(result_02, 0)
    }
  
    
    //MARK: Additional Tests
    
    func testGetMinimumOfFunction() throws {
        let bohachevskyFunctionMinimum = BowlShapedFunctions.getMinimumOf(.BohachevskyFunction)
        let sphereFunctionMinimum = BowlShapedFunctions.getMinimumOf(.SphereFunction)
        let sumOfDifferentPowersFunctionMinimum = BowlShapedFunctions.getMinimumOf(.SumOfDifferentPowersFunction)
        
        XCTAssertEqual(bohachevskyFunctionMinimum, 0.0)
        XCTAssertEqual(sphereFunctionMinimum, 0.0)
        XCTAssertEqual(sumOfDifferentPowersFunctionMinimum, 0.0)
    }
    
    func testGetInputForMinimumOfFunction() throws {
        let bohachevskyFunctionInputForMinimum = BowlShapedFunctions.getInputForMinimumOf(.BohachevskyFunction)
        let sphereFunctionInputForMinimum = BowlShapedFunctions.getInputForMinimumOf(.SphereFunction)
        let sumOfDifferentPowersFunctionInputForMinimum = BowlShapedFunctions.getInputForMinimumOf(.SumOfDifferentPowersFunction)
        
        XCTAssert(bohachevskyFunctionInputForMinimum == (0.0, 0.0))
        XCTAssert(sphereFunctionInputForMinimum == (0.0, 0.0))
        XCTAssert(sumOfDifferentPowersFunctionInputForMinimum == (0.0, 0.0))
    }
}
