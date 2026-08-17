# jay-briefing

Public iPad page for Jay’s daily briefing.

**Live:** https://jaytodd01.github.io/jay-briefing/

## Owner

**Chief** owns this site from Grok Bot chat. Jay approves each publish in that chat.

1. Chief: `briefing_get` to read what is live.
2. Chief builds Google News `index.html` (every story is `<a class="card" href="https://...">`).
3. Chief: `briefing_publish` preview. Show Jay the card count.
4. Jay says yes in chat. Chief: `briefing_publish` with `confirmed=true`.

Laptop drop (same file the tool writes): `C:\local-development\briefing\index.html`

GitHub Pages serves `index.html` from `main` at the site root. No secrets in this repo. The iPad does not need a GitHub login.
