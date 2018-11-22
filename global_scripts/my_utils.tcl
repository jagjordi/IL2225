    proc analyze_elaborate {PACKAGES MODULES TOP_ENTITY ARCHITECTURE} {
        foreach pk $PACKAGES {
            analyze -format vhdl -lib WORK "./SOURCE/${pk}.vhd"
        }

        foreach md $MODULES {
		analyze -format vhdl -lib WORK "./SOURCE/${md}.vhd"
	
	}
    
    if {$TOP_ENTITY != ""} {
        analyze -format vhdl -lib WORK "./SOURCE/${TOP_ENTITY}.vhd"
        
        elaborate $TOP_ENTITY -architecture $ARCHITECTURE
    }
}
