import Foundation

/* Arrange properties for project. */
/* Here we create class instance for console command. */
let combine = Combine()
/* Here we create class instance for manage encription and decripton. */
let prc = SingleProcessing(usingKey: .start)
/* Here we create class instance to create new key for commands excecution. */
let delegate = Delegate()

/* Here we create class instance to excecute all functions and call function to amle it. */
let term = TermCmd()
term.excecute()
