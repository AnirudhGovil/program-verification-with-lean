/- (1) Define an inductive `even` function-/
def even: ℕ -> bool
  | 0 := tt
  | 1 := ff
  | (x + 2) := even x 

/- (2) Define the function `power : ℕ -> ℕ -> ℕ` inductively.-/
def power : ℕ → ℕ → ℕ
| x 0        := 1
| x (n + 1)  := x * power x n

-- Now we can define this as an infix operator:
infix `^` : 1 := power

/- (3) Define a function that outputs the derivative of a function w.r.t some interval - df(x) = d/dx (f) - using a function  `f` passed as argument. The type of the function `df` is given for you, as are a series of test cases -/
def df (f : ℚ -> ℚ) : (ℚ -> ℚ)
| f (x  0) := (0)
| f (x 1) := (1)
| f (x n) := (x (n-1))
def f1 (x : ℚ) := x*x + 1
def df1 := df f1
#check df1
-- answer: df1 : ℚ → ℚ
#eval df1 1000
-- answer: 4000001/2000