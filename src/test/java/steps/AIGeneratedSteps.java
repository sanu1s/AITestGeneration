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

@Given("User is on the order tracking page")
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Executing: User is on the order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@Then("An error message should display {string}")
public void anErrorMessageShouldDisplay(String errorMessage) {
    System.out.println("Executing: An error message should display " + errorMessage);
    assertThat(page.locator(".result")).containsText(errorMessage);
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Executing: User enters order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The order status should display {string}")
public void theOrderStatusShouldDisplay(String expectedStatus) {
    System.out.println("Executing: The order status should display " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

}
