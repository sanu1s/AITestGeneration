Feature: Track Replacement Order - Positive Scenarios

  Scenario: Successfully track a valid replacement order
    Given User is on the order tracking page
    When User enters order number "REP12345"
    And User clicks the "Track Order" button
    Then The status message should display "I have gone ahead and issued this replacement alongside personalization inspection for this item. Please allow up to 24 hours to see a replacement order confirmation once your replacement Heirloom Blanket has begun to ship. Once the new item has arrived, you will have up to 30 days to return the defective Heirloom blanket back to us. We should be all set for now."
