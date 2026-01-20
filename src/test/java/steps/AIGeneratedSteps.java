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
    System.out.println("Verifying delivery date: " + expectedDate);
    assertThat(page.locator(".result")).containsText(expectedDate);
}

@When("User clicks the {string} button")
public void userClicksTheButton(String buttonText) {
    System.out.println("Executing: User clicks the \"" + buttonText + "\" button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The order status should be {string}")
public void theOrderStatusShouldBe(String status) {
    System.out.println("Executing: The order status should be \"" + status + "\"");
    assertThat(page.locator(".result")).containsText("Status: " + status);
}

@When("User enters an empty order number")
public void userEntersAnEmptyOrderNumber() {
    System.out.println("Executing: User enters an empty order number");
    page.locator("#order_no").fill("");
}

@Given("User is on the order tracking page")
public void userIsOnOrderTrackingPage() {
    System.out.println("Executing: User is on the order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@When("User leaves the order number field empty")
public void userLeavesOrderNumberFieldEmpty() {
    System.out.println("Leaving order number field empty");
    page.locator("#order_no").fill("");
}

@Then("The status message should display {string}")
public void theStatusMessageShouldDisplay(String expectedStatus) {
    System.out.println("Verifying status message: " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Then("The delivery date should be displayed")
public void theDeliveryDateShouldBeDisplayed() {
    System.out.println("Executing: The delivery date should be displayed");
    assertThat(page.locator(".result")).containsText("Delivery Date:");
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Executing: User enters order number \"" + orderNo + "\"");
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String errorMessage) {
    System.out.println("Executing: The error message should display \"" + errorMessage + "\"");
    assertThat(page.locator(".result")).containsText(errorMessage);
}

@Then("The result message should display {string}")
public void theResultMessageShouldDisplay(String expectedMessage) {
    System.out.println("Executing: The result message should display " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

}
