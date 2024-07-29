import Foundation

/// This struct contains smooth and plate shaped functions.
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
    
    
    /// Returns the global minimum of a given function in the defined input domain.
    /// - Parameter functionName: function to get the minimum
    /// - Returns: global minimum of the given function
    public static func getMinimumOf(_ functionName: PlateShapedFunctionNames) -> Double {
        switch functionName {
        case .BoothFunction:
            return 0.0
        case .MatyasFunction:
            return 0.0
        case .MccormickFunction:
            return -1.913222954882274
        }
    }
    
    /// Returns the input to get the global minimum of a given function in the defined input domain.
    /// - Parameter functionName: function to get the input for the global minimum
    /// - Returns: input for the global minimum of the given function
    public static func getInputForMinimumOf(_ functionName: PlateShapedFunctionNames) -> (Double, Double) {
        switch functionName {
        case .BoothFunction:
            return (1.0, 3.0)
        case .MatyasFunction:
            return (0.0, 0.0)
        case .MccormickFunction:
            return (-0.54719, -1.54719)
        }
    }
}

/// Represents a type for each plate shaped function by its name.
public enum PlateShapedFunctionNames {
    case BoothFunction
    case MatyasFunction
    case MccormickFunction
}
