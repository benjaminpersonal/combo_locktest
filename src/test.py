import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles

@cocotb.test()
async def test_my_design(dut):
    dut._log.info("start")
    clock = Clock(dut.CLK, 7, units="ms")
    cocotb.start_soon(clock.start())
