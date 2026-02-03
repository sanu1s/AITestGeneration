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

@Given("User is on the Price Adjustment Request page")
public void userIsOnPriceAdjustmentPage() {
    System.out.println("Executing: User is on the Price Adjustment Request page");
    page.navigate("https://example.com/price-adjustment");
}

@When("User clicks the {string} button")
public void clickButton(String buttonText) {
    System.out.println("Executing: User clicks the " + buttonText + " button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("A success message should display {string}")
public void verifySuccessMessage(String msg) {
    System.out.println("Executing: A success message should display " + msg);
    assertThat(page.locator(".result")).containsText(msg);
}

@Then("An error message should display {string}")
public void verifyErrorMessage(String msg) {
    System.out.println("Executing: An error message should display " + msg);
    assertThat(page.locator(".error")).containsText(msg);
}

@When("User enters order number {string}")
public void enterOrderNumber(String orderNo) {
    System.out.println("Executing: User enters order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

}
