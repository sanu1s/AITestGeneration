# VectorDB AntiGravity (Kordel AI)

VectorDB AntiGravity is an agentic automation platform designed to bridge the gap between requirements discovery, test generation, and project management using LLMs (specifically Google Gemini) and vector databases.

## 🚀 Key Features

### 1. Elite QE (Quality Engineering)
- **JIRA Scanner**: Pulls requirements from Jira Epics and automatically generates Gherkin features and Playwright Java step definitions.
- **Discovery Mode**: Upload call transcripts or logs to extract raw use cases and scenarios directly from stakeholder discussions.

### 2. Elite PDM (Project Development Management)
- **AI JIRA Creator**: Generate structured JIRA tickets (Stories, Tasks, Bugs) with full Acceptance Criteria from simple natural language descriptions.
- **JIRA Requirement Validation**: AI-driven analysis of requirements to identify gaps, ambiguity, and lack of testability.

### 3. Governance & Customization
- **Prompt Engineering**: Built-in editor to fine-tune the system prompts governing AI behavior across all modules.
- **Execution Lab**: Real-time terminal output tracking the agent's background tasks.
- **Detailed Reporting**: Integration with Allure for visual test execution results.

## 🛠 Prerequisites

- **Java 21** or higher
- **Gradle 8.x**
- **Google Gemini API Key** (for AI processing)
- **JIRA API Token** (for Jira integration)
- **GitHub PAT** (for pushing generated code)

## ⚙️ Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/sanu1s/AITestGeneration.git
   cd VectorDB_AntiGravity
   ```

2. **Configure Environment**:
   Create a `local.properties` file in the root directory with the following keys:
   ```properties
   GEMINI_API_KEY=your_gemini_key
   GITHUB_USER=your_github_username
   GITHUB_TOKEN=your_github_pat
   VECTOR_TOKEN=your_qdrant_token
   JIRA_URL=your_jira_instance_url
   JIRA_USER=your_jira_email
   JIRA_TOKEN=your_jira_api_token
   ```

3. **Refresh Dependencies**:
   ```bash
   ./gradlew clean build
   ```

## 🏃 Running the Application

Start the Javalin web server:
```bash
./gradlew run
```

Access the dashboard at:
[http://localhost:8088](http://localhost:8088)

## 📁 Project Structure

- `src/main/java/org/example`: Core orchestrator and AI logic.
- `src/main/resources/static`: Frontend dashboard assets (HTML/CSS/JS).
- `src/main/resources/prompts`: System prompts for the LLM.
- `src/test/resources/features`: Generated BDD feature files.
- `src/test/java/steps`: Generated Playwright step definitions.

## 🤝 Contributing

This project is part of an advanced agentic coding initiative. For major changes, please open an issue first to discuss what you would like to change.

---
*Built with ❤️ by the Elite Teams.*
