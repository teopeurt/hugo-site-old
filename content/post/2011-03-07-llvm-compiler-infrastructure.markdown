---
comment: true
date: 2011-03-07T00:00:00Z
title: LLVM - What is it?
url: /2011/03/07/llvm-compiler-infrastructure/
---

What is LLVM? It's homepage is somewhat cryptic - spends the first paragraph telling people what it is NOT!

<a title="LLVM" href="http://www.llvm.org/">llvm</a>

In POE - it is used to build compilers - that means you can invent your own language, and use LLVM build the compiler and intepreter for you - voila!

The abstract from the original paper by Chris is more enlightening:
<pre>This paper describes LLVM (Low Level Virtual Machine),
a compiler framework designed to support transparent,
lifelong program analysis and transformation for arbitrary programs,
by providing high-level information to compiler
transformations at compile-time, link-time, run-time, and in
idle time between runs. LLVM deﬁnes a common, low-level
code representation in Static Single Assignment (SSA) form,
with several novel features: a simple, language-independent
type-system that exposes the primitives commonly used to
implement high-level language features; an instruction for
typed address arithmetic; and a simple mechanism that can
be used to implement the exception handling features of
high-level languages (and setjmp/longjmp in C) uniformly
and eﬃciently. The LLVM compiler framework and code
representation together provide a combination of key capabilities
that are important for practical, lifelong analysis and
transformation of programs. To our knowledge, no existing
compilation approach provides all these capabilities. We describe
the design of the LLVM representation and compiler
framework, and evaluate the design in three ways: (a) the
size and eﬀectiveness of the representation, including the
type information it provides; (b) compiler performance for
several interprocedural problems; and (c) illustrative examples of the
beneﬁts LLVM provides for several challenging
compiler problems.</pre>
...er. Ok for those who are still wondering what it is - check out Chris' presentation at <a title="llvm fosdem" href="http://llvm.org/pubs/2011-02-FOSDEM-LLVMAndClang.html">FOSDEM</a> - (did I tell you I also presented at <a title="The McDonalds Model" href="http://blindfoldedarcher.com/the-mcdonalds-model/">FOSDEM</a> this year - my claim to fame! )

Even Google is using LLVM in Android - check out <a title="RenderScript" href="http://developer.android.com/guide/topics/renderscript/index.html" target="_blank">RenderScript</a> (beautiful stuff!!).

I still love GCC, but I will not ignore it's shortcomings. As an engineer, we should strive to understand our tools especially it's limitation
