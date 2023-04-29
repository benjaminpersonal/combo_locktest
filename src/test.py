import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles

@cocotb.test()
async def test_my_design(dut):
    dut._log.info("start")
    clock = Clock(dut.CLK, 7, units="ms")
    cocotb.start_soon(clock.start())
    dut._log.info()
    if dut.OUTPUT[0].value == '1':
        dut.code[0].value = 1
