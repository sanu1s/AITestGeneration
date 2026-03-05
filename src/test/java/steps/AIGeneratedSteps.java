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

    @Given("I am on the Order Search Page")
    public void navigateToApp() {
        System.out.println("Executing: Navigating to Order Search Page");
        page.navigate("http://orderquest.com:7070");
    }

    @When("I select {string} from the dropdown")
    @When("I select {string} from the search type dropdown")
    public void selectDropdown(String optionLabel) {
        System.out.println("Executing: Selecting '" + optionLabel + "' from dropdown");
        page.locator("#searchType").selectOption(new com.microsoft.playwright.options.SelectOption().setLabel(optionLabel));
    }

    @When("I enter {string} into the {string} field")
    public void enterIntoField(String value, String fieldLabel) {
        System.out.println("Executing: Entering '" + value + "' into '" + fieldLabel + "' field");
        page.locator("#orderIdInput").fill(value);
    }

    @When("I click the {string} button")
    public void clickButton(String buttonText) {
        System.out.println("Executing: Clicking '" + buttonText + "' button");
        page.locator("#searchBtn:has-text(\\\"" + buttonText + "\\\")").click();
    }

    @Then("the {string} section should be {string}")
    public void verifySectionState(String sectionName, String state) {
        System.out.println("Executing: Verifying '" + sectionName + "' section is " + state);
        com.microsoft.playwright.Locator locator = sectionName.toLowerCase().contains("error") ? page.locator("#error") : page.locator("#orderDetails");
        if (state.equalsIgnoreCase("visible")) {
            assertThat(locator).isVisible();
        } else {
            assertThat(locator).isHidden();
        }
    }

    @Then("the {string} should contain text {string}")
    @Then("the {string} should display {string}")
    public void verifyTextContent(String element, String expectedText) {
        System.out.println("Executing: Verifying '" + element + "' contains text: " + expectedText);
        com.microsoft.playwright.Locator locator = element.toLowerCase().contains("error") ? page.locator("#errorMessage") : page.locator("#orderDetails");
        assertThat(locator).containsText(expectedText);
    }

@Then("the {string} field should have placeholder {string}")
public void verifyPlaceholder(String elementId, String expectedPlaceholder) {
    System.out.println("Executing: The " + elementId + " field should have placeholder " + expectedPlaceholder);
    assertThat(page.locator("//input[@id='" + elementId + "']")).hasAttribute("placeholder", expectedPlaceholder);
}

}
