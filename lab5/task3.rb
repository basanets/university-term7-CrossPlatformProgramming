require 'fox16'

include Fox

class Dialog < FXDialogBox

  def initialize(owner)
    super(owner, "Dialog Box", DECOR_TITLE|DECOR_BORDER)

    buttonsFrame = FXHorizontalFrame.new(self,
      LAYOUT_SIDE_BOTTOM|FRAME_NONE|LAYOUT_FILL_X|PACK_UNIFORM_WIDTH,
      :padLeft => 40, :padRight => 40, :padTop => 20, :padBottom => 20)

    # Contents
    contents = FXHorizontalFrame.new(self,
      LAYOUT_SIDE_TOP|FRAME_NONE|LAYOUT_FILL_X|LAYOUT_FILL_Y|PACK_UNIFORM_WIDTH)
  
    submenu = FXMenuPane.new(self)
    FXMenuCommand.new(submenu, "First")
    FXMenuCommand.new(submenu, "Second")
    FXMenuCommand.new(submenu, "Third")
    
    # Menu
    menu = FXMenuPane.new(self)
    FXMenuCommand.new(menu, "&Accept", nil, self, ID_ACCEPT)
    FXMenuCommand.new(menu, "&Cancel", nil, self, ID_CANCEL)
    FXMenuCascade.new(menu, "Submenu", nil, submenu)
    FXMenuCommand.new(menu, "&Quit\tCtl-Q", nil, getApp(), FXApp::ID_QUIT)
  
    # Popup menu
    pane = FXPopup.new(self)
    %w{January February March April May June July August September October November December}.each do |s|
      FXOption.new(pane, s, :opts => JUSTIFY_HZ_APART|ICON_AFTER_TEXT)
    end
  
    # Option menu
    FXOptionMenu.new(contents, pane, (FRAME_RAISED|FRAME_THICK|
      JUSTIFY_HZ_APART|ICON_AFTER_TEXT|LAYOUT_CENTER_X|LAYOUT_CENTER_Y))

    # Button to pop menu
    FXMenuButton.new(contents, "&Menu", nil, menu, (MENUBUTTON_DOWN|
      JUSTIFY_LEFT|LAYOUT_TOP|FRAME_RAISED|FRAME_THICK|ICON_AFTER_TEXT|
      LAYOUT_CENTER_X|LAYOUT_CENTER_Y))

    # Accept
    accept = FXButton.new(buttonsFrame, "&Accept", nil, self, ID_ACCEPT,
      FRAME_RAISED|FRAME_THICK|LAYOUT_RIGHT|LAYOUT_CENTER_Y)
  
    # Cancel
    FXButton.new(buttonsFrame, "&Cancel", nil, self, ID_CANCEL,
      FRAME_RAISED|FRAME_THICK|LAYOUT_RIGHT|LAYOUT_CENTER_Y)
    
    accept.setDefault()
    accept.setFocus()
  end
  
end

# Subclassed main window
class DialogTester < FXMainWindow

  def initialize(app)
    super(app, "Basanets_lab5_task3", :opts => DECOR_ALL, :width => 200, :height => 100)
    
    contents = FXHorizontalFrame.new(self,
      LAYOUT_SIDE_TOP|FRAME_NONE|LAYOUT_FILL_X|LAYOUT_FILL_Y|PACK_UNIFORM_WIDTH)

    modalButton = FXButton.new(contents,
      "&Open Dialog",
      :opts => FRAME_RAISED|FRAME_THICK|LAYOUT_CENTER_X|LAYOUT_CENTER_Y)
    modalButton.connect(SEL_COMMAND, method(:onCmdShowDialogModal))
  
  end

  def onCmdShowDialogModal(sender, sel, ptr)
    Dialog.new(self).execute()
  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end
end


if __FILE__ == $0
  FXApp.new do |app|
    DialogTester.new(app)
    app.create()
    app.run()
  end
end
