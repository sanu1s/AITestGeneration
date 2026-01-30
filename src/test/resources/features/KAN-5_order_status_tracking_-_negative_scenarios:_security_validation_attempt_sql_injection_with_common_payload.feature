Feature: Order Status Tracking - Negative Scenarios: Security Validation

  Scenario: Attempt SQL Injection with common payload
    Given User is on the order tracking page
    When User enters order number "' OR '1'='1"
    And User clicks the "Track Order" button
    Then The result message should display "Order number must be numeric"
