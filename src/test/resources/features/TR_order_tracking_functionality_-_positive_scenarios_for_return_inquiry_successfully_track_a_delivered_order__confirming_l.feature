Feature: Order Tracking Functionality - Positive Scenarios for Return Inquiry

  Scenario: Successfully track a delivered order, confirming late delivery for return
    Given user is on the order tracking page
    When user enters order number "ORD12345"
    And user clicks the "Track Order" button
    Then the status message should display "Your order ORD12345 was delivered on 2024-08-15."
