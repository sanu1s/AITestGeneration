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

@When("User clicks the \"Track Order\" button")
public void clickTrackOrderButton() {
    System.out.println("Executing: User clicks the 'Track Order' button");
    page.locator("button:has-text('Track Order')").click();
}

@Given("User is on the order tracking page")
public void userIsOnOrderTrackingPage() {
    System.out.println("Navigating to order tracking page");
    page.navigate("http://localhost:8080/order-tracking");
}

@When("User leaves the order number field empty")
public void leaveOrderNumberEmpty() {
    System.out.println("Executing: User leaves the order number field empty");
    page.locator("#order_no").fill("");
}

@Then("The status message should display {string}")
public void theStatusMessageShouldDisplay(String message) {
    System.out.println("Verifying status message: " + message);
    assertThat(page.locator(".result")).containsText(message);
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Entering order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String message) {
    System.out.println("Verifying error message: " + message);
    assertThat(page.locator(".error")).containsText(message);
}

@Then("The order status should display {string}")
public void verifyOrderStatus(String expectedStatus) {
    System.out.println("Executing: The order status should display " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

}
