module PunkDrawer

  def top_left
    "\u250f"
  end

  def top_right
    "\u2513"
  end

  def bottom_left
    "\u2517"
  end

  def bottom_right
    "\u251b"
  end

  def horizontal
    "\u2501"
  end

  def vertical
    "\u2503"
  end

  def draw_cells

    puts [top_left, [horizontal]*13, top_right].flatten.join
    puts [' ', horizontal, numbers.join(horizontal), horizontal].flatten.join
    puts [bottom_left, [horizontal]*13, bottom_right].flatten.join

  end

  private

  def numbers
    (0..5).map &:to_s
  end
end
