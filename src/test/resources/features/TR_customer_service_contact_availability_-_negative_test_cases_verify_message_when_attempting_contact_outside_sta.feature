Feature: Customer Service Contact Availability - Negative Test Cases

  Scenario: Verify message when attempting contact outside standard business hours
    Given User navigates to the customer service contact page
    When User attempts to initiate contact
    Then The availability message "It looks we’re currently outside of our business hours and unable to connect you with a care representative right now." should be displayed
