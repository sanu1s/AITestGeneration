document.addEventListener('DOMContentLoaded', () => {
    const runBtn = document.getElementById('runBtn');
    const epicKeyInput = document.getElementById('epicKey');
    const fetchBtn = document.getElementById('fetchBtn');
    const consoleOutput = document.getElementById('consoleOutput');
    const reportLink = document.getElementById('reportLink');
    // const statusText was removed
    const executionStatusText = document.getElementById('executionStatusText');
    const executionStatusIndicator = document.getElementById('executionStatusIndicator');

    const menuToggle = document.getElementById('menu-toggle');
    const sidebar = document.querySelector('.sidebar');

    if (menuToggle) {
        menuToggle.addEventListener('click', () => {
            sidebar.classList.toggle('open');
            // Change icon
            const icon = menuToggle.querySelector('i');
            if (sidebar.classList.contains('open')) {
                icon.classList.remove('fa-bars');
                icon.classList.add('fa-times');
            } else {
                icon.classList.remove('fa-times');
                icon.classList.add('fa-bars');
            }
        });
    }

    function log(message, type = 'info') {
        const entry = document.createElement('div');
        entry.className = `log-entry ${type === 'error' ? 'log-error' : type === 'success' ? 'log-success' : ''}`;
        const timestamp = new Date().toLocaleTimeString();
        entry.textContent = `[${timestamp}] ${message}`;
        consoleOutput.appendChild(entry);
        consoleOutput.scrollTop = consoleOutput.scrollHeight;
    }

    async function fetchReportStats() {
        try {
            const response = await fetch('/report/widgets/summary.json');
            if (response.ok) {
                const data = await response.json();
                const stats = data.statistic;
                const time = data.time;

                const total = stats.total;
                const passed = stats.passed || 0;
                const failed = stats.failed || 0;
                const broken = stats.broken || 0;
                const skipped = stats.skipped || 0;
                const unknown = stats.unknown || 0;

                // Update Legend Counts
                document.getElementById('countPassed').textContent = passed;
                document.getElementById('countFailed').textContent = failed;
                document.getElementById('countBroken').textContent = broken;
                document.getElementById('countSkipped').textContent = skipped;
                document.getElementById('countUnknown').textContent = unknown;

                // Update Header Info
                if (time) {
                    const startDate = new Date(time.start);
                    document.getElementById('reportDate').textContent = startDate.toLocaleDateString('en-GB', { day: 'numeric', month: 'long', year: 'numeric' });
                    
                    const durationMs = time.duration;
                    const durationStr = new Date(durationMs).toISOString().substring(11, 19); // HH:MM:SS
                    document.getElementById('reportDuration').textContent = durationStr;
                }

                // Update Donut Gradient
                // Logic: Calculate cumulative degrees for each segment
                // Colors: passed(#22cc5e), broken(#ffcc00), failed(#ff3333), skipped(#999999), unknown(#aa66cc)
                
                if (total > 0) {
                    const passDeg = (passed / total) * 360;
                    const brokenDeg = (broken / total) * 360;
                    const failedDeg = (failed / total) * 360;
                    const skippedDeg = (skipped / total) * 360;
                    const unknownDeg = (unknown / total) * 360;

                    let currentDeg = 0;
                    const gradParts = [];

                    // Passed
                    if (passed > 0) {
                        gradParts.push(`#22cc5e ${currentDeg}deg ${currentDeg + passDeg}deg`);
                        currentDeg += passDeg;
                    }
                    // Broken
                    if (broken > 0) {
                        gradParts.push(`#ffcc00 ${currentDeg}deg ${currentDeg + brokenDeg}deg`);
                        currentDeg += brokenDeg;
                    }
                    // Failed
                    if (failed > 0) {
                        gradParts.push(`#ff3333 ${currentDeg}deg ${currentDeg + failedDeg}deg`);
                        currentDeg += failedDeg;
                    }
                    // Skipped
                    if (skipped > 0) {
                        gradParts.push(`#999999 ${currentDeg}deg ${currentDeg + skippedDeg}deg`);
                        currentDeg += skippedDeg;
                    }
                    // Unknown
                    if (unknown > 0) {
                        gradParts.push(`#aa66cc ${currentDeg}deg ${currentDeg + unknownDeg}deg`);
                        currentDeg += unknownDeg;
                    }

                    document.getElementById('detailedDonut').style.background = `conic-gradient(${gradParts.join(', ')})`;
                    
                    // Center Text
                    const passRate = Math.round((passed / total) * 100);
                    document.getElementById('centerPercent').textContent = `${passRate}%`;
                } else {
                     document.getElementById('detailedDonut').style.background = `conic-gradient(var(--bg-dark) 0% 100%)`;
                     document.getElementById('centerPercent').textContent = `--%`;
                }
            }
        } catch (e) {
            console.error("Failed to fetch report stats", e);
        }
    }

    async function pollStatus(jobId) {
        const intervalId = setInterval(async () => {
            try {
                const response = await fetch(`/status/${jobId}`);
                if (response.ok) {
                    const statusData = await response.json();
                    
                    if (statusData.status === 'COMPLETED') {
                        clearInterval(intervalId);
                        
                        log(statusData.message, 'success');
                        
                        executionStatusText.textContent = "Completed";
                        executionStatusText.style.color = "#00ff9d";
                        executionStatusIndicator.className = "status-indicator active";
                        
                        // Show Acceptance Criteria
                        if (statusData.acceptanceCriteria) {
                            const acContainer = document.getElementById('acceptanceCriteriaContainer');
                            acContainer.innerHTML = statusData.acceptanceCriteria;
                        }

                        // Show Quality Badge
                        if (statusData.jiraQuality) {
                            document.getElementById('qualityBadge').innerHTML = statusData.jiraQuality;
                        }
                        
                        // Show Report
                        reportLink.style.display = 'inline-block';
                        fetchReportStats();
                        
                        // Show Git Link
                        if (statusData.prUrl) {
                            const gitContainer = document.getElementById('gitLinkContainer');
                            const gitBtn = document.getElementById('gitLinkBtn');
                            gitBtn.href = statusData.prUrl;
                            gitContainer.style.display = 'block';
                            log(`Git Branch created: ${statusData.prUrl}`);
                        }

                        runBtn.disabled = false;
                        runBtn.textContent = 'Generate Test Cases';
                        
                        setThinkingState(false);

                    } else if (statusData.status === 'FAILED') {
                        clearInterval(intervalId);
                        
                        log(statusData.message, 'error');
                        
                        executionStatusText.textContent = "Failed";
                        executionStatusText.style.color = "#ff5252";
                        executionStatusIndicator.className = "status-indicator error";

                        runBtn.disabled = false;
                        runBtn.textContent = 'Generate Test Cases';
                        
                        setThinkingState(false);
                    }
                    // If IN_PROGRESS, do nothing (wait for next poll)
                }
            } catch (e) {
                console.error("Polling error", e);
            }
        }, 2000);
    }



    async function pollStatus(jobId, isFetchOnly = false) {
        const intervalId = setInterval(async () => {
            try {
                const response = await fetch(`/status/${jobId}`);
                if (response.ok) {
                    const statusData = await response.json();
                    
                    if (statusData.status === 'COMPLETED') {
                        clearInterval(intervalId);
                        
                        log(statusData.message, 'success');
                        
                        executionStatusText.textContent = "Completed";
                        executionStatusText.style.color = "#00ff9d";
                        executionStatusIndicator.className = "status-indicator active";
                        
                        // Show Acceptance Criteria
                        if (statusData.acceptanceCriteria) {
                            const acContainer = document.getElementById('acceptanceCriteriaContainer');
                            acContainer.innerHTML = statusData.acceptanceCriteria;
                        }

                        // Show Quality Badge
                        if (statusData.jiraQuality) {
                            document.getElementById('qualityBadge').innerHTML = statusData.jiraQuality;
                        }
                        
                        if (isFetchOnly) {
                             // Enable Generate Button
                             runBtn.disabled = false;
                             fetchBtn.disabled = false;
                             fetchBtn.textContent = 'Pull Requirements';
                             log("Requirements fetched. You can now generate test cases.");
                             setThinkingState(false);
                             return; // Validation stop here for fetch
                        }

                        // Show Report
                        reportLink.style.display = 'inline-block';
                        fetchReportStats();
                        
                        // Show Git Link
                        if (statusData.prUrl) {
                            const gitContainer = document.getElementById('gitLinkContainer');
                            const gitBtn = document.getElementById('gitLinkBtn');
                            gitBtn.href = statusData.prUrl;
                            gitContainer.style.display = 'block';
                            log(`Git Branch created: ${statusData.prUrl}`);
                        }

                        runBtn.disabled = false;
                        runBtn.textContent = 'Generate Test Cases';
                        fetchBtn.disabled = false;
                        
                        setThinkingState(false);

                    } else if (statusData.status === 'FAILED') {
                        clearInterval(intervalId);
                        
                        log(statusData.message, 'error');
                        revertUIState();
                        fetchBtn.disabled = false;
                        fetchBtn.textContent = 'Pull Requirements';
                    }
                    // If IN_PROGRESS, do nothing (wait for next poll)
                }
            } catch (e) {
                console.error("Polling error", e);
            }
        }, 2000);
    }
    
    // FETCH BUTTON Logic
    fetchBtn.addEventListener('click', async () => {
        const epicKey = epicKeyInput.value.trim();
        if (!epicKey) {
            log("Error: Please enter a valid Jira Epic Key.", 'error');
            return;
        }

        // UI Reset
        fetchBtn.disabled = true;
        fetchBtn.textContent = 'Fetching...';
        runBtn.disabled = true; // Disable generate while fetching
        
        log(`Fetching requirements for Epic: ${epicKey}...`);
        
        // Update execution status
        executionStatusText.textContent = "Fetching";
        executionStatusText.style.color = "#FFD700";
        executionStatusIndicator.className = "status-indicator running";
        
        // Reset AC & Quality
        document.getElementById('acceptanceCriteriaContainer').innerHTML = "Fetching requirements...";
        document.getElementById('qualityBadge').innerHTML = '<span style="color:var(--text-secondary);"><i class="fas fa-hourglass-start"></i> Analyzing Quality...</span>';
        
        setThinkingState(true);

        try {
            const response = await fetch('/fetch-requirements', { // New Endpoint
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ epicKey: epicKey })
            });

            if (response.ok) {
                const data = await response.json();
                log(`Fetch started. ID: ${data.jobId}`);
                pollStatus(data.jobId, true); // true = Fetch Only
            } else {
                const error = await response.text();
                log(`Failed to fetch requirements: ${error}`, 'error');
                revertUIState();
                fetchBtn.disabled = false;
                fetchBtn.textContent = 'Pull Requirements';
            }
        } catch (e) {
            log(`Network Error: ${e.message}`, 'error');
            revertUIState();
            fetchBtn.disabled = false;
            fetchBtn.textContent = 'Pull Requirements';
        }
    });

    // RUN BUTTON Logic (Generate)
    runBtn.addEventListener('click', async () => {
        const epicKey = epicKeyInput.value.trim();
        if (!epicKey) {
            log("Error: Please enter a valid Jira Epic Key.", 'error');
            return;
        }

        // UI Reset
        runBtn.disabled = true;
        runBtn.textContent = 'Generating...';
        fetchBtn.disabled = true; // Disable fetch while generating
        
        log(`Starting test generation for Epic: ${epicKey}...`);
        
        // Update execution status
        executionStatusText.textContent = "Generating";
        executionStatusText.style.color = "#FFD700";
        executionStatusIndicator.className = "status-indicator running";
        
        reportLink.style.display = 'none';
        document.getElementById('gitLinkContainer').style.display = 'none';
        
        // Reset Chart
        document.getElementById('centerPercent').textContent = "--%";
        document.getElementById('detailedDonut').style.background = `conic-gradient(var(--bg-dark) 0% 100%)`;
        
        // Reset Legend
        ['Passed', 'Failed', 'Broken', 'Skipped', 'Unknown'].forEach(status => {
             const el = document.getElementById(`count${status}`);
             if (el) el.textContent = '0';
        });

        setThinkingState(true);

        try {
            const response = await fetch('/run', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ epicKey: epicKey })
            });

            if (response.ok) {
                const data = await response.json();
                log(`Generation started. ID: ${data.jobId}`);
                pollStatus(data.jobId, false); // false = Full Run
            } else {
                const error = await response.text();
                log(`Failed to start generation: ${error}`, 'error');
                revertUIState();
                runBtn.disabled = false; // Re-enable if failed
                fetchBtn.disabled = false;
            }
        } catch (e) {
            log(`Network Error: ${e.message}`, 'error');
            revertUIState();
            runBtn.disabled = false;
            fetchBtn.disabled = false;
        }
    });

    function setThinkingState(isThinking) {
        const container = document.getElementById('brainContainer');
        const statusText = document.getElementById('brainStatus');
        
        if (isThinking) {
            container.classList.add('thinking-mode');
            statusText.textContent = "Thinking...";
            statusText.style.color = "var(--accent-blue)";
        } else {
            container.classList.remove('thinking-mode');
            statusText.textContent = "Orchestrator Node";
            statusText.style.color = "var(--text-secondary)";
        }
    }

    // Prompt Editor Logic
    const promptSelect = document.getElementById('promptSelect');
    const promptEditor = document.getElementById('promptEditor');
    const savePromptBtn = document.getElementById('savePromptBtn');
    const refreshPromptsBtn = document.getElementById('refreshPromptsBtn');

    async function loadPromptList() {
        try {
            const response = await fetch('/prompts');
            if (response.ok) {
                const files = await response.json();
                promptSelect.innerHTML = '<option value="" disabled selected>Select a prompt...</option>';
                files.forEach(file => {
                    const option = document.createElement('option');
                    option.value = file;
                    option.textContent = file;
                    promptSelect.appendChild(option);
                });
            }
        } catch (e) {
            log("Failed to load prompt list", 'error');
        }
    }

    promptSelect.addEventListener('change', async () => {
        const filename = promptSelect.value;
        if (!filename) return;

        try {
            const response = await fetch(`/prompts/${filename}`);
            if (response.ok) {
                const content = await response.text();
                promptEditor.value = content;
                savePromptBtn.disabled = false;
            } else {
                log(`Failed to load prompt: ${filename}`, 'error');
            }
        } catch (e) {
            log(`Error loading prompt: ${e.message}`, 'error');
        }
    });

    savePromptBtn.addEventListener('click', async () => {
        const filename = promptSelect.value;
        const content = promptEditor.value;
        if (!filename) return;

        savePromptBtn.disabled = true;
        savePromptBtn.textContent = 'Saving...';

        try {
            const response = await fetch(`/prompts/${filename}`, {
                method: 'POST',
                body: content
            });

            if (response.ok) {
                log(`Prompt saved: ${filename}`, 'success');
            } else {
                const err = await response.text();
                log(`Failed to save prompt: ${err}`, 'error');
            }
        } catch (e) {
            log(`Error saving prompt: ${e.message}`, 'error');
        } finally {
            savePromptBtn.disabled = false;
            savePromptBtn.textContent = 'Save Changes';
        }
    });

    if (refreshPromptsBtn) {
        refreshPromptsBtn.addEventListener('click', loadPromptList);
    }
    
    // Initial Load
    loadPromptList();

    function revertUIState() {
        const runBtn = document.getElementById('runBtn');
        const executionStatusText = document.getElementById('executionStatusText');
        const executionStatusIndicator = document.getElementById('executionStatusIndicator');

        runBtn.disabled = false;
        runBtn.textContent = 'Generate Test Cases';
        
        executionStatusText.textContent = "Failed";
        executionStatusText.style.color = "#ff5252";
        executionStatusIndicator.className = "status-indicator error";
        
        setThinkingState(false);
    }

    // Initial log
    log("System initialized. Ready for commands.");
});
