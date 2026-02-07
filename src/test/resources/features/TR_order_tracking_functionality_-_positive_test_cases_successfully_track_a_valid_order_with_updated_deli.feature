Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track a valid order with updated delivery date
    Given User is on the order tracking page
    When User enters order number "123123321"
    And User clicks the "Track Order" button
    Then The status message should display "Your order 123123321 was originally expected July 25-26, and is now expected on Monday."
    And The URL should be "https://example.com/track/123123321"
