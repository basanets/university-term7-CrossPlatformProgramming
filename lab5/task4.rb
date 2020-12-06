require 'fox16'
include Fox

White = Fox.FXRGB(255, 255, 255)
Black = Fox.FXRGB(0, 0, 0)

class PaintWindow < FXMainWindow
  def initialize(app)
    super(app, "Basanets_lab5_task4" , :width => 500, :height => 500)
    @curr_app = app
    self.enable()
    vFrame1 = FXVerticalFrame.new(self, :opts => LAYOUT_FILL)
  	@canvas = FXCanvas.new(vFrame1, :opts => LAYOUT_FILL)

  	@canvas.connect(SEL_PAINT, method(:onCanvasRepaint))
  	@canvas.connect(SEL_LEFTBUTTONPRESS, method(:onCanvasPressed))
  	@canvas.connect(SEL_MOTION, method(:onCanvasMove))
  	@canvas.connect(SEL_LEFTBUTTONRELEASE, method(:onCanvasReleased))

	@clearButton = FXButton.new(vFrame1, "Clear", :opts => FRAME_RAISED|FRAME_THICK|LAYOUT_CENTER_X)
	@clearButton.connect(SEL_COMMAND, method(:onClearButtonPressed))

	@is_clear_pressed = false
  	@is_pressed = false
  	@old_x, @old_y, @curr_x, @curr_y = 0, 0, 0, 0
  end

  def onCanvasPressed(sender, sel, event)
  	@old_x, @old_y = event.click_x, event.click_y
  	@is_pressed = true
  end

  def onCanvasMove(sender, sel, event)
  	if @is_pressed
  		@curr_x, @curr_y = event.win_x, event.win_y
  		@canvas.update()
  	end
  end

  def onCanvasReleased(sender, sel, event)
  	@is_pressed = false
  end

  def onCanvasRepaint(sender, sel, event)

	dcw = FXDCWindow.new(@canvas, event)
	dcw.lineWidth = 5
	dcw.lineCap = 2
    
    if !event.synthetic? || @is_clear_pressed
    	dcw.foreground = White
    	dcw.fillRectangle(0, 0, @canvas.width, @canvas.height)
    	@is_clear_pressed = false
    	return
    end

    dcw.foreground = Black
    dcw.drawLine(@old_x, @old_y, @curr_x, @curr_y)
    dcw.end()
    @old_x, @old_y = @curr_x, @curr_y
  end

  def onClearButtonPressed(sender, sel, event)
  	@is_clear_pressed = true
  	@canvas.update()
  end

  def create()
    super()
    @canvas.create()

    show(PLACEMENT_SCREEN)
  end
end


if __FILE__ == $0
  FXApp.new do |app|
    wnd = PaintWindow.new(app)
    app.create()
    app.run()
  end
end
