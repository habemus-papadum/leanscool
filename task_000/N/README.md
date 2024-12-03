Thoughts
============
For both subtasks, the first challenge for me is to figure out how to formalize the theorem in lean4. 'sum of first n' seems simple;  not sure how to formalize 'argmin' in lean4.  

for the sum of the first `n` natural numbers,  I would like to try and prove it in multiple ways:
- induction --> means I will have to figure out how to do induction in lean4.  Wonder if it is possible to leanr this by just reading Theorem Proving in Lean; Almost certainly induction is explained in MoP or MiL, but they are likely to have proofs for the theorem I am trying to prove.
  - Will it be possible to combine induction with calc-style proofs for the base and inductive steps?
- can aesop just prove it?  
- use blueprint -- I need to brush up on latex; can create some silly lemmas
- small variations (sum of evens, sum of odds, sum of squares, sum of cubes, etc.)

### Trial 1
Tried for about 90 minutes to get a proof by induction with a calc style proof for the inductive step, trying to pull syntax from memory and limited claude chats (was testing two things at once -- how well did I pickup syntax from my readings (not very well) and can claude help fill in the gaps -- yes, I think so, up to a point)
Could not get there on my own -- will put it down, and refer to lean docs for a second try


### Natural Numbers Game
 Retreated back to basics and worked on completing Natural Numbers Game
  - took ~10 hours to beat all worlds, somewhat humbling...
    - I had hoped it would be easier: I had read ~3-4 chapters of MoP, MiL, and TPiL, FPiL, watch videos, read a few papers but did not operationalize what I was reading
    - but at least I did it
  - ~ halfway through Set Game
  - Have not started on Logic Game
  - Definitely need to return to this game a few more times -- despite solving it, many times I felt like in was in a fugue state.  Do not feel like I could explain to someone might thought process. 

### Trial 2 -- success
Returned to sum of first n -- was able to solve! ~2 hr (see `task_000/Basic.lean`)    

### Future Tasks
- Blueprint-ify sum of first n
- Mechanics of Proof -- do exercises!!!
- Finish Set and Logic games
- Task_000, part 2?
- Other proofs: exact formula for fibonacci
- MiL -- read and do exercises
- FPiL 
  - rayrtacer? raytracing language
  - dependency graph for defs and theorems in Mathlib