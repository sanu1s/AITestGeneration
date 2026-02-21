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

@Then("I should see the result message {string}")
public void iShouldSeeTheResultMessage(String expectedMessage) {
    System.out.println("Executing: I should see the result message " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Given("I am on the order tracking page")
public void iAmOnTheOrderTrackingPage() {
    System.out.println("Executing: I am on the order tracking page");
    page.navigate("http://localhost:8088/order/tracking");
}

@When("I leave the order number field empty")
public void iLeaveTheOrderNumberFieldEmpty() {
    System.out.println("Executing: I leave the order number field empty");
    page.locator("#order_no").fill("");
}

@When("I enter order number {string}")
public void iEnterOrderNumber(String orderNo) {
    System.out.println("Executing: I enter order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@When("I click {string}")
public void iClickTrackOrder(String buttonText) {
    System.out.println("Executing: I click " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

}
