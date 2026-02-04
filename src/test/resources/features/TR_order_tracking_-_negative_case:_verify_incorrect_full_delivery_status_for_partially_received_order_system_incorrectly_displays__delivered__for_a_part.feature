Feature: Order Tracking - Negative Case: Verify Incorrect Full Delivery Status for Partially Received Order

  Scenario: System Incorrectly Displays 'Delivered' for a Partially Received Order
    Given User is on the order tracking page
    When User enters order number "PO_INCORRECT_FULL_3"
    And User clicks the "Track Order" button
    Then The status message should display "Delivered"
    And The status message should not display "Partially Delivered"
