// recursion
f = {arg a;
	a = a+1;
	a.postln;
	if(a<10, { thisFunction.value(a) })
};

f.(2)

// temporal recursion
f = {arg a;
	fork{a = a+1;
	a.postln;
	0.1.wait;
	if(a<10, { thisFunction.value(a) })
}};

f.(1)