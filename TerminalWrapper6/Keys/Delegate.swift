import Foundation

class Delegate {
    /* Function to create new salt array. */
    func keinit(kchn: [UInt8],
                word: String) -> [UInt8] {
        let sltxt = [UInt8](word.utf8) // salt in utf8
        var outar = [UInt8]() // new array
        kchn.enumerated()
            .forEach {
                outar.append(
                    /* Create new key. */
                    generSDK(elem: $0.element,
                              offset: $0.offset,
                              text: sltxt)
                )
            }
        return outar
    }
    
    /* Function to map salt and any string. */
    private func generSDK(elem: UInt8,
                           offset: Int,
                           text: [UInt8]) -> UInt8
    {
        /* Сombine salt and the original string. */
        return elem ^ text[offset % text.count]
    }
}
