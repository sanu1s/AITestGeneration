Feature: Order Tracking Retry Information (Positive Test Cases)

  Scenario: System provides a different specific retry time
    Given User is on the order tracking page
    When User enters order number "SERVER_BUSY_ORD456"
    And User clicks the "Track Order" button
    Then The status message should display "Our servers are busy, please retry in 5 minutes."
