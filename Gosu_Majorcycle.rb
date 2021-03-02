require 'gosu'

module ZOrder
  BACKGROUND, MIDDLE, TOP = *0..2
end

# Instructions:
# Add a shape_x variable in the following (similar to the cycle one)
# that is initialised to zero then incremented by 10 in update.
# Change the draw method to draw a shape (circle or square)
# (50 pixels in width and height) with a y coordinate of 30
# and an x coordinate of shape_x.
class GameWindow < Gosu::Window

  # initialize creates a window with a width an a height
  # and a caption. It also sets up any variables to be used.
  # This is procedure i.e the return value is 'undefined'
  def initialize
    super 300, 300, false
    self.caption = "Shape Moving"

    # Create and load a font for drawing text on the screen
    @font = Gosu::Font.new(20)
    @shape_y = 0
    @shape_x = 0
    puts "0. In initialize\n"
  end

  def button_down(id)
    puts "In Button Down"
  end

  # Put any work you want done in update
  # This is a procedure i.e the return value is 'undefined'
  def update
    puts "0. In update\n"
    @shape_x += 10
    sleep(2)
  end

  # Draw (or Redraw) the window
  # This is procedure i.e the return value is 'undefined'
  def draw
    puts "0. In Draw\n"
    #(z determines if it sits on or under other things that are drawn)
    Gosu.draw_rect(@shape_x, @shape_y, 50, 50, Gosu::Color::RED, ZOrder::TOP, mode=:default)
  end
end

window = GameWindow.new
window.show