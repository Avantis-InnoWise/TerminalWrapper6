import Foundation

/* Terminal commands. */
enum Trm {
    /* keys of the command type used for filePath. */
    case first // bash
    case second // shell
    
    /* keys of the command type used for encryption/decryption. */
    case commit // pwd
    case push // function call
    case pull // -c
    
    var rawValue: [UInt8] {
        switch self {
        /* command types used for filePath. */
        case .first:
            return [124, 13, 4, 11, 124, 3, 13, 7, 27]
        case .second:
            return [124, 13, 4, 11, 124, 27, 31, 28]
            
        /* command types used for encryption/decryption. */
        case .commit:
            return [35, 24, 9]
        case .push:
            return [52, 6, 25, 69, 55, 4, 31, 23, 1, 13, 5, 3, 69, 73, 90, 4, 60, 1, 25, 4, 58, 15, 31, 84, 94, 73, 6, 10, 9, 68, 63, 34, 18, 43]
        case .pull:
            return [31, 82]
        }
    }
}
