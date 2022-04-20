import Foundation

/* Salt commands. */
enum Salt {
    case start // setup
    case end // -c
    
    var rawValue: String {
        switch self {
        case .start:
            return "SomeSaltsdgfedwg"
        case .end:
            return "213vg"
        }
    }
}
