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

@Then("the bot should not provide specific business hours information")
public void botShouldNotProvideSpecificBusinessHoursInformation() {
    System.out.println("Executing: Verifying bot does not provide specific business hours");
    // Assuming specific business hours would contain digits or common time phrases
    assertThat(page.locator(".result")).doesNotContainText("open from");
    assertThat(page.locator(".result")).doesNotContainText("closed at");
    assertThat(page.locator(".result")).doesNotContainText("9 AM to 5 PM"); // Example specific time
    assertThat(page.locator(".result")).doesNotContainText("hours are");
}

@Then("the bot should respond with {string}")
public void botShouldRespondWith(String expectedResponse) {
    System.out.println("Executing: Verifying bot response: " + expectedResponse);
    assertThat(page.locator(".result")).containsText(expectedResponse);
}

@When("the user clicks the Track Order button")
public void userClicksTrackOrderButton() {
    System.out.println("Executing: User clicks Track Order button");
    page.locator("button:has-text('Track Order')").click();
}

@Given("the user navigates to the order tracking page")
public void navigateToOrderTrackingPage() {
    System.out.println("Executing: Navigating to order tracking page");
    page.navigate("http://localhost:8088/order/tracking");
}

@When("the user sends the message {string}")
public void userSendsMessage(String message) {
    System.out.println("Executing: User sends message: " + message);
    page.locator("#order_no").fill(message);
}

}
