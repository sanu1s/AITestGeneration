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

@When("User leaves the order number field empty")
public void userLeavesOrderNumberFieldEmpty() {
    System.out.println("Leaving order number field empty");
    // No action needed, field is already empty by default or can be cleared
    page.locator("#order_no").fill("");
}

@Then("The delivery date should be displayed as {string}")
public void theDeliveryDateShouldBeDisplayedAs(String expectedDate) {
    System.out.println("Verifying delivery date: " + expectedDate);
    assertThat(page.locator(".result")).containsText(expectedDate);
}

@Given("User is on the Order Tracking page")
public void userIsOnOrderTrackingPage() {
    System.out.println("Navigating to Order Tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String errorMessage) {
    System.out.println("Verifying error message: " + errorMessage);
    assertThat(page.locator(".result")).containsText(errorMessage);
}

@Then("The order status should display {string}")
public void theOrderStatusShouldDisplay(String expectedStatus) {
    System.out.println("Verifying order status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

}
