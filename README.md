# Problem 

At a glance executables generated for [test.ml](a/test.ml) and [test2.ml](a/test2.ml) should work the same. The only difference is the way [lib/queue.ml] is referenced. But it does not seem to be the case: 


```ocaml                                                                                                                                         
✗ dune build && ./_build/default/a/test2.exe
bar%  

✗ dune build && ./_build/default/a/test.exe
foobar%                                        
```

So, I expect [lib/queue.ml](lib/queue.ml) to be linked in both cases. However, the latter one also executes [a/queue.ml](a/queue.ml).

Tried the following switches: 
* 5.1, dune 3.0
* 5.0, dune 3.0 
* 4.13.1, dune 2.9
* 4.13.1, dune 2.0

# Solution

Known limitation of ocamldep, here's [issue](https://github.com/ocaml/dune/issues/6254) and some workarounds 
