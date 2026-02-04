Feature: Order Tracking - Handling Natural Language Input in Order Number Field (Negative)

  Scenario: Attempt to track with a return extension request
    Given User is on the order tracking page
    When User enters "Can I also have a day extra to get this returned" into the order number field
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number format"
