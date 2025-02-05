import XCTest
@testable import TestOpti2D

final class PlateShapedFunctionsTest: XCTestCase {
    // Set up random numbers
    let positiveSample_01 = Double.random(in: 0.1..<10)
    let positiveSample_02 = Double.random(in: 0.1..<10)
    let negativeSample_01 = Double.random(in: -10..<0)
    let negativeSample_02 = Double.random(in: -10..<0)
    
    let mccormickPositiveSample_x1 = Double.random(in: 0.1..<4)
    let mccormickPositiveSample_x2 = Double.random(in: 0.1..<4)
    let mccormickNegativeSample_x1 = Double.random(in: -1.5..<0)
    let mccormickNegativeSample_x2 = Double.random(in: -3..<0)
    
    
    // MARK: Correct Minimum Tests
    
    func testBoothFuncMinimum() throws {
        // Minimum at (1,3)
        let minimum = PlateShapedFunctions.boothFunc(parameter: 1, parameter: 3)
        XCTAssertTrue(minimum == 0)
    }
    
    func testMatyasFuncMinimum() throws {
        // Minimum at (0,0)
        let minimum = PlateShapedFunctions.matyasFunc(parameter: 0, parameter: 0)
        XCTAssertTrue(minimum == 0)
    }
    
    func testMccormickFuncMinimum() throws {
        // Minimum at (-0.54719,-1.54719)
        let minimum = PlateShapedFunctions.mccormickFunc(parameter: -0.54719, parameter: -1.54719)
        print(minimum)
        XCTAssertTrue(minimum == -1.913222954882274)
    }
    
    
    // MARK: Positive Smaples compared to Minimum Tests

    func testBoothFuncPositiveSamples() throws {
        // Values have to be greater than 0.
        let result_01 = PlateShapedFunctions.boothFunc(parameter: positiveSample_01, parameter: positiveSample_02)
        let result_02 = PlateShapedFunctions.boothFunc(parameter: positiveSample_02, parameter: positiveSample_01)
        XCTAssertGreaterThan(result_01, 0)
        XCTAssertGreaterThan(result_02, 0)
    }
    
    func testMatyasFuncPositiveSamples() throws {
        // Values have to be greater than 0.
        let result_01 = PlateShapedFunctions.matyasFunc(parameter: positiveSample_01, parameter: positiveSample_02)
        let result_02 = PlateShapedFunctions.matyasFunc(parameter: positiveSample_02, parameter: positiveSample_01)
        XCTAssertGreaterThan(result_01, 0)
        XCTAssertGreaterThan(result_02, 0)
    }
    
    func testMccormickFuncPositiveSamples() throws {
        // Values have to be greater than -1.913222954882274.
        let result_01 = PlateShapedFunctions.mccormickFunc(parameter: mccormickPositiveSample_x1, parameter: mccormickPositiveSample_x2)
        XCTAssertGreaterThan(result_01, -1.913222954882274)
    }
    
    
    //MARK: Negative Samples compared to Minimum Tests
    
    func testBoothFuncNegativeSamples() throws {
        // Values have to be greater than 0.
        let result_01 = PlateShapedFunctions.boothFunc(parameter: negativeSample_01, parameter: negativeSample_02)
        let result_02 = PlateShapedFunctions.boothFunc(parameter: negativeSample_02, parameter: negativeSample_01)
        XCTAssertGreaterThan(result_01, 0)
        XCTAssertGreaterThan(result_02, 0)
    }
    
    func testMatyasFuncNegativeSamples() throws {
        // Values have to be greater than 0.
        let result_01 = PlateShapedFunctions.matyasFunc(parameter: negativeSample_01, parameter: negativeSample_02)
        let result_02 = PlateShapedFunctions.matyasFunc(parameter: negativeSample_02, parameter: negativeSample_01)
        XCTAssertGreaterThan(result_01, 0)
        XCTAssertGreaterThan(result_02, 0)
    }
    
    func testMccormickFuncNegativeSamples() throws {
        // Values have to be greater than -1.913222954882274.
        let result_01 = PlateShapedFunctions.mccormickFunc(parameter: mccormickNegativeSample_x1, parameter: mccormickNegativeSample_x2)
        XCTAssertGreaterThan(result_01, -1.913222954882274)
    }
    
    
    //MARK: Positive and Negative Samples compared to Minimum Tests
    
    func testBoothFuncMixedSamples() throws {
        // Values have to be greater than 0.
        let result_01 = PlateShapedFunctions.boothFunc(parameter: positiveSample_01, parameter: negativeSample_01)
        let result_02 = PlateShapedFunctions.boothFunc(parameter: negativeSample_02, parameter: positiveSample_02)
        XCTAssertGreaterThan(result_01, 0)
        XCTAssertGreaterThan(result_02, 0)
    }
    
    func testMatyasFuncMixedSamples() throws {
        // Values have to be greater than 0.
        let result_01 = PlateShapedFunctions.matyasFunc(parameter: positiveSample_01, parameter: negativeSample_01)
        let result_02 = PlateShapedFunctions.matyasFunc(parameter: negativeSample_02, parameter: positiveSample_02)
        XCTAssertGreaterThan(result_01, 0)
        XCTAssertGreaterThan(result_02, 0)
    }
    
    func testMccormickFuncMixedSamples() throws {
        // Values have to be greater than -1.913222954882274.
        let result_01 = PlateShapedFunctions.mccormickFunc(parameter: mccormickPositiveSample_x1, parameter: mccormickNegativeSample_x2)
        let result_02 = PlateShapedFunctions.mccormickFunc(parameter: mccormickNegativeSample_x1, parameter: mccormickPositiveSample_x2)
        XCTAssertGreaterThan(result_01, -1.913222954882274)
        XCTAssertGreaterThan(result_02, -1.913222954882274)
    }
    
    
    //MARK: Additional Tests
    
    func testGetMinimumOfFunction() throws {
        let boothFunctionMinimum = PlateShapedFunctions.getMinimumOf(.BoothFunction)
        let matyasFunctionMinimum = PlateShapedFunctions.getMinimumOf(.MatyasFunction)
        let mccormickFunctionMinimum = PlateShapedFunctions.getMinimumOf(.MccormickFunction)
        
        XCTAssertEqual(boothFunctionMinimum, 0.0)
        XCTAssertEqual(matyasFunctionMinimum, 0.0)
        XCTAssertEqual(mccormickFunctionMinimum, -1.913222954882274)
    }
    
    func testGetInputForMinimumOfFunction() throws {
        let boothFunctionInputForMinimum = PlateShapedFunctions.getInputForMinimumOf(.BoothFunction)
        let matyasFunctionInputForMinimum = PlateShapedFunctions.getInputForMinimumOf(.MatyasFunction)
        let mccormickFunctionInputForMinimum = PlateShapedFunctions.getInputForMinimumOf(.MccormickFunction)
        
        XCTAssert(boothFunctionInputForMinimum == (1.0, 3.0))
        XCTAssert(matyasFunctionInputForMinimum == (0.0, 0.0))
        XCTAssert(mccormickFunctionInputForMinimum == (-0.54719, -1.54719))

    }
}
