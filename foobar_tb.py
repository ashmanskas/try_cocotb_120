
import cocotb
from cocotb.clock import Clock
from cocotb.decorators import coroutine, test
from cocotb.triggers import RisingEdge
from cocotb.result import TestFailure

@test()
def foobar_basic_test(dut):
    '''Basic test for 'foobar' module'''
    cocotb.fork(Clock(dut.clk, 10, 'ns').start())
    clkedge = RisingEdge(dut.clk)
    for i in range(100):
        yield clkedge
        msg = "i={} dut.q={}".format(i, dut.q.value.integer)
        dut._log.info(msg)
        if dut.q.value.integer != i:
            raise TestFailure(msg)
    dut._log.info("hello!")
