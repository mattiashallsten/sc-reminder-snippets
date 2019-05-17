// Finding out the current path -- this is the star of the show
var path = PathName(PathName(thisProcess.nowExecutingPath).pathOnly);
// If you have a directory named "samples/" in you project directory,
// you can assign that to a different variable
var sampleFolder = path +/+ "samples/";
// Loading all the files in the sampleFolder into buffers in the array
// 'samples'
var samples = (sampleFolder.fullPath ++ "*").pathMatch.collect{
	|filePath| Buffer.read(s, filePath)
};