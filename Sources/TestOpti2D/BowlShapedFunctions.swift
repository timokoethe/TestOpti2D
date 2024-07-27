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
    
    /// Calculates a target value according to the Sphere Function. Normally the
    /// function is evaluated on the hypercube with x1, x2 in [-5.12, 5.12]
    /// - Parameters:
    ///   - x1: arbitrary double value
    ///   - x2: arbitrary double value
    /// - Returns: target value calculated by the function
    public static func sphereFunc(parameter x1: Double, parameter x2: Double) -> Double {
        let result: Double = pow(x1, 2) + pow(x2, 2)
        return result
    }
  
    
    /// Returns the global minimum of a given function in the defined input domain.
    /// - Parameter functionName: function to get the minimum
    /// - Returns: global minimum of the given function
    public static func getMinimumOf(_ functionName: BowlShapedFunctionNames) -> Double {
        switch functionName {
        case .BohachevskyFunction:
            return 0.0
        case .SphereFunction:
            return 0.0
        }
    }
    
    /// Returns the input to get the global minimum of a given function in the defined input domain.
    /// - Parameter functionName: function to get the input for the global minimum
    /// - Returns: input for the global minimum of the given function
    public static func getInputForMinimumOf(_ functionName: BowlShapedFunctionNames) -> (Double, Double) {
        switch functionName {
        case .BohachevskyFunction:
            return (0.0, 0.0)
        case .SphereFunction:
            return (0.0, 0.0)
        }
    }
}

/// This represents a type for each bowl shaped function by its name.
public enum BowlShapedFunctionNames {
    case BohachevskyFunction
    case SphereFunction
}
