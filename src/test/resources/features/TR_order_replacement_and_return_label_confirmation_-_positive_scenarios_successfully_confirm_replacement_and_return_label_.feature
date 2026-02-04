Feature: Order Replacement and Return Label Confirmation - Positive Scenarios

  Scenario: Successfully confirm replacement and return label for another valid order
    Given User is on the order tracking page
    When User enters order number "REPL456" and clicks Track Order
    Then The status message should display "Sure, we can have a replacement sent, along with a prepaid UPS return label."
