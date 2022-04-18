import Foundation

class CommandKey {
    /* Function to create new salt array. */
    func createKey(key: [UInt8], slt: String) -> [UInt8] {
        let sltxt = [UInt8](slt.utf8) // salt in utf8
        var array = [UInt8]() // new array
        key.enumerated()
            .forEach {
                array.append(
                    /* Create new key. */
                    mapKey(element: $0.element,
                              offset: $0.offset,
                              text: sltxt)
                )
            }
        return array
    }
    
    /* Function to map salt and any string. */
    private func mapKey(element: UInt8,
                           offset: Int,
                           text: [UInt8]) -> UInt8
    {
        /* Сombine salt and the original string. */
        return element ^ text[offset % text.count]
    }
}
