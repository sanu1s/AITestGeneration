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

@Then("Page title should contain {string}")
public void verifyPageTitle(String expectedTitlePart) {
    System.out.println("Executing: Page title should contain " + expectedTitlePart);
    assertThat(page).hasTitle(new Regex(".*" + expectedTitlePart + ".*"));
}

@Then("The dropdown with ID {string} should contain option {string}")
public void verifyDropdownOption(String id, String optionText) {
    System.out.println("Executing: The dropdown with ID " + id + " should contain option " + optionText);
    assertThat(page.locator("#" + id + " option:has-text('" + optionText + "')")).isVisible();
}

@Given("User navigates to the Order Quest page")
public void navigateToOrderQuestPage() {
    System.out.println("Executing: User navigates to the Order Quest page");
    page.navigate("http://localhost:7070");
}

@When("User inspects the search type dropdown")
public void inspectSearchTypeDropdown() {
    System.out.println("Executing: User inspects the search type dropdown");
    // No specific action needed, just setting context for subsequent 'Then' steps
}

}
