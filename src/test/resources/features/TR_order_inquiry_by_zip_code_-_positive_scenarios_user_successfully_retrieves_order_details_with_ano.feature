Feature: Order Inquiry by Zip Code - Positive Scenarios

  Scenario: User successfully retrieves order details with another valid zip code
    Given User is on the order inquiry page
    When User enters zip code "10001"
    And User clicks the "Track Order" button
    Then The order status message should display "Order details found for zip code 10001."
