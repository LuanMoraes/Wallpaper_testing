
Feature: User is able to open Wallpaper HUB by different ways

    Background: User is on Home screen
    Given User lands on Home screen

    @smoke @wallpaper_hub
    Scenario: User open wallpaper hub by long pressing Home screen
        Given Long press Home screen and choose Wallpaper options list
        Then Wallpaper HUB screen is displayed

    @smoke @wallpaper_hub
    Scenario: User is able to access Wallpaper HUB by Moto APP
        When I open app tray and search for the word "Moto"
        And I open Wallpaper HUB by Personalize inside Moto app
        Then Wallpaper HUB screen is displayed
    
    @smoke @wallpaper_hub
    Scenario: User is able to access Wallpaper HUB by Personilize inside settings
        When I open app tray and search for the word "Settings"
        And I open Personilize inside settings
        Then Wallpaper HUB screen is displayed