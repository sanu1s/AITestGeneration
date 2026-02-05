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

@When("User clicks the \"Track Order\" button")
public void clickTrackOrderButton() {
    System.out.println("Executing: User clicks the \"Track Order\" button");
    page.locator("button:has-text('Track Order')").click();
}

@Given("User is on the order tracking page")
public void userIsOnOrderTrackingPage() {
    System.out.println("Executing: User is on the order tracking page");
    page.navigate("https://example.com/trackorder");
}

@When("User enters order number {string}")
public void enterOrderNumber(String orderNo) {
    System.out.println("Executing: User enters order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void verifyErrorMessage(String errorMessage) {
    System.out.println("Executing: The error message should display " + errorMessage);
    assertThat(page.locator(".error")).containsText(errorMessage);
}

@Then("The order status should display {string}")
public void verifyOrderStatus(String statusMessage) {
    System.out.println("Executing: The order status should display " + statusMessage);
    assertThat(page.locator(".result")).containsText(statusMessage);
}

}
