var path = PathName(PathName(thisProcess.nowExecutingPath).pathOnly);
var sampleFolder = path +/+ "samples/";
var samples = (sampleFolder.fullPath ++ "*").pathMatch.collect{
	|filePath| Buffer.readChannel(s, filePath, channels:0)
};