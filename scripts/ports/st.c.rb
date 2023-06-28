require_relative('../libs/meta')

def quote(color)
  return "\"#{$flamerial.get_color_hex(color)}\""
end

puts(
  "static const char *colorname[16] = {
\t[0] = #{quote(:black)},
\t[1] = #{quote(:red)},
\t[2] = #{quote(:green)},
\t[3] = #{quote(:yellow)},
\t[4] = #{quote(:blue)},
\t[5] = #{quote(:magenta)},
\t[6] = #{quote(:cyan)},
\t[7] = #{quote(:white)},
\t[8] = #{quote(:light_black)},
\t[9] = #{quote(:red)},
\t[10] = #{quote(:green)},
\t[11] = #{quote(:yellow)},
\t[12] = #{quote(:blue)},
\t[13] = #{quote(:magenta)},
\t[14] = #{quote(:cyan)},
\t[15] = #{quote(:white)}
};
unsigned int defaultfg = 15;
unsigned int defaultbg = 0;
unsigned int defaultcs = 15;
static unsigned int defaultrcs = 0;
"
)
