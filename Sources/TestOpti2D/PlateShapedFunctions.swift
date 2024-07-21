import Foundation

/// This struct contains smooth and plated shaped functions.
/// Each function has one global minimum.
public struct PlateShapedFunctions {
    
    /// Calculates a target value according to the Booth Function. Normally the
    /// function is evaluated on a rectangle with x1, x2 in [-10; 10].
    /// - Parameters:
    ///   - x1: arbitrary double value
    ///   - x2: arbitrary double value
    /// - Returns: target value calculated by the function
    public static func boothFunc(parameter x1: Double, parameter x2: Double) -> Double {
        let firstBracket: Double = x1 + (2.0 * x2) - 7.0
        let firstExp: Double = pow(firstBracket, 2)
        
        let secondBracket = (2.0 * x1) + x2 - 5.0
        let secondExp: Double = pow(secondBracket, 2)
        
        let result: Double = firstExp + secondExp
        return result
    }
    
    /// Calculates a target value according to the Matyas Function. Normally the
    /// function is evaluated on a rectangle with x1, x2 in [-10; 10].
    /// - Parameters:
    ///   - x1: arbitrary double value
    ///   - x2: arbitrary double value
    /// - Returns: target value calculated by the function
    public static func matyasFunc(parameter x1: Double, parameter x2: Double) -> Double {
        let firstExp: Double = 0.26 * (pow(x1, 2) + pow(x2, 2))
        let secondExp: Double = 0.48 * x1 * x2
        
        let result: Double = firstExp - secondExp
        return result
    }
    
    /// Calculates a target value according to the McCormick Function. Normally the
    /// function is evaluated on a rectangle with x1 in [-1.5; 4] and x2 in [-3; 4].
    /// - Parameters:
    ///   - x1: arbitrary double value
    ///   - x2: arbitrary double value
    /// - Returns: target value calculated by the function
    public static func mccormickFunc(parameter x1: Double, parameter x2: Double) -> Double {
        let firstExp: Double = sin(x1 + x2) + pow((x1 - x2), 2) - 1.5 * x1 + 2.5 * x2 + 1
        let result: Double = firstExp
        return result
    }
}
