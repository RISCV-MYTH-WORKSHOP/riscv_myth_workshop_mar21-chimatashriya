\m4_TLV_version 1d: tl-x.org
    
\SV
   `include "sqrt32.v";
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)

\TLV
   |calc
      @1
         $reset = *reset;
      ?$valid 
         @1
            $aa_sq[31:0] = $aa[3:0] ** $aa ;
            $bb_sq[31:0] = $bb[3:0] ** $bb;
         @2
            $cc_sq[31:0] = $aa_sq + $bb_sq;
         @3
            $cc[31:0] = sqrt($cc_sq);
      @4
         $tot_dist[63:0] =
            $reset ? '0 : 
            $valid ? >>1$tot_dist + $cc :
                     >>1$tot_dist;
!  *passed = *cyc_cnt > 16'd30;

         
        

      // Macro instantiations for calculator visualization(disabled by default).
      // Uncomment to enable visualisation, and also,
      // NOTE: If visualization is enabled, $op must be defined to the proper width using the expression below.
      //       (Any signals other than $rand1, $rand2 that are not explicitly assigned will result in strange errors.)
      //       You can, however, safely use these specific random signals as described in the videos:
      //  o $rand1[3:0]
      //  o $rand2[3:0]
      //  o $op[x:0]
      
   //m4+cal_viz(@3) // Arg: Pipeline stage represented by viz, should be atleast equal to last stage of CALCULATOR logic.

   
   // Assert these to end simulation (before Makerchip cycle limit).
  

\SV
   endmodule
