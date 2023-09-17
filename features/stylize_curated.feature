Feature: User is able to choose images from Curated Images album or apply effects to any picture on Stylize screen
    Background: User is on Wallpaper HUB
        Given User lands on Home screen
        Given Long press Home screen and choose Wallpaper options list
        Then Wallpaper HUB screen is displayed

    @curated_images
    Scenario: User set a Static wallpaper from curated images option 
        Given User has a static Wallpaper from curated images set

    @stylize
    Scenario: User is able to apply effects on Stylize screen
        Given User select Stylize option on Wallpaper HUB screen
        When select any photo on device
        Then Stylize screen is displayed

    