Feature: Order Tracking - Display of Initial Processing Message (Positive Scenarios)

  Scenario: Successfully track with another valid order number
    Given User is on the order tracking page
    When User enters order number "ORDER67890"
    And User clicks the "Track Order" button
    Then The status message should display "Thank you for providing your order information. Allow me one moment to conduct research regarding this inquiry today."
