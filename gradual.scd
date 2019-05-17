// Function for gradual change, in this case for sending OSC messages
~gradual = {|dest, address = \freq, start = 0.0, end = 1.0, time = 2.0|
	var val = start;
	var inc = if(start < end, {0.01}, {-0.01});
	var waitTime = time / ((start - end) / (inc * (-1)));
	Routine{
		dest.sendMsg(address, val);
		val = val + inc;
		(address.asString ++ ": " ++ val.asString).postln;
		wait(waitTime);
		if(inc > 0, {
			if(val < end, {thisFunction.value()})}, {
			if(val > end, {thisFunction.value()})}
		);
	}.play
};