require_relative('../libs/metadata')

def quote(text)
  return "\"#{text}\""
end

puts(
  "static const char *colorname[16] = {
\t[0] = #{quote(
    $flamerial[:colors][:black]
  )},
\t[1] = #{quote($flamerial[:colors][:red])},
\t[2] = #{quote(
    $flamerial[:colors][:green]
  )},
\t[3] = #{quote($flamerial[:colors][:yellow])},
\t[4] = #{quote(
    $flamerial[:colors][:blue]
  )},
\t[5] = #{quote($flamerial[:colors][:magenta])},
\t[6] = #{quote(
    $flamerial[:colors][:cyan]
  )},
\t[7] = #{quote($flamerial[:colors][:white])},
\t[8] = #{quote(
    $flamerial[:colors][:light_black]
  )},
\t[9] = #{quote($flamerial[:colors][:red])},
\t[10] = #{quote(
    $flamerial[:colors][:green]
  )},
\t[11] = #{quote($flamerial[:colors][:yellow])},
\t[12] = #{quote(
    $flamerial[:colors][:blue]
  )},
\t[13] = #{quote($flamerial[:colors][:magenta])},
\t[14] = #{quote(
    $flamerial[:colors][:cyan]
  )},
\t[15] = #{quote(
    $flamerial[:colors][:white]
  )}
};
unsigned int defaultfg = 15;
unsigned int defaultbg = 0;
unsigned int defaultcs = 15;
static unsigned int defaultrcs = 0; 
"
)
