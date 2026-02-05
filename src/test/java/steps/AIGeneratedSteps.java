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

@When("User clicks the {string} button")
public void userClicksTheButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@When("User enters reason {string}")
public void enterReason(String reason) {
    System.out.println("Entering reason: " + reason);
    page.locator("#reason_message").fill(reason);
}

@Given("User is on the order tracking page")
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Navigating to order tracking page");
    page.navigate("http://127.0.0.1:8088/order/tracking");
}

@Then("A success message {string} should be displayed")
public void verifySuccessMessage(String message) {
    System.out.println("Verifying success message: " + message);
    assertThat(page.locator(".success-message")).containsText(message);
}

@When("User clicks {string} button")
public void clickButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@When("User enters item name {string}")
public void enterItemName(String itemName) {
    System.out.println("Entering item name: " + itemName);
    page.locator("#item_name").fill(itemName);
}

@Then("An error message {string} should be displayed")
public void verifyErrorMessage(String message) {
    System.out.println("Verifying error message: " + message);
    assertThat(page.locator(".error")).containsText(message);
}

@Given("User is on the {string} page")
public void navigateToPage(String pageName) {
    System.out.println("Navigating to: " + pageName);
    // Assuming a mapping for page names to URLs
    if (pageName.equals("Price Adjustment Request")) {
        page.navigate("http://localhost:8080/price-adjustment-request");
    }

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String expectedError) {
    System.out.println("Verifying error message: " + expectedError);
    assertThat(page.locator(".result")).containsText(expectedError);
}

@Then("The order status should display {string}")
public void theOrderStatusShouldDisplay(String expectedStatus) {
    System.out.println("Verifying order status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

}
