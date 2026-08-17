# jay-briefing

Public iPad page for Jay’s daily briefing.

**Live:** https://jaytodd01.github.io/jay-briefing/

## Daily overwrite (6:00 AM ET)

1. Write the new Google News-style page to `C:\local-development\briefing\index.html`
2. Republish:
   - ST Graph: `cli_run` name `briefing-publish` (no `grok.exe`)
   - or on the laptop: `pwsh -File C:\local-development\briefing\publish.ps1`

GitHub Pages serves `index.html` from `main` at the site root. No secrets in this repo. The iPad does not need a GitHub login.
