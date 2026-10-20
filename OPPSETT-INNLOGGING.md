# Oppsett: innlogging med e-post

Appen kan lagre fremgangen på brukerens e-postadresse, slik at man kan logge inn i en annen nettleser og fortsette der man slapp. Til det trengs en liten database på nett. Appen bruker **Supabase** (gratisnivået holder for en studentapp).

Uten dette oppsettet fungerer appen som før: fremgangen lagres i nettleseren, og innloggingsknappen vises ikke.

## 1. Opprett et Supabase-prosjekt
1. Gå til https://supabase.com og lag en gratis konto.
2. **New project** → gi det et navn (f.eks. `prestasjonsstyring`), velg region **Europe (Frankfurt/Stockholm)** og et sterkt databasepassord.

## 2. Lag tabellen
1. I prosjektet: **SQL Editor → New query**.
2. Lim inn hele innholdet i `supabase.sql` fra dette repoet og trykk **Run**.

## 3. Slå på innlogging med kode på e-post
1. **Authentication → Sign In / Providers → Email**: sørg for at *Email* er på.
2. **Authentication → Emails → Templates → Magic Link**: legg inn koden i e-posten, f.eks.:
   ```
   <h2>Din innloggingskode</h2>
   <p>Skriv inn denne koden i appen: <strong>{{ .Token }}</strong></p>
   ```
   (Uten `{{ .Token }}` får brukeren bare en lenke, og appen trenger koden.)
3. **Authentication → URL Configuration → Site URL**: sett adressen til appen, f.eks. `https://BRUKERNAVN.github.io/REPO/`.
4. Supabase sin innebygde e-posttjeneste har lav sendegrense (noen få e-poster i timen). Skal mange bruke appen, legg inn egen SMTP under **Authentication → Emails → SMTP Settings** (f.eks. Resend eller Brevo).

## 4. Koble appen til Supabase
1. **Project Settings → API**: kopier **Project URL** og **anon public**-nøkkelen.
   - Bruk **aldri** `service_role`-nøkkelen i appen.
2. I GitHub-repoet: **Settings → Secrets and variables → Actions → Variables → New repository variable**:
   - `SUPABASE_URL` = Project URL
   - `SUPABASE_ANON_KEY` = anon public-nøkkelen
3. Kjør publiseringen på nytt (**Actions → Publiser til GitHub Pages → Run workflow**).

Anon-nøkkelen er laget for å ligge i nettleserkode. Det er reglene i `supabase.sql` (Row Level Security) som sørger for at hver bruker bare ser sine egne data.

## Slik fungerer det for brukeren
- **Logg inn** (øverst til høyre) → skriv e-post → få kode → skriv koden.
- Første gang flyttes fremgangen fra nettleseren over til kontoen.
- Opplåsingskoden huskes også på kontoen.
- **Logg ut** under Innstillinger → Konto.

## Personvern
Appen lagrer e-postadresse, svar, resultater og innstillinger. Fortell brukerne det, og slett data på forespørsel (Supabase → Authentication → Users → slett bruker; radene i `progress` slettes automatisk).
