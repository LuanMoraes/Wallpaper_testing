
Given('User select Dynamic option on Wallpaper HUB screen') do
    find_element(xpath:"//android.widget.TextView[@text='Dynamic']").click
end



When('Dynamic screen is displayed') do
    sleep 3
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
    sleep 1
    find_element(xpath:"//android.widget.Button[@text='Set wallpaper']").click
    sleep 2
    find_element(xpath:"//android.widget.TextView[@text='Home screen and lock screen']").click
    sleep 3
end

Then('User long tap on a downloaded wallpaper') do
    Appium::TouchAction.new.swipe(start_x:200, start_y:680, end_x:200, end_y:680, duration:2000).perform
    sleep 2
    Appium::TouchAction.new.tap(x:100, y:500,count: 1).perform
    find_element(id:"com.motorola.livewallpaper3:id/delete_wallpaper_icon").click
    sleep 1
    find_element(xpath:"//android.widget.Button[@text='Remove']").click

end

