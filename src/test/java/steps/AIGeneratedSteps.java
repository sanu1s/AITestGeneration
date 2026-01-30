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

@Then("I should see the error message {string} in the result")
    public void iShouldSeeTheErrorMessageInTheResult(String errorMessage) {
        System.out.println("Executing: I should see the error message " + errorMessage + " in the result");
        assertThat(page.locator(".result")).containsText(errorMessage);
    }

@Given("I am on the order tracking page")
    public void iAmOnTheOrderTrackingPage() {
        System.out.println("Executing: I am on the order tracking page");
        page.navigate("http://127.0.0.1:8000/order/tracking");
        assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
    }

@When("I leave the order number field empty")
    public void iLeaveTheOrderNumberFieldEmpty() {
        System.out.println("Executing: I leave the order number field empty");
        page.locator("#order_no").fill("");
    }

@When("I enter an invalid format order number {string}")
    public void iEnterAnInvalidFormatOrderNumber(String orderNo) {
        System.out.println("Executing: I enter an invalid format order number " + orderNo);
        page.locator("#order_no").fill(orderNo);
    }

@When("I enter a valid order number {string}")
    public void iEnterAValidOrderNumber(String orderNo) {
        System.out.println("Executing: I enter a valid order number " + orderNo);
        page.locator("#order_no").fill(orderNo);
    }

@When("I click the \\"Track Order\\" button")
    public void iClickTheTrackOrderButton() {
        System.out.println("Executing: I click the \"Track Order\" button");
        page.locator("button:has-text('Track Order')").click();
    }

@Then("I should see {string} in the result")
    public void iShouldSeeInTheResult(String expectedText) {
        System.out.println("Executing: I should see " + expectedText + " in the result");
        assertThat(page.locator(".result")).containsText(expectedText);
    }

@When("I enter a non-existent order number {string}")
    public void iEnterANonExistentOrderNumber(String orderNo) {
        System.out.println("Executing: I enter a non-existent order number " + orderNo);
        page.locator("#order_no").fill(orderNo);
    }

}
