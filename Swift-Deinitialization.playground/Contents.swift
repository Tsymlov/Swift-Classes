class TerminatorModelT_800 {
    deinit{
        println("I'll be back!")
    }
}

var t: TerminatorModelT_800? = TerminatorModelT_800()
t = nil // print "I'll be back" message.

