\m4_TLV_version 1d: tl-x.org
    
\SV
   `include "sqrt32.v";
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)

\TLV
   |calc
      ?$valid 
         @1
            $aa_sq[31:0] = $aa[3:0] ** $aa ;
            $bb_sq[31:0] = $bb[3:0] ** $bb;
         @2
            $cc_sq[31:0] = $aa_sq + $bb_sq;
         @3
            $cc[31:0] = sqrt($cc_sq);

!  *passed = *cyc_cnt > 16'd30;
 

\SV
   Endmodule
