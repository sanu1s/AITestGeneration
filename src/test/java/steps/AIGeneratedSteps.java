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

@Then("The delivery date should be {string}")
public void theDeliveryDateShouldBe(String expectedDate) {
    System.out.println("Executing: The delivery date should be " + expectedDate);
    // Assuming a dedicated locator for delivery date, or it's part of the .result
    // If it's part of .result, then change to: assertThat(page.locator(".result")).containsText(expectedDate);
    assertThat(page.locator(".delivery-date")).containsText(expectedDate);
}

@When("User clicks the {string} button")
public void userClicksTheButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The order status should be {string}")
public void theOrderStatusShouldBe(String expectedStatus) {
    System.out.println("Verifying order status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText("Status: " + expectedStatus);
}

@When("User enters an empty order number")
public void userEntersAnEmptyOrderNumber() {
    System.out.println("Executing: User enters an empty order number");
    page.locator("#order_no").fill("");
}

@Given("User is on the order tracking page")
public void userIsOnOrderTrackingPage() {
    System.out.println("Navigating to order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@When("User leaves the order number field empty")
public void userLeavesOrderNumberFieldEmpty() {
    System.out.println("Executing: User leaves the order number field empty");
    page.locator("#order_no").fill(""); // Ensure the field is empty
}

@Then("The status message should display {string}")
public void theStatusMessageShouldDisplay(String expectedStatus) {
    System.out.println("Executing: The status message should display " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Then("The delivery date should be displayed")
public void theDeliveryDateShouldBeDisplayed() {
    System.out.println("Verifying delivery date is displayed");
    assertThat(page.locator(".result")).containsText("Delivery Date:");
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String expectedErrorMessage) {
    System.out.println("Verifying error message: " + expectedErrorMessage);
    assertThat(page.locator(".error")).containsText(expectedErrorMessage);
}

}
