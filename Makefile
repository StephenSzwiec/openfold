# uses sandbox to avoid fakeroot/root issues; creates a non-updatable container
container:
	sudo -E env "PATH=$$PATH" singularity build --sandbox ./openbox-sandbox ./openbox.def
	sudo -E env "PATH=$$PATH" singularity build ./openbox.sif ./openbox-sandbox
