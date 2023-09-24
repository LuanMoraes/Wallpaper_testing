Feature: User is able to select and download any Dynamic wallpapers available on Dynamic Screen
    Background: User is on Wallpaper HUB
        Given User has a static Wallpaper from curated images set
        #Given User lands on Home screen
        Given Long press Home screen and choose Wallpaper options list
        Then Wallpaper HUB screen is displayed
        Given User select Dynamic option on Wallpaper HUB screen
        When Dynamic screen is displayed

    @wipt
    Scenario: User download and set a dynamic wallpaper to lock and home screen
        Then User taps in a Dynamic wallpaper to download
        And set it as wallpaper for Home Screen and Lock screen
    
    @wipt
    Scenario: User is able to delete a downloaded wallpaper
        Then User long tap on a downloaded wallpaper
