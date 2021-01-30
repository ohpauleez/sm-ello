
structure HelloChannels =
struct

  fun helloChans () =
    let
      val str_c : string CML.chan = CML.channel ()
    in
      CML.spawn (fn () => TextIO.print ((CML.recv str_c) ^ "\n"));
      CML.send (str_c, "Hello World!");
      CML.exit ()
    end

  fun main (name, argv) =
    RunCML.doit (fn () => ignore (CML.spawn helloChans), NONE)
end

