# Prestasjonsstyring – eksamensøving

Læringsapp og eksamenssimulator for BØK3561 Prestasjonsstyring: 18 temaer, 337 oppgaver (+57 deloppgaver), formler med regneeksempler, tematester, prøveeksamen med tilfeldig trekk, mestringsanalyse og eksport til egen AI.

Laget av Andreas Sandnes.

> **Opphavsrett:** Faginnholdet bygger på kursmateriell (© Roy-Ivar Andreassen m.fl.) som ikke kan publiseres, bearbeides eller brukes kommersielt uten samtykke. Et offentlig GitHub-repo eller en offentlig GitHub Pages-side regnes som publisering. Hold repoet **privat** og avklar bruken med rettighetshaver før du deler appen eller tar betalt.

## Kjøre lokalt

```
npm install
npm run build            # bygger dist/index.html (Claude-artifact) og dist/pages/index.html (nettside)
npx vitest run           # enhetstester
UNLOCK_CODE="…" node tests/e2e/run.mjs     # ende-til-ende i Chromium (krever opplåsingskoden)
node tests/e2e/account.mjs                 # nettsiden + innlogging mot en falsk Supabase
```

Åpne `dist/pages/index.html` i nettleseren for å bruke appen lokalt.

## Publisere på GitHub Pages

1. Lag et repo på GitHub og last opp koden (uten `node_modules` og `dist`).
2. **Settings → Pages → Build and deployment → Source: GitHub Actions.**
3. Hver gang du dytter til `main`, bygger og publiserer `.github/workflows/pages.yml` appen automatisk.
4. Valgfritt: legg opplåsingskoden inn som hemmelighet `UNLOCK_CODE` (Settings → Secrets and variables → Actions) for at testen av koden skal kjøre.

GitHub Pages fra et **privat** repo krever et betalt GitHub-abonnement (Pro/Team). Med gratis konto må repoet være offentlig for å bruke Pages – se merknaden om opphavsrett over.

## Lagring og innlogging

| Hvor appen kjører | Lagring |
| --- | --- |
| Som Claude-artifact | Eieren: Claude-kontoen. Andre: egen nettleser. |
| Nettside uten innlogging satt opp | Nettleseren (localStorage). Sikkerhetskopi kan lastes ned og leses inn. |
| Nettside med innlogging (Supabase) | Brukerens e-postkonto – samme fremgang i alle nettlesere. |

Innlogging med e-post (engangskode) settes opp etter `OPPSETT-INNLOGGING.md` og `supabase.sql`. Uten oppsettet vises ingen innloggingsknapp.

## Sikkerhet

- **Opplåsingskoden** finnes bare som saltet SHA-256-hash i `src/core/access.ts`. Testene leser koden fra miljøvariabelen `UNLOCK_CODE`.
- Låsen er en **brukerlås i nettleseren**, ikke en ekte betalingsmur: alt faginnhold ligger i siden som lastes ned, og en teknisk kyndig person kan omgå låsen. Ekte tilgangskontroll krever at innholdet hentes fra en server etter innlogging.
- Supabase **anon**-nøkkelen er offentlig av natur; dataene beskyttes av Row Level Security i `supabase.sql`. Bruk aldri `service_role`-nøkkelen i appen.

## Retting

- Lukkede oppgaver og beregninger rettes mot fasit.
- Skriftlige svar rettes innebygd mot vurderingskriterier, pensumbegreper og modellsvar (veiledende), eller med Claude når appen kjører som artifact.
- «Rett med din egen AI» eksporterer oppgave, svar, fasit, kriterier og pensumgrunnlag som tekst til ChatGPT, Claude o.l. Appen sender ingenting selv.

## Struktur

```
content/src/*.ts         Faginnholdet per tema (DSL) → content/pensum.json
src/core/                Datamodell, retting, økter, fremgang, analyse, eksport, lagring, konto
src/ui/                  Sider og komponenter (Preact)
tests/                   Enhetstester (Vitest) og ende-til-ende-tester (Playwright)
scripts/build.mjs        Bygger appen (esbuild) og validerer pensumpakken
supabase.sql             Database for innlogging med e-post
.github/workflows/       Publisering til GitHub Pages
```
