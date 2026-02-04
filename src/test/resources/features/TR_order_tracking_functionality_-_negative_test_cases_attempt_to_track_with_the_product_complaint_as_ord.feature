Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Attempt to track with the product complaint as order number
    Given User is on the order tracking page
    When User enters order number "Horrible monogram on heirloom blanket"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number format. Please enter a valid alphanumeric order ID."
