Feature: Order Tracking - Negative Scenarios for 20% Off Promotion Validity

  Scenario: User tracks an invalid order number displays error and no promotion
    Given User is on the order tracking page at 'https://example.com/track'
    When User enters order number 'INVALIDORDERXYZ'
    And User clicks the 'Track Order' button
    Then The error message should display 'Invalid Order Number. Please try again.'
    And The URL should be 'https://example.com/track'
