require 'fox16'
include Fox

class FontButtonWindow < FXMainWindow
  def initialize(app)
    super(app, "Basanets_lab5_task2" , :width => 250, :height => 80)
    @curr_app = app
    @fontButton = FXButton.new(self, "Select font", :opts => FRAME_RAISED|FRAME_THICK|LAYOUT_CENTER_X|LAYOUT_CENTER_Y)
  	
  	@fontEditor = FXFontDialog.new(self, "Font...")

    @fontButton.connect(SEL_COMMAND, method(:onFontButtonClicked))
  end
  def create()
    super
    show(PLACEMENT_SCREEN)
  end

  def onFontButtonClicked(sender, sel, ptr)
  	if @fontEditor.execute(PLACEMENT_OWNER) == 1
  		selectedFont = @fontEditor.fontSelection
  		newFont = FXFont.new(@curr_app, selectedFont)
  		newFont.create()
  		@fontButton.font = newFont
  	end
  end
end


if __FILE__ == $0
  FXApp.new do |app|
    FontButtonWindow.new(app)
    app.create
    app.run
  end
end
