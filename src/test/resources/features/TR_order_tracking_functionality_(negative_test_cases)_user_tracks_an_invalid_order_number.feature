Feature: Order Tracking Functionality (Negative Test Cases)

  Scenario: User tracks an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID_ORDER_XYZ"
    And User clicks "Track Order" button
    Then The error message should display "Invalid Order Number. Please try again."
