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

@Given("I am on the OrderQuest page")
    public void iAmOnTheOrderQuestPage() {
        System.out.println("Executing: I am on the OrderQuest page");
        page.navigate("http://localhost:7070");
    }

@Then("I should see the title {string}")
    public void iShouldSeeTheTitle(String expectedTitle) {
        System.out.println("Executing: I should see the title " + expectedTitle);
        assertThat(page.locator("h1")).containsText(expectedTitle);
    }

@When("I select {string} from the search type dropdown")
    public void iSelectFromTheSearchTypeDropdown(String optionText) {
        System.out.println("Executing: I select " + optionText + " from the search type dropdown");
        page.locator("#searchType").selectOption(optionText);
    }

@Then("I should see an input field with placeholder {string}")
    public void iShouldSeeAnInputFieldWithPlaceholder(String expectedPlaceholder) {
        System.out.println("Executing: I should see an input field with placeholder " + expectedPlaceholder);
        assertThat(page.locator("#orderIdInput")).isVisible();
        assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", expectedPlaceholder);
    }

}
