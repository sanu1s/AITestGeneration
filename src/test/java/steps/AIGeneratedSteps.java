package steps;

import com.microsoft.playwright.Page;
import com.microsoft.playwright.options.AriaRole;
import com.microsoft.playwright.options.LoadState;
import com.microsoft.playwright.assertions.PlaywrightAssertions;
import io.cucumber.java.en.*;
import java.util.regex.Pattern;
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

@And("the {string} dropdown should contain option {string}")
    public void dropdownShouldContainOption(String dropdownId, String optionText) {
        System.out.println("Executing: the " + dropdownId + " dropdown should contain option " + optionText);
        assertThat(page.locator("select#" + dropdownId + " option").filter(new Locator.FilterOptions().setHasText(optionText))).isVisible();
    }

@And("the input field with ID {string} should have placeholder {string}")
    public void inputFieldShouldHavePlaceholder(String inputId, String placeholderText) {
        System.out.println("Executing: the input field with ID " + inputId + " should have placeholder " + placeholderText);
        assertThat(page.locator("input#" + inputId)).hasAttribute("placeholder", placeholderText);
    }

@Then("I should see the page title containing {string}")
    public void shouldSeePageTitleContaining(String titlePartialText) {
        System.out.println("Executing: I should see the page title containing " + titlePartialText);
        assertThat(page).hasTitle(Pattern.compile(titlePartialText));
    }

@Then("I should see an input field with ID {string}")
    public void shouldSeeInputFieldWithId(String inputId) {
        System.out.println("Executing: I should see an input field with ID " + inputId);
        assertThat(page.locator("input#" + inputId)).isVisible();
    }

@And("I should see a dropdown with ID {string}")
    public void shouldSeeDropdownWithId(String dropdownId) {
        System.out.println("Executing: I should see a dropdown with ID " + dropdownId);
        assertThat(page.locator("select#" + dropdownId)).isVisible();
    }

@And("I should see an empty search results area with ID {string}")
    public void shouldSeeEmptySearchResultsAreaWithId(String areaId) {
        System.out.println("Executing: I should see an empty search results area with ID " + areaId);
        assertThat(page.locator("div#" + areaId + ", section#" + areaId)).isVisible();
        assertThat(page.locator("div#" + areaId + ", section#" + areaId)).isEmpty(); // Asserts it contains no elements
    }

@And("I should see an empty status display area with ID {string}")
    public void shouldSeeEmptyStatusDisplayAreaWithId(String areaId) {
        System.out.println("Executing: I should see an empty status display area with ID " + areaId);
        assertThat(page.locator("div#" + areaId + ", section#" + areaId)).isVisible();
        assertThat(page.locator("div#" + areaId + ", section#" + areaId)).isEmpty(); // Asserts it contains no elements
    }

@And("I should see a button with ID {string} and text {string}")
    public void shouldSeeButtonWithIdAndText(String buttonId, String buttonText) {
        System.out.println("Executing: I should see a button with ID " + buttonId + " and text " + buttonText);
        assertThat(page.locator("button#" + buttonId)).isVisible();
        assertThat(page.locator("button#" + buttonId)).hasText(buttonText);
    }

@Given("I navigate to the OrderQuest application")
    public void navigateToOrderQuestApplication() {
        System.out.println("Executing: I navigate to the OrderQuest application");
        page.navigate("http://localhost:7070");
    }

@And("I should not see any error message area with ID {string} initially")
    public void shouldNotSeeErrorMessageAreaWithIdInitially(String errorId) {
        System.out.println("Executing: I should not see any error message area with ID " + errorId + " initially");
        assertThat(page.locator("div#" + errorId + ", section#" + errorId)).not(isVisible());
    }

}
