Feature: Photo Upload and Delivery Confirmation - Negative Scenarios

  Scenario: Failed upload with oversized file - no success message displayed
    Given User is on the photo upload page
    When User attempts to upload an oversized photo file "large_photo.tiff"
    Then the status message should not display "The photos should be in your inbox"
    And an error message should be visible
