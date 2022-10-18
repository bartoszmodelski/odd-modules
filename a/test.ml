open Lib

let () = 
  let () = Sys.opaque_identity (Queue.create ()) in
  Printf.printf "bar"