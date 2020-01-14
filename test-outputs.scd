(
var numSpeakers = 13;
var i = 0;
fork {
	loop {
		{WhiteNoise.ar(
			EnvGen.kr(Env.perc(0.01, 0.2), doneAction:2) * 0.1)}.play(s, i);
		wait(0.5);
		i = i + 1;
		i = i % numSpeakers
	}
}
)