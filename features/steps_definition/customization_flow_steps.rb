Given('User select My Photos option on Wallpaper HUB screen') do
    sleep 1
    find_element(xpath:"//android.widget.TextView[@text='My Photos']").click
end



Given('select any photo on device') do
    sleep 1
    find_element(xpath:"//android.widget.TextView[@text='Select a photo']")
    sleep 1
    find_element(xpath:"//android.widget.TextView[@text='Photos']").click
    sleep 1
    Appium::TouchAction.new.tap(x:0.10, y:0.35,count: 1).perform
end

Given('Customize screen is displayed and the Default effect selected is None effects') do
    find_element(id:"com.motorola.livewallpaper3:id/preview_frame")
    find_element(id:"com.motorola.livewallpaper3:id/crop_button")
    find_element(id:"com.motorola.livewallpaper3:id/scroll_home_screen")
    default_effect_button = find_element(accessibility_id:"None").selected?
        if !default_effect_button
            fail("Default effect is not: None")
        end
end


Then('User taps on confirm button') do
    sleep 5
    find_element(id:"com.motorola.livewallpaper3:id/confirm_btn").click
    sleep 9
end

Then('Choose the option Home Screen and Lock screen') do
    find_element(id:"com.motorola.livewallpaper3:id/set_both_wallpaper_button").click
    sleep 2
end

Then('User selects zoom effect') do
    sleep 1
    find_element(accessibility_id:"Zoom").click
    # selected_effect = find_element(accessibility_id:"Zoom").click
    # find_in_list(selected_effect)
end

Then('User selects sway effect') do
    sleep 1
    find_element(accessibility_id:"Sway").click
    # selected_effect = find_element(accessibility_id:"Sway").click
    # find_in_list(selected_effect)
end

Then('User selects ripple effect') do
    sleep 1
    find_element(accessibility_id:"Ripple").click
    # selected_effect = find_element(accessibility_id:"Ripple").click
    # find_in_list(selected_effect)
end

Then('User selects blur effect') do
    sleep 1
    find_element(accessibility_id:"Ripple").click
    sleep 1
    find_element(accessibility_id:"Blur").click
    # selected_effect = find_element(accessibility_id:"Blur").click
    # find_in_list(selected_effect)
end

Then('User selects brightness effect') do
    sleep 1
    find_element(accessibility_id:"Ripple").click
    sleep 1
    find_element(accessibility_id:"Brightness").click
end

Given('User has a static Wallpaper from curated images set') do
    set_static_wallpaper()
    sleep 9
    # find_element(xpath:"//android.widget.TextView[@text='Curated Images']").click
    # sleep 1
    # find_element(xpath:"//android.widget.Button[@text='Change wallpaper']").click
    # sleep 1
    # find_element(xpath:"//android.widget.TextView[@text='On-device wallpapers']").click
    # sleep 1
    # find_element(id:"com.google.android.apps.wallpaper:id/action_apply").click
    # sleep 1
    # find_element(xpath:"//android.widget.Button[@text='Home and lock screens']").click
end


Then('tap in maximum value on intensity bar') do
    Appium::TouchAction.new.tap(x:940, y:1730,count: 1).perform
end