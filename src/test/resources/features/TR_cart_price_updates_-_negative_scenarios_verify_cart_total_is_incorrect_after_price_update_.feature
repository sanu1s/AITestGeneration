Feature: Cart Price Updates - Negative Scenarios

  Scenario: Verify cart total is incorrect after price update for multiple items
    Given a product "Gaming Headset" with initial price "$80.00" exists
    And a product "Webcam" with initial price "$30.00" exists
    And User adds "Gaming Headset" to the cart
    And User adds "Webcam" to the cart
    When User navigates to the cart page
    Then "Gaming Headset" should be displayed with price "$80.00"
    And "Webcam" should be displayed with price "$30.00"
    And the total cart price should be "$110.00"
    When the price of "Gaming Headset" is updated to "$90.00" in the backend
    And the price of "Webcam" is updated to "$25.00" in the backend
    And User refreshes the cart page
    Then "Gaming Headset" should be displayed with price "$90.00"
    And "Webcam" should be displayed with price "$25.00"
    And the total cart price should not be "$110.00"
    And the total cart price should be "$115.00"
