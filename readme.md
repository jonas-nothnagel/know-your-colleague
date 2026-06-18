# How well do you know Luisa? 🎉

A tiny, host-paced party game for a video call. One question shows at a time on
everyone's screen; you (the host) drive it with a **Next** button. Everyone
guesses how **Luisa** would answer — closest to her real answers wins.

It's a single file: `index.html`. No build step, no framework.

---

## Setup (~5 min)

1. **Supabase** → create a free project at <https://supabase.com>.
2. In the project's **SQL editor**, paste & run the snippet from the comment at
   the top of `index.html` (creates two tiny tables + open access policies).
3. **Project Settings → API**: copy the **Project URL** and the **anon** key into
   `SUPABASE_URL` / `SUPABASE_ANON_KEY` near the top of `index.html`.
4. **Deploy**: drag `index.html` onto <https://app.netlify.com/drop>. You get a
   public link instantly.

> The anon key is public — anyone with the link can read/write this little table.
> That's fine for a one-off. Delete the Supabase project when you're done.

## Running the game live

1. Share the Netlify link in the call chat. Everyone (incl. Luisa) opens it,
   types a name, and lands in the lobby.
2. **You** open the same link with `?host` on the end (e.g.
   `https://your-app.netlify.app/?host`) and **share that screen**.
3. When everyone's in, click **Start game**. Each question appears on all
   screens; you watch the live "X / Y answered" count and click **Next** when
   ready.
4. After the last question, pick **Luisa** from the dropdown (her answers are the
   key) and hit **Reveal the winner** 🎉. Use **Play again** to reset for another
   round.

## Editing the questions

Open `index.html`, edit the `QUESTIONS` array near the top (clearly marked).
Each entry is `{ q: "...", options: ["A", "B", ...] }` — any number of options.
Finalize them **before** sharing the link, then re-deploy (drag the file again).
Change `PERSON = "Luisa"` to reuse this for someone else.

## Rehearse offline (demo mode)

Leave the Supabase keys blank and the app runs against this browser only. Open
`?host` in one tab and players in other tabs to click through the whole thing
before the event.
