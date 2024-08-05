all: ./build/out.bit

./build/out.bit: buildFolder
	gw_sh run.tcl

buildFolder:
	mkdir -p build

clean:
	rm -rf .Xil
	rm -rf build
	rm -f clockInfo.txt
	rm -rf impl

flash:
	openFPGALoader -b tangnano9k ./impl/pnr/project.fs

run_all: ./build/out.bit flash