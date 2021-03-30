\m4_TLV_version 1d: tl-x.org
\SV
   m4_makerchip_module
\TLV
   |add
      @0
          $num[15:0] = *reset ? 1                   // 1 if reset
                       : >>1$num + >>2$num;  // otherwise add previous two
\SV
