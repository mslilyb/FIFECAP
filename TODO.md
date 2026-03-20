# FIFECAP

## Making rigorous the analysis needed for the cSABR project

There is an eventual aim to make this useable for any potential project involving the FTX file format

### Proposed Repository Structure

* `fifecap`: main executable
* `src`: source code
* `testdata`: example ftx files
	* `results`: example outputs from `testdata`
	* `plots`: example plots generated from `testdata`

The `testdata` directory also represents the expected output of `fifecap`; the `results` and `plots` directories will be created in the current one unless the `-d` or `--dir` arguments are given, in which case the two directories will be created in the one specified at runtime, like so: `/<path>/<to>/<dir>/results/`


### Wants

Here is a non-exhaustive list of everything I want FIFECAP to be able to do:

* parse an FTX file (able to determine if its multiplexed????? uses `~` to account for MA?)