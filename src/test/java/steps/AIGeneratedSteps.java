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
    System.out.println("Executing: User clicks the " + buttonText + " button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The order status should be {string}")
public void theOrderStatusShouldBe(String expectedStatus) {
    System.out.println("Executing: The order status should be " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Given("User is on the order tracking page")
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Executing: User is on the order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@Then("The status message should display {string}")
public void theStatusMessageShouldDisplay(String expectedStatus) {
    System.out.println("Executing: The status message should display " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Then("The order status should display {string}")
public void theOrderStatusShouldDisplay(String expectedStatus) {
    System.out.println("Executing: The order status should display: " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Then("The result message should display {string}")
public void theResultMessageShouldDisplay(String expectedResultMessage) {
    System.out.println("Verifying result message: " + expectedResultMessage);
    assertThat(page.locator(".result")).containsText(expectedResultMessage);
}

@When("User leaves the order number field empty")
public void userLeavesOrderNumberFieldEmpty() {
    System.out.println("Executing: User leaves the order number field empty");
    page.locator("#order_no").fill(""); // Explicitly ensure the field is empty
}

@Then("The delivery date should be displayed")
public void theDeliveryDateShouldBeDisplayed() {
    System.out.println("Executing: The delivery date should be displayed");
    assertThat(page.locator(".result")).containsText("Delivery Date:");
}

@Then("An error message {string} should be displayed")
public void anErrorMessageShouldBeDisplayed(String errorMessage) {
    System.out.println("Executing: An error message " + errorMessage + " should be displayed");
    assertThat(page.locator(".error")).containsText(errorMessage);
}

@When("User leaves order number field empty")
public void userLeavesOrderNumberFieldEmpty() {
    System.out.println("Executing: User leaves order number field empty");
    page.locator("#order_no").fill("");
}

@Then("The delivery date should display {string}")
public void theDeliveryDateShouldDisplay(String expectedDate) {
    System.out.println("Executing: The delivery date should display: " + expectedDate);
    // Assuming a distinct locator for the delivery date, e.g., an element with ID 'delivery_date'
    assertThat(page.locator("#delivery_date")).containsText(expectedDate);
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Executing: User enters order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String errorMessage) {
    System.out.println("Executing: The error message should display: " + errorMessage);
    assertThat(page.locator(".error")).containsText(errorMessage);
}

}
