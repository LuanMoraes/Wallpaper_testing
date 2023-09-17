#Será executado antes de cada cenário de teste
Before do

    $driver.start_driver
    
    #appium_driver.driver.press_keycode <keycode>

    
    # Back is 4
    # Menu is 82
    # Recent Apps is 187 (APP_SWITCH)
    # https://developer.android.com/reference/android/view/KeyEvent.html

end

#Será executado depois de cada cenário de teste
After do

    #apertando na home key
    # driver.press_keycode(3)

    #apertando no recents key
    #driver.press_keycode(187)

    

    #swipe pra cima
    #Appium::TouchAction.new.swipe(start_x:0.01, start_y:0.9, end_x:0.01, end_y:0.5, duration:600).perform

    #Tirando todos os apps:
    driver.press_keycode(187)
    sleep 1
    Appium::TouchAction.new.tap(x:520, y:2100,count: 1).perform
    
    $driver.driver_quit

end