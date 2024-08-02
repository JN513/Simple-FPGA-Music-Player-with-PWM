all:
	/mnt/tools/quartus_lite/quartus/bin/quartus_sh --flow compile de1soc

flash:
	/mnt/tools/quartus_lite/quartus/bin/quartus_pgm -m jtag -c "DE-SoC [1-9.4]" -o "p;build/de1soc.sof@2"

create_project:
	/mnt/tools/quartus_lite/quartus/bin/quartus_sh -t create_project.tcl

clean:
	rm -rf build/*