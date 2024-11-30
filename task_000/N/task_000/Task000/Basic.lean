import Mathlib

#check 1+1

/-
Realize I don't really know the syntax of lean 4 very well by memory -- I have jst been reading .
I decided to see how easy it would be to use Claude to help me understand how to do various things in Lean 4

The first thing I asked it was how to do block comments in lean 4. Unfortunately, instead of using the word 'comments',
I use the word 'quotes' and it told me to use triple quotes and then showed me the block comment syntax for Lean4  anyway.
 But, it showed me the notation for documentation style block comments (/-- -/) which ended up creating an error when there was no definiton
 following the block comment, which took me a second to figure out.
-/

/-
Then I asked it to show me the notation for a summation in lean 4.

It gave me an import that didn't work. I assume it's been refactored to something else. But it did show me several ways of expressing a summation
-/
#check ∑ x in {1, 2, 3} , x

/-
from here I think I should be able to progress from memory based on what I have been reading in the Lean 4 documentation.
-/

theorem sum_first_n' (n : ℕ) : ∑ i ∈ Finset.range n,  i = n*(n+1)/2:= by
  sorry

/-
It took several tries but I eventually arrived at the above formalization without having to refer back to MoP or MiL (or Claude).
-/

/- Lets see if aesop can prove this-/
example  (n : ℕ) : ∑ i ∈ Finset.range n,  i = n*(n+1)/2:= by
  /-aesop-/
  /-
  tactic 'aesop' failed, made no progress
  Initial goal:

  n : ℕ
  ⊢ ∑ i ∈ Finset.range n, i = n * (n + 1) / 2
  -/
  sorry

  /- Then it occurred to me that I should check I wasn't off by 1 in the range. 'Goto Definition'
  in vscode showed that I was.  So let's try again-/

example  (n : ℕ) : ∑ i ∈ Finset.range (n + 1),  i = n*(n+1)/2:= by
    /- aesop -/
    /- Same as above; TODO: figure out why -/
    sorry



/- ok, so let's try induction; first I will ask claude-/
/- "Trial 1" I thrashed around for bit trying to find the right tactics and syntax but could not get it
Below if where I left it
-/
/-
example  (n : ℕ) : ∑ i ∈ Finset.range (n + 1),  i = n*(n+1)/2:= by
    induction n with
    | zero => simp
    | succ n ih =>
        calc ∑ i ∈ Finset.range (n + 1 + 1),  i
             = (∑ i ∈ Finset.range (n + 1),  i) + (n + 1) := sorry
          _  = n  * (n + 1) / 2  + n + 1 := by rw [ih]
          _  = (n + 1) * (n + 1 + 1) / 2 := by ring_nf
-/
