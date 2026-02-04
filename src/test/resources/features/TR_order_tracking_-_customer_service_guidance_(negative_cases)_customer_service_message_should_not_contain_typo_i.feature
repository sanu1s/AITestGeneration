Feature: Order Tracking - Customer Service Guidance (Negative Cases)

  Scenario: Customer Service Message Should Not Contain Typo in 'Customer Service team'
    Given User is on the order tracking page
    When User enters order number "INVALID_FORMAT"
    And User clicks the "Track Order" button
    Then The status message should not display "Customer Servic team"
