Feature: Order Tracking - Positive Scenarios for Issue Resolution

  Scenario: User tracks an order with an identified issue and receives detailed resolution steps
    Given User is on the order tracking page
    When User enters order number "ORD_ISSUE_789"
    And User clicks the "Track Order" button
    Then The status message should contain "send an email to returnphoto@owncompany.com"
    And The status message should contain "include your order number in the email subject line"
    And The status message should contain "Within 24-48 hours, you will receive a separate email"
    And The status message should contain "estimated delivery timeframe within 7-10 days"
