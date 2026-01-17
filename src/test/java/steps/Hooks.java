package steps;

import io.cucumber.java.After;

public class Hooks {
    private final TestContext testContext;

    public Hooks(TestContext testContext) {
        this.testContext = testContext;
    }

    @After
    public void tearDown() {
        System.out.println("Cleaning up Playwright resources...");
        if (testContext.page != null) {
            testContext.page.close();
        }
        if (testContext.context != null) {
            testContext.context.close();
        }
        if (testContext.browser != null) {
            testContext.browser.close();
        }
        if (testContext.playwright != null) {
            testContext.playwright.close();
        }
    }
}
