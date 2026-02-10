Feature: Price Adjustment Request

  Scenario: Deny price adjustment for an item outside the eligible policy window
    Given a customer has an order for an item 'Budget Gadget' (Order ID: 'ORD-98765') placed long ago (e.g., 60 days ago)
    And the 'Budget Gadget' is now advertised on sale at a lower price
    And the store's price adjustment policy specifies a 14-day eligibility window from the purchase date
    When the customer communicates a request for a price adjustment for 'ORD-98765' because the 'Budget Gadget' is now on sale
    Then the system should identify the order and check its eligibility against the policy
    And the system should deny the price adjustment
    And inform the customer that the item is outside the eligible adjustment window
