import Foundation

/// This struct contains smooth and bowl shaped functions.
/// Each function has one global minimum.
public struct BowlShapedFunctions {
    
    /// Calculates a target value according to the Bohachevsky Function. Normally the
    /// function is evaluated on a rectangle with x1, x2 in [-100; 100].
    /// - Parameters:
    ///   - x1: arbitrary double value
    ///   - x2: arbitrary double value
    /// - Returns: target value calculated by the function
    public static func bohachevskyFunc(parameter x1: Double, parameter x2: Double) -> Double {
        let firstExp: Double = pow(x1, 2) + 2 * pow(x2, 2)
        let secondExp: Double = -0.3 * cos(3.0 * Double.pi * x1) - 0.4 * cos(4.0 * Double.pi * x2) + 0.7
        
        let result: Double = firstExp - secondExp

        return result
    }
    
    
}

