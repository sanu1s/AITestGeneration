Feature: Cancellation Status Message Display - Positive Case

  Scenario: Verify 'Cancellation in Progress' Message for an Order
    Given User is on the order tracking page
    When User enters order number "CANC001"
    And User clicks the "Track Order" button
    Then The status message should display "One more moment Amanda, I'm still working on the cancelation."
