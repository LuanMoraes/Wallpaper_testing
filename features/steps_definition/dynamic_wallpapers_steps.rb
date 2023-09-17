
Given('User select Dynamic option on Wallpaper HUB screen') do
    find_element(xpath:"//android.widget.TextView[@text='Dynamic']").click
end



When('Dynamic screen is displayed') do
    sleep 1
    find_element(xpath:"//android.widget.TextView[@text='Dynamic']")
    find_element(xpath:"//android.widget.ToggleButton[@text='Customizable']")
    find_element(xpath:"//android.widget.ToggleButton[@text='Standard']")
    find_element(accessibility_id:"More options")
end

Then('User taps in a Dynamic wallpaper to download') do
    Appium::TouchAction.new.tap(x:215, y:1480,count: 1).perform
    sleep 10
    puts("Waiting for the wallpaper download")
    Appium::TouchAction.new.tap(x:200, y:680,count: 1).perform
end

Then('set it as wallpaper for Home Screen and Lock screen') do

    find_element(xpath:"//android.widget.Button[@text='Set wallpaper']").click
    sleep 1
    find_element(xpath:"//android.widget.TextView[@text='Home screen and lock screen']").click
    sleep 2
    
end