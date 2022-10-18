At a glance executables generated for [test.ml](a/test.ml) and [test2.ml](a/test2.ml) should work the same. But it does not seem to be the case: 


```ocaml
(base) ➜  odd-bug git:(main) ✗ dune build && ./_build/default/a/test.exe
foobar%                                                                                                                                                                                                    
(base) ➜  odd-bug git:(main) ✗ dune build && ./_build/default/a/test2.exe
bar%  
```