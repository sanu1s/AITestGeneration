package steps;

import com.microsoft.playwright.Page;
import com.microsoft.playwright.Locator;
import com.microsoft.playwright.options.AriaRole;
import com.microsoft.playwright.options.LoadState;
import com.microsoft.playwright.assertions.PlaywrightAssertions;
import io.cucumber.java.en.*;
import java.util.regex.Pattern;
import java.util.Arrays;
import java.util.List;
import com.microsoft.playwright.options.SelectOption;
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

@Then("The order details should be displayed in the {string} section")
public void theOrderDetailsShouldBeDisplayedInTheSection(String sectionId) {
    System.out.println("Executing: The order details should be displayed in the " + sectionId + " section");
    assertThat(page.locator("#" + sectionId)).isVisible();
}

@When("User clicks the {string} button")
public void userClicksTheButton(String buttonText) {
    System.out.println("Executing: User clicks the " + buttonText + " button");
    page.locator("#searchBtn").click();
}

@When("User selects {string} as search type")
public void userSelectsSearchType(String searchType) {
    System.out.println("Executing: User selects " + searchType + " as search type");
    page.locator("#searchType").selectOption(searchType);
}

@Then("The error message {string} should be displayed in the {string} section")
public void theErrorMessageShouldBeDisplayedInTheSection(String expectedErrorMessage, String sectionId) {
    System.out.println("Executing: The error message " + expectedErrorMessage + " should be displayed in the " + sectionId + " section");
    assertThat(page.locator("#" + sectionId)).containsText(expectedErrorMessage);
}

@Given("User is on the Order Status tracking page")
public void userIsOnTheOrderStatusTrackingPage() {
    System.out.println("Executing: User is on the Order Status tracking page");
    page.navigate("http://localhost:7070");
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNumber) {
    System.out.println("Executing: User enters order number " + orderNumber);
    page.locator("#orderIdInput").fill(orderNumber);
}

}
