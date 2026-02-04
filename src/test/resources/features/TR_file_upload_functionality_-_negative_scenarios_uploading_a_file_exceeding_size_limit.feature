Feature: File Upload Functionality - Negative Scenarios

  Scenario: Uploading a file exceeding size limit
    Given User is on the file upload page
    When User selects a large file "oversized_image.png"
    And User clicks the "Upload" button
    Then The error message should display "File size exceeds limit of 5MB."
