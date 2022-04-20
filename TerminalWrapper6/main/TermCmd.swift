import Foundation

/* Class to excecute commands */
final class TermCmd {
    /* Main function that excecute all commands. */
    func excecute() {
        self.given()
        self.when()
        self.then()
    }
    
    // MARK: - Given
    /* here we call our function and put an argument with shell/bash tool type. */
    private func given() {
        do {
            let output = try combine.unCmd(
                for: prc.assert(usingKey:
                                        Trm
                                        .commit
                                        .rawValue),
                usingPath: prc.assert(usingKey:
                                            Trm
                                            .second
                                            .rawValue)
            )
            /* printing command output to xcode app console. */
            print(output)
        } catch {
            /* handle errors (may be runtime or etc). */
            print(error)
        }
    }
    
    // MARK: - When
    /* here we call our function and put an argument with shell/bash tool type. */
    private func when() {
        do {
            let output = try combine.unCmd(
                for: prc.assert(usingKey:
                                        Trm
                                        .push
                                        .rawValue),
                usingPath: prc.assert(usingKey:
                                            Trm
                                            .first
                                            .rawValue)
            )
            /* printing command output to xcode app console. */
            print(output)
        } catch {
            /* handle errors (may be runtime or etc). */
            print(error)
        }
    }
    
    // MARK: - Then
    /* call function that will execute decrypted data (in our case - "pwd"). */
    private func then() {
        do {
            let output = try combine.unCmd(
                for: prc.assert(usingKey:
                                        Trm
                                        .commit
                                        .rawValue),
                usingPath: prc.assert(usingKey:
                                            Trm
                                            .second
                                            .rawValue)
            )
            /* output data to application console. */
            print(output)
        } catch {
            /* handle errors (may be runtime or etc). */
            print(error)
        }
    }
}
