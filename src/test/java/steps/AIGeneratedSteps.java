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

@Then("I should see a search type dropdown with ID {string}")
    public void iShouldSeeASearchTypeDropdownWithID(String dropdownId) {
        System.out.println("Executing: I should see a search type dropdown with ID " + dropdownId);
        PlaywrightAssertions.assertThat(page.locator("select#" + dropdownId)).isVisible();
    }

@Then("I should see an empty display area with ID {string}")
    public void iShouldSeeAnEmptyDisplayAreaWithID(String areaId) {
        System.out.println("Executing: I should see an empty display area with ID " + areaId);
        PlaywrightAssertions.assertThat(page.locator("div#" + areaId + ", section#" + areaId)).isVisible();
        PlaywrightAssertions.assertThat(page.locator("div#" + areaId + ", section#" + areaId)).hasText("");
    }

@Given("I am on the OrderQuest homepage")
    public void iAmOnTheOrderQuestHomepage() {
        System.out.println("Executing: I am on the OrderQuest homepage");
        page.navigate("http://orderquest.com:7070");
    }

@Then("I should see an input field with ID {string} and placeholder {string}")
    public void iShouldSeeAnInputFieldWithIDAndPlaceholder(String inputId, String placeholderText) {
        System.out.println("Executing: I should see an input field with ID " + inputId + " and placeholder " + placeholderText);
        PlaywrightAssertions.assertThat(page.locator("input#" + inputId)).isVisible();
        PlaywrightAssertions.assertThat(page.locator("input#" + inputId)).hasAttribute("placeholder", placeholderText);
    }

@Then("I should see a button with ID {string} with text {string}")
    public void iShouldSeeAButtonWithIDWithText(String buttonId, String buttonText) {
        System.out.println("Executing: I should see a button with ID " + buttonId + " with text " + buttonText);
        PlaywrightAssertions.assertThat(page.locator("button#" + buttonId)).isVisible();
        PlaywrightAssertions.assertThat(page.locator("button#" + buttonId)).hasText(buttonText);
    }

@Then("I should see the page title as {string}")
    public void iShouldSeeThePageTitleAs(String expectedTitle) {
        System.out.println("Executing: I should see the page title as " + expectedTitle);
        PlaywrightAssertions.assertThat(page).hasTitle(expectedTitle);
    }

@Then("the {string} dropdown should contain options {string} and {string}")
    public void theDropdownShouldContainOptions(String dropdownId, String option1, String option2) {
        System.out.println("Executing: The dropdown " + dropdownId + " should contain options " + option1 + " and " + option2);
        List<String> expectedOptions = Arrays.asList(option1, option2);
        List<String> actualOptions = page.locator("select#" + dropdownId + " option").allTextContents();
        assertEquals(expectedOptions, actualOptions);
    }

}
