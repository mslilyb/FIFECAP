# FToolboX

## Making rigorous the analysis needed for the cSABR project

There is an eventual aim to make this useable for any potential project involving the FTX file format

### Proposed Repository Structure

* `ftbx`: main executable
* `src`: source code
* `testdata`: example ftx files
	* `results`: example outputs from `testdata`
	* `plots`: example plots generated from `testdata`

The `testdata` directory also represents the expected output of `ftbx`; the `results` and `plots` directories will be created in the current one unless the `-d` or `--dir` arguments are given, in which case the two directories will be created in the one specified at runtime, like so: `/<path>/<to>/<dir>/results/`


### Wants

Here is a non-exhaustive list of everything I want FToolboX to be able to do:

* Knit/Unify FTX files (identify replicates, properly assign and note MAs)
	* This is to allow different ftx files with similar themes/sources to come together. Can analyze overlap?

* FTX Parse: isolate and output fields of interest from FTX file
* Compare: Compare multiple FTX files. Treat one as the truth or the two as different. For the two as different, results will be directional. Perhaps presented in matrix format?
	* proposed things to measure for both: %ID, avg distance, trends, overhangs (requires truth?), strand bias?
	* maybe just always require the ground truth
	* should be capable of one by all and all by all
		* maybe to answer which aligner is the closest to all of them? evaluate distance????????? what is the difference between this and tukey? Really its just that this allows you to compare things that are not as much numerical data, such as strand bias, overhang len, accuracy... maybe it is tukey
			* is the goal then to identify which aligner is the closest, as in the most alike to all? does that matter? could be a fun comparison to see its performance....maybe for later.
* complotter: plots comparison data (which should be output in a way that makes it easy to do)


### HIGH PRIO
* Replicate functionality of `accfinder`, but with better/more EASILY maintained structure. 
* Create a plotting module/devise 'plottable' file format
* account for read length in internal exon detection and performance evaluation


### Analysis Future Directions
* What kinds of adjustments do aligners tend to make? do they jam a read onto mismatches,  or shift them
	* Are they biased in some direction?
