Feature: Order Tracking with Address Updates - Negative Scenarios

  Scenario: Attempt to track an order where address update is pending or not reflected
    Given User is on the order tracking page
    When User enters order number "PENDING456"
    And User clicks the "Track Order" button
    Then The error message should display "Address update for order PENDING456 is still being processed. Delivery scheduling currently for 456 Elm St, Originaltown, USA."
    And The URL should match pattern "**/track"
