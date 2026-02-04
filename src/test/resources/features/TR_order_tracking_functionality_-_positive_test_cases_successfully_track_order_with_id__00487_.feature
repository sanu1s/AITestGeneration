Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track order with ID '00487'
    Given User is on the order tracking page
    When User enters order number "00487"
    And User clicks the "Track Order" button
    Then The status message should display "Order '00487' delivered."
    And The current URL should be "https://example.com/track/00487"
