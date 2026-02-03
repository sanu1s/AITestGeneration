package steps;

import com.microsoft.playwright.Page;
import com.microsoft.playwright.options.AriaRole;
import com.microsoft.playwright.options.LoadState;
import com.microsoft.playwright.assertions.PlaywrightAssertions;
import io.cucumber.java.en.*;
import static com.microsoft.playwright.assertions.PlaywrightAssertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

/**
 * Consolidate AI-generated Step Definitions
 */
public class AIGeneratedSteps {

    private final TestContext testContext;
    private final Page page;

    public AIGeneratedSteps(TestContext testContext) {
        this.testContext = testContext;
        this.page = testContext.page;
    }

@Then("I should see the order status {string}")
public void verifyOrderStatus(String expectedStatus) {
    System.out.println("Executing: Verify order status " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@When("User clicks the {string} button")
public void userClicksTheButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('Track Order')").click();
}

@Given("I am on the order tracking page")
public void navigateToTrackingPage() {
    System.out.println("Executing: Navigate to order tracking page");
    page.navigate("http://127.0.0.1:8088/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8088/order/tracking");
}

@Then("I should see an error message {string}")
public void verifyErrorMessage(String expectedError) {
    System.out.println("Executing: Verify error message " + expectedError);
    assertThat(page.locator(".result")).containsText(expectedError);
}

@When("I leave the order number field empty")
public void leaveOrderNumberEmpty() {
    System.out.println("Executing: Leave order number field empty");
    page.locator("#order_no").fill(""); // Ensure it's empty
}

@When("User leaves the order number field empty")
public void userLeavesOrderNumberFieldEmpty() {
    System.out.println("Leaving order number field empty.");
    page.locator("#order_no").fill("");
}

@When("I click the {string} button")
public void clickButton(String buttonText) {
    System.out.println("Executing: Click button " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The status message should display {string}")
public void theStatusMessageShouldDisplay(String message) {
    System.out.println("Verifying status message: " + message);
    assertThat(page.locator(".result")).containsText(message);
}

@When("I enter order number {string}")
public void enterOrderNumber(String orderNo) {
    System.out.println("Executing: Enter order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Given("User is on the order tracking page {string}")
public void userIsOnOrderTrackingPage(String url) {
    System.out.println("Navigating to order tracking page: " + url);
    page.navigate(url);
    assertThat(page).hasURL(url);
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String errorMessage) {
    System.out.println("Verifying error message: " + errorMessage);
    assertThat(page.locator(".error")).containsText(errorMessage);
}

}
