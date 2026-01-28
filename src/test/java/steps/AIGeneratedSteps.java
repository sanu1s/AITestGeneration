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

@Given("I am on the order tracking page")
public void iAmOnTheOrderTrackingPage() {
    System.out.println("Executing: I am on the order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@When("I enter the order number {string}")
public void iEnterTheOrderNumber(String orderNo) {
    System.out.println("Executing: I enter the order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@When("I leave the order number field empty")
public void iLeaveTheOrderNumberFieldEmpty() {
    System.out.println("Executing: I leave the order number field empty");
    page.locator("#order_no").fill("");
}

@Then("the result should display {string}")
public void theResultShouldDisplay(String errorMessage) {
    System.out.println("Executing: The result should display " + errorMessage);
    assertThat(page.locator(".result")).containsText(errorMessage);
}

@When("I click the {string} button")
public void iClickTheButton(String buttonText) {
    System.out.println("Executing: I click the " + buttonText + " button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("the result should contain {string}")
public void theResultShouldContain(String expectedText) {
    System.out.println("Executing: The result should contain " + expectedText);
    assertThat(page.locator(".result")).containsText(expectedText);
}

}
