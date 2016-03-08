
structure Main =
struct
  fun reverse [] = []
    | reverse (h :: t) = reverse(t) @ [h];

  fun space_cat s = s ^ " ";

  fun main (prog_name, args) =
  let
    val _ = print ("Program name: " ^ prog_name ^ "\n")
    val _ = print "Arguments:\n"
    val _ = map (fn s => print ("\t" ^ s ^ "\n")) args
    val _ = print "Reverse args:\n"
    val _ = map (print o space_cat) (reverse args)
    val _ = print "\n"
  in
    1
  end;

end;
