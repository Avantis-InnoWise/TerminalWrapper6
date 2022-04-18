import Foundation

/* Salt commands. */
enum SaltKey {
    case start // setup
    case execute // -c
    
    var rawValue: String {
        switch self {
        case .start:
            return "SomeSaltsdgfedwg"
        case .execute:
            return "213vg"
        }
    }
}
