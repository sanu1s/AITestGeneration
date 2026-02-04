Feature: Order Cancellation - Outside Business Hours Validation

  Scenario: Display cancellation unavailability message outside business hours (late evening)
    Given the user is on the order tracking page
    And the system is configured for "outside business hours" at "11 PM"
    When the user enters order number "ORD78902"
    And clicks the "Track Order" button
    Then the error message should display "Unfortunately, we are currently outside of our business hours, so I can't connect you to a care representative right now."
