## Copyright (C) 1991-2005 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic       
## functions, and any output files any of the foregoing           
## (including device programming or simulation files), and any    
## associated documentation or information are expressly subject  
## to the terms and conditions of the Altera Program License      
## Subscription Agreement, Altera MegaCore Function License       
## Agreement, or other applicable license agreement, including,   
## without limitation, that your use is for the sole purpose of   
## programming logic devices manufactured by Altera and sold by   
## Altera or its authorized distributors.  Please refer to the    
## applicable agreement for further details.

## VENDOR "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 5.0 Build 148 04/26/2005 SJ Full Version"

## DATE "11/11/2016 21:36:31"

## 
## Device: Altera EP1C6Q240C6 Package PQFP240
## 

## 
## This Tcl script should be used for PrimeTime (VHDL) only
## 

## This file can be sourced in primetime

set report_default_significant_digits 3
set hierarchy_separator .

set quartus_root "c:/altera/quartus50/"
set search_path [list . [format "%s%s" $quartus_root "eda/synopsys/primetime/lib"]  ]

set link_path [list *  cyclone_asynch_io_lib.db cyclone_asynch_lcell_lib.db  cyclone_core_mem_lib.db cyclone_lcell_register_lib.db  cyclone_memory_register_lib.db  cyclone_pll_lib.db  alt_vtl.db]

read_vhdl  -vhdl_compiler  cyclone_all_pt.vhd 

##########################
## DESIGN ENTRY SECTION ##
##########################

read_vhdl  -vhdl_compiler shifter.vho
current_design shifter
link
## Set variable timing_propagate_single_condition_min_slew to false only for versions 2004.06 and earlier
regexp {([1-9][0-9][0-9][0-9]\.[0-9][0-9])} $sh_product_version dummy version
if { [string compare "2004.06" $version ] != -1 } {
   set timing_propagate_single_condition_min_slew false
}
set_operating_conditions -analysis_type single
read_sdf shifter_vhd.sdo

################################
## TIMING CONSTRAINTS SECTION ##
################################


## Start clock definition ##
# WARNING : The required clock period is not set. The default value (100 ns) is used 
create_clock -period 100.000 -waveform {0.000 50.000} [get_ports { clock } ] -name clock  

set_propagated_clock [all_clocks]
## End clock definition ##

## Start create collections ##
## End create collections ##

## Start global settings ##
## End global settings ##

## Start collection commands definition ##

## End collection commands definition ##

## Start individual pin commands definition ##
## End individual pin commands definition ##

## Start Output pin capacitance definition ##
# Warning: using default load capacitance for LVTTL output port
set_load 10 [get_ports { data_out[0] data_out[1] data_out[2] data_out[3] data_out[4] data_out[5] data_out[6] data_out[7] } ]
## End Output pin capacitance definition ##

## Start clock uncertainty definition ##
## End clock uncertainty definition ##

## Start Multicycle and Cut Path definition ##
## End Multicycle and Cut Path definition ##

## Destroy Collections ##

update_timing
