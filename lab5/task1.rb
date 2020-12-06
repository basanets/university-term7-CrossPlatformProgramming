require 'fox16'
include Fox

time = Time.new()
current_date = [time.day, time.month, time.year].join(".")
app = FXApp.new("Lab5_1", "Fox")
mainWindow = FXMainWindow.new(app, "Basanets_lab5_task1", nil, nil, DECOR_ALL)
FXButton.new(mainWindow, current_date, nil, app, FXApp::ID_QUIT)
app.create()
mainWindow.show(PLACEMENT_SCREEN)
app.run()
