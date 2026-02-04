Feature: Order Tracking - Customer Service Escalation (Negative Scenarios)

  Scenario: User tracks an order number requiring customer service
    Given User is on the order tracking page
    When User enters order number "CS_REQ_ORD123"
    And User clicks the "Track Order" button
    Then The status message should display "Let me get you to customer service to see if they can help! One moment."
