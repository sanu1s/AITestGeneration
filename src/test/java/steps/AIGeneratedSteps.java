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

@Given("User is on the order tracking page")
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Navigating to order tracking page");
    page.navigate("http://localhost:8088/order/tracking");
}

@Then("The order status result should display {string}")
public void theOrderStatusResultShouldDisplay(String expectedMessage) {
    System.out.println("Verifying order status result: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("User clicks the Track Order button")
public void userClicksTheTrackOrderButton() {
    System.out.println("Clicking Track Order button");
    page.locator("button:has-text('Track Order')").click();
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String expectedErrorMessage) {
    System.out.println("Verifying error message: " + expectedErrorMessage);
    assertThat(page.locator(".result")).containsText(expectedErrorMessage);
}

}
