require "appium_lib"
require "pry"

#Para pegar a APK do Google Chrome instalada no device:
#             adb shell pm list packages| grep chrome
#resultado:   com.android.chrome

#Para pegar o caminho de uma apk:
#             adb shell pm path com.android.chrome
#resultado:   package:/data/app/~~v9w0cBqzo_HrXrfYd-JUYQ==/com.android.chrome-Uw_ryZrknrZtOl6hNL_ZYg==/base.apk

#Para baixar o arquivo como apk:
#             adb pull /data/app/~~v9w0cBqzo_HrXrfYd-JUYQ==/com.android.chrome-Uw_ryZrknrZtOl6hNL_ZYg==/base.apk
#resultado:   O arquivo base.apk será baixado para a pasta onde o terminal foi executado


#PEGANDO O appPackage:
# 1. Abra o app, neste caso o Google Chrome.
# 2. Execute o comando:  adb shell dumpsys window displays | grep -E 'mCurrentFocus'
# 3. resultado:          com.android.chrome/com.google.android.apps.chrome.Main 
# 4.                      Este é o pacote  / Esta é a atividade
# 5. O preenchimento ficaria assim: appPackage: com.android.chrome
# 6.                                

def caps
{
    caps:{
        deviceName: "LuanDevice",
        platformName: "Android",
        appPackage:"com.motorola.setup",
        appActivity: "com.motorola.setup.SplashDialogActivity",
        newCommandtimeout: "3600"
    }
}

end

Appium::Driver.new(caps,true)

#appium lib methods available inside the steps definitions
Appium.promote_appium_methods Object


#Pesquisa e seleciona o app pesquisado
def search_app_tray(text)
    find_element(xpath:"//android.widget.EditText[@text='  Search apps']").click
    find_element(xpath:"//android.widget.EditText[@text='  Search apps']").send_keys(text)
    find_element(xpath:"//android.widget.TextView[@text='#{text}']").click
end


def set_static_wallpaper()

    #user lands on home screen:
    sleep 1
    find_element(id:"com.motorola.setup:id/next_button").click
    #user lands on wallpaper hub
    sleep 1
    Appium::TouchAction.new.swipe(start_x:0.5, start_y:0.5, end_x:0.5, end_y:0.5, duration:2000).perform
    sleep 1
    find_element(xpath:"//android.widget.TextView[@text='Wallpapers']").click
    sleep 1

    #Setando wallpaper a partir do curated images
    find_element(xpath:"//android.widget.TextView[@text='Curated Images']").click
    sleep 1
    find_element(xpath:"//android.widget.Button[@text='Change wallpaper']").click
    sleep 1
    find_element(xpath:"//android.widget.TextView[@text='On-device wallpapers']").click
    sleep 1
    find_element(id:"com.google.android.apps.wallpaper:id/action_apply").click
    sleep 1
    find_element(xpath:"//android.widget.Button[@text='Home and lock screens']").click
end


#To be updated
# def find_in_list(value)
    
#     2.times{Appium::TouchAction.new.swipe(start_x: 0.1,start_y: 0.85, end_x: 0.5,end_y: 0.85, duration: 600).perform}

#     current_screen = get_source
#     previous_screen = ""

#     until (exists{ find_element(xpath:"//android.widget.TextView[@text='#{value}']") }) || (current_screen == previous_screen) do
#         Appium::TouchAction.new.swipe(start_x: 0.5,start_y: 0.83, end_x: 0.1,end_y: 0.83, duration: 1000).perform
#         previous_screen = current_screen
#         current_screen = get_source
#     end
#     if exists { find_element(xpath:"//android.widget.TextView[@text='#{value}']") }
#         find_element(xpath:"//android.widget.TextView[@text='#{value}']").click
#     else
#         fail("Cannot find element with text value: #{value}")
#     end
# end