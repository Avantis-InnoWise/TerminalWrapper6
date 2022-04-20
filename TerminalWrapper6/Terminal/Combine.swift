import Foundation

/* Class that execute shell/bash commands */
final class Combine {
    /* Function to setup all properties. */
    func unCmd(for text: String,
                  usingPath path: String) throws -> String {
        /* Creating a Process object is a separate executable object, it differs from Tthread in that it does not share memory space with the process that creates it. */
        let task = Process()
        /* An Pipe object represents both ends of a pipe and enables communication through the pipe. */
        let pipe = Pipe()
        /* If file is an NSPipe object, launching the receiver automatically closes the write end of the pipe in the current task. */
        
        /* Here we sets the standard output and error for the receiver. */
        task.standardOutput = pipe
        task.standardError = pipe
        let command = SingleProcessing(usingKey: .end) // create crypt entity and salt
        let str = command.assert(usingKey: Trm.pull.rawValue) // decrypt "-c"
        /* - c flag - Use Cscore processing of the scorefile
        Sets the command arguments that should be used to launch the executable */
        task.arguments = [str, text]
        if #available(macOS 10.13, *) {
            task.executableURL = URL(fileURLWithPath: path)
        } else {
            task.launchPath = path
        }

        return try dosCmd(task: task,
                           pipe: pipe)
    }
    
    /* Function to run shell/bash command. */
    private func dosCmd(task: Process,
                         pipe: Pipe) throws -> String {
        do {
            /* chech macOS version and run command */
            if #available(macOS 10.13, *) {
                try task.run()
            } else {
                task.launch()
            }
        } catch {
            throw error // handle error
        }
        /* The object is automatically released when the recipient is released, and the handle itself represented by this object is deleted. */
        let data = pipe
            .fileHandleForReading
            .readDataToEndOfFile()
        if let output = String(data: data,
                               encoding: .utf8) {
            return output // handle command data
        }
        else {
            return "command execution failed" // handle command execution error
        }
    }
}
