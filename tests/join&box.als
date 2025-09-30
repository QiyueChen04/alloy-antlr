sig  S {}

pred p1[a: S, b: S] {}


pred p2[a: S, b: S] {
	a.(b.p1)
	a.p1[b]
	f[a,b].p1[b] // how does alloy handle this
}

pred p3[] {}
fact {
	p3[]
}

fun f[a: S, b:S]: S {a}

