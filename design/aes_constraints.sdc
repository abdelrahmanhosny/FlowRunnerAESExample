set clock_cycle 500
set uncertainty 0
set io_delay 0


set clock_port clk

create_clock -name clk -period $clock_cycle [get_ports $clock_port]
set_clock_uncertainty $uncertainty [all_clocks]

set_input_delay -add_delay -max $io_delay [all_inputs]
set_output_delay -add_delay -max $io_delay [all_outputs]
