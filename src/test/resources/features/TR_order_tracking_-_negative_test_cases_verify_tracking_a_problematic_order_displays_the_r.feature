Feature: Order Tracking - Negative Test Cases

  Scenario: Verify tracking a problematic order displays the reported issue
    Given User is on the order tracking page
    When User enters order number "MONOBLANKET6789"
    And User clicks "Track Order" button
    Then The status message should display "Order MONOBLANKET6789: Complaint logged - Horrible monogram on heirloom blanket."
    And The current URL should be "https://example.com/track/MONOBLANKET6789"
