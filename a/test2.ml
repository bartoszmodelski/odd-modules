let () = 
  let () = Sys.opaque_identity (Lib.Queue.create ()) in
  Printf.printf "bar"