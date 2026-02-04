Feature: Order Tracking System - Placeholder Positive Test Cases

  Scenario: Successfully track another existing order - Placeholder
    Given User is on the order tracking page
    When User enters order number "PLACEHOLDER_ORD456"
    And User clicks the "Track Order" button
    Then The status message should display "Order in transit - Placeholder"
