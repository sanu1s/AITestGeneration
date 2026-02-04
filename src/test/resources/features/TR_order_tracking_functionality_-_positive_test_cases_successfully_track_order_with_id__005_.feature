Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track order with ID '005'
    Given User is on the order tracking page
    When User enters order number "005"
    And User clicks the "Track Order" button
    Then The status message should display "Order '005' is in transit."
    And The current URL should be "https://example.com/track/005"
