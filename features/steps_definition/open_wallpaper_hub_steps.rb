Given('User lands on Home screen') do
    find_element(id:"com.motorola.setup:id/next_button").click
end

Given('Long press Home screen and choose Wallpaper options list') do
    Appium::TouchAction.new.swipe(start_x:0.5, start_y:0.5, end_x:0.5, end_y:0.5, duration:2000).perform
    find_element(xpath:"//android.widget.TextView[@text='Wallpapers']").click
end

Then('Wallpaper HUB screen is displayed') do
    sleep 1
    find_element(id:"com.motorola.moto:id/wallpaper_hub_lock_screen_card")
    find_element(id:"com.motorola.moto:id/lock_description_text_view")
    find_element(id:"com.motorola.moto:id/home_description_text_view")
end


When('I open app tray and search for the word {string}') do |text|
    #abre o app tray
    Appium::TouchAction.new.swipe(start_x:0.01, start_y:0.9, end_x:0.01, end_y:0.5, duration:600).perform    
    search_app_tray(text)

end

Then('I open Wallpaper HUB by Personalize inside Moto app') do
    sleep 1
    find_element(id:"com.motorola.moto:id/buttonNavigation").click
    find_element(xpath:"//android.widget.Button[@text='Personalize']").click
    sleep 1
    find_element(id:"com.motorola.personalize:id/lock_screen_wallpaper").click
end

When('I open Personilize inside settings') do
    Appium::TouchAction.new.tap(x:520, y:2100,count: 1).perform
    sleep 1
    find_element(id:"com.motorola.personalize:id/lock_screen_wallpaper").click
end