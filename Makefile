
TOPLEVEL_LANG = verilog
VERILOG_SOURCES = $(PWD)/foobar.v
TOPLEVEL := foobar
MODULE := foobar_tb
include $(shell cocotb-config --makefiles)/Makefile.inc
include $(shell cocotb-config --makefiles)/Makefile.sim
