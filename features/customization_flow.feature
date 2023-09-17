Feature: User is able to set a Wallpaper by any option on Wallpaper HUB

    Background: User is on Wallpaper HUB
        Given User has a static Wallpaper from curated images set
        #Given User lands on Home screen
        Given Long press Home screen and choose Wallpaper options list
        Then Wallpaper HUB screen is displayed

    @smoke @customization_flow
    Scenario: User sets a wallpaper without effects
        Given User select My Photos option on Wallpaper HUB screen
        And select any photo on device
        When Customize screen is displayed and the Default effect selected is None effects
        Then User taps on confirm button
        And Choose the option Home Screen and Lock screen

    @smoke @customization_flow
    Scenario: User sets a wallpaper with zoom effect
        Given User select My Photos option on Wallpaper HUB screen
        And select any photo on device
        When Customize screen is displayed and the Default effect selected is None effects
        Then User selects zoom effect
        And User taps on confirm button
        And Choose the option Home Screen and Lock screen
    
    @smoke @customization_flow
    Scenario: User sets a wallpaper with sway effect
        Given User select My Photos option on Wallpaper HUB screen
        And select any photo on device
        When Customize screen is displayed and the Default effect selected is None effects
        Then User selects sway effect
        And User taps on confirm button
        And Choose the option Home Screen and Lock screen

    @smoke @customization_flow
    Scenario: User sets a wallpaper with ripple effect
        Given User select My Photos option on Wallpaper HUB screen
        And select any photo on device
        When Customize screen is displayed and the Default effect selected is None effects
        Then User selects ripple effect
        And User taps on confirm button
        And Choose the option Home Screen and Lock screen

    @smoke @customization_flow
    Scenario: User sets a wallpaper with blur effect with default value
        Given User select My Photos option on Wallpaper HUB screen
        And select any photo on device
        When Customize screen is displayed and the Default effect selected is None effects
        Then User selects blur effect
        And User taps on confirm button
        And Choose the option Home Screen and Lock screen

    @smoke @customization_flow
    Scenario: User sets a wallpaper with brightness effect with default value
        Given User select My Photos option on Wallpaper HUB screen
        And select any photo on device
        When Customize screen is displayed and the Default effect selected is None effects
        Then User selects brightness effect
        And User taps on confirm button
        And Choose the option Home Screen and Lock screen

    @smoke @customization_flow
    Scenario: User sets a wallpaper with blur effect with maximum value
        Given User select My Photos option on Wallpaper HUB screen
        And select any photo on device
        When Customize screen is displayed and the Default effect selected is None effects
        Then User selects blur effect
        And tap in maximum value on intensity bar
        And User taps on confirm button
        And Choose the option Home Screen and Lock screen

    @smoke @customization_flow
    Scenario: User sets a wallpaper with brightness effect with maximum value
        Given User select My Photos option on Wallpaper HUB screen
        And select any photo on device
        When Customize screen is displayed and the Default effect selected is None effects
        Then User selects brightness effect
        And tap in maximum value on intensity bar
        And User taps on confirm button
        And Choose the option Home Screen and Lock screen





