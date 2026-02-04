Feature: Order Tracking Retry Information (Positive Test Cases)

  Scenario: System provides specific retry time after a temporary tracking failure
    Given User is on the order tracking page
    When User enters order number "TEMP_FAIL_ORD123"
    And User clicks the "Track Order" button
    Then The status message should display "Due to system maintenance, please try again in 15 minutes."
