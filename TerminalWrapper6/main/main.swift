import Foundation

/* Arrange properties for project. */
/* Here we create class instance for console command. */
let trm = TrmDelegate()
/* Here we create class instance for manage encription and decripton. */
let command = Command(usingKey: .start)
/* Here we create class instance to create new key for commands excecution. */
let commandKey = CommandKey()

/* Here we create class instance to excecute all functions and call function to amle it. */
let runMain = RunMain()
runMain.excecute()
