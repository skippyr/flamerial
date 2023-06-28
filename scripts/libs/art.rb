class Color
  def initialize(syntax_highlight, ansi, hex)
    @syntax_highlight = syntax_highlight
    @ansi = ansi
    @hex = hex
  end

  def get_syntax_highlight()
    @syntax_highlight
  end

  def get_ansi()
    @ansi
  end

  def get_hex()
    @hex
  end
end

class Palette
  def initialize(author, license, upstream, colors)
    @author = author
    @license = license
    @upstream = upstream
    @colors = colors
  end

  def get_author()
    @author
  end

  def get_license()
    @license
  end

  def get_upstream()
    @upstream
  end

  def get_colors()
    @colors
  end

  def get_color_hex(color)
    @colors[color].get_hex()
  end
end
