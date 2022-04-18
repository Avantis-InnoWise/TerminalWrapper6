import Foundation

/* Class to run encryption/decryption commands. */
final class Command {
    /* Is a salt to mix original string (we can use any string). Also we have to use the same salt to encryp. */
    /* !! We have to use the same salt and separator to encrypt and decrypt !! */
    private let slt: String
    
    init(usingKey slt: SaltKey) {
        self.slt = slt.rawValue
    }
    
    /* UTF8 encryption. */
    func act(usingString str: String) -> [UInt8] {
        let actArray = commandKey.createKey(key: [UInt8](str.utf8),
                                            slt: slt)
        return actArray
    }
    
    /* UTF8 decryption. */
    func assert(usingKey key: [UInt8]) -> String {
        let assertArray = commandKey.createKey(key: key,
                                               slt: slt)
        guard let txtend = String(bytes: assertArray,
                                  encoding: .utf8) else { return "" }
        
        return txtend
    }
    
}
