open util/boolean

sig A {}

sig a1 extends A {}

sig a2 extends A {}

fun f(): seq A {
	seq ({a1} + {a2})
}

sig Book { }
sig Person {
	books: seq Book
}

fun getAllElements [s: seq Book] : set Book {
  univ.s
}

fact {
	some s: seq Book | some s.getAllElements
	f = {1->{a1}} + {2->{a2}}
}

assert someAssertion {}

check someAssertion for 4 seq


// This is parsed, but fails typechecking
// This must be a unary set. Instead, its type is 
// {seq/Int->this/A}
//pred alwaysTrue3 {
// 	{t:Bool, sequence: seq A | t.isTrue}.isTrue
//}

// This is parsed, but fails typechecking
// This must be a unary set. Instead, its type is 
// {seq/Int->this/A}
// fun someSum2 []: Int {
//	(sum a:Int, b:seq A | a fun/add b )
// }

// cannot parse
//pred example {
//    let s = seq Member | some s
//}

//fact {
//	# (seq A) = 2
//}
