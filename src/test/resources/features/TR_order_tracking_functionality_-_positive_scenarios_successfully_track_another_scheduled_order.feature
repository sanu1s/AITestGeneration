Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track another scheduled order
    Given User is on the order tracking page
    When User enters order number "SCHED456"
    And User clicks the "Track Order" button
    Then The status message should display "Your order SCHED456 is scheduled for delivery."
