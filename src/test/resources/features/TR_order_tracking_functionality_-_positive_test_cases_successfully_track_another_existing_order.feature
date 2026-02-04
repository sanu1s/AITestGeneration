Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track another existing order
    Given User is on the order tracking page
    When User enters order number "ABC67890"
    And User clicks the "Track Order" button
    Then The order status should display "Your order ABC67890 has been shipped."
    And The URL should be "https://example.com/track/ABC67890"
