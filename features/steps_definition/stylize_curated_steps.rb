Given('User select Stylize option on Wallpaper HUB screen') do
    sleep 1
    find_element(xpath:"//android.widget.TextView[@text='Stylize']").click
end

Then('Stylize screen is displayed') do
    find_element(xpath:"//android.widget.TextView[@text='Stylize']")
    find_element(id:"com.motorola.moto:id/styles_background_card")
    find_element(id:"com.motorola.moto:id/style_gallery_image_view")
    find_element(id:"com.motorola.moto:id/content_image_view")
    find_element(xpath:"//android.widget.TextView[@text='Select a style']")
    find_element(xpath:"//android.widget.Button[@text='Set wallpaper']")
    find_element(xpath:"//android.widget.Button[@text='Save']")
end