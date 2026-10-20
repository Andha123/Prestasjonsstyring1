# Pensumregister – Prestasjonsstyring eksamensøving

Mottaks- og dekningsregister for pensum. Oppdatert av Claude 2026-10-20 etter fase 2.

## Status

| Felt | Verdi |
| --- | --- |
| Fase | 2 ferdig – faginnhold bygget og publisert 2026-10-20 |
| Klarsignal gitt | Ja, 2026-10-20 |
| App (artifact) | https://claude.ai/artifact/LJmJnfKdm6KxBSjMFgJtax (privat) |
| Innholdsversjon | 2026-10-20-fase2 (status «komplett») |
| Omfang | 18 temaer · 93 læringsmål · 337 oppgaver (+ deloppgaver i caser) · 33 formler · 197 begreper |
| Dekning | 93 av 93 læringsmål dekket (læringstekst + minst tre oppgaver) |
| Tester | 86 enhets- og innholdstester og 55 ende-til-ende-kontroller bestått |
| Kildekode | Lagret i artifactet som kilde/kildekode.json |

## Mottatte dokumenter

| ID | Dokument | Status |
| --- | --- | --- |
| bok | Tangenes og Nordtømme: Prestasjonsstyring (lærebok) | brukt |
| kurs | BØK3561 – kursinformasjon og informasjon om eksamen (Canvas) | brukt |
| b1 | Blokk 1 – oppgavesett og løsningsforslag (kap. 1–4) | brukt |
| f1 | Forelesning 1: Hva er prestasjonsstyring? | brukt |
| f2 | Forelesning 2: Hvordan velger og bruker vi styringskonsepter? | brukt |
| f3 | Forelesning 3: Hvordan styre når omgivelsene endrer seg? | brukt |
| c1 | Case 1 – strategiske usikkerheter, Levers of Control, strategikart og KPI-er | brukt |
| b2 | Blokk 2 – oppgavesett og løsningsforslag (kap. 5–10) | brukt |
| f4 | Forelesning 4: Hva forteller de finansielle tallene? | brukt |
| f5 | Forelesning 5: Hvordan gjør vi strategien målbar? | brukt |
| f6 | Forelesning 6: Tilpasning, benchmarking og bærekraft | brukt |
| c2 | Seminaroppgaver del 2 med løsningsforslag (lønnsomhet, kapitalbinding, indikatorer og prognoser) | brukt |
| b3o | Blokk 3 – oppgavesett (kap. 12–14) | brukt |
| b3l | Blokk 3 – løsningsforslag (kap. 12–14) | brukt |
| f7 | Forelesning 7: Kostnader, aktiviteter og KRV-analyse | brukt |
| f8 | Forelesning 8: Aktivitetsbasert kalkulasjon (ABC) | brukt |
| f9 | Forelesning 9: Beslutningsrelevante kostnader | brukt |

## Temaer og dekning

| Tema | Mål | Oppgaver |
| --- | --- | --- |
| 1. Økonomi- og virksomhetsstyring | 4 | 16 |
| 2. Prestasjonsstyring i et nøtteskall | 5 | 18 |
| 3. Styringskonsepter: Levers of Control, BSC og MBO | 5 | 20 |
| 4. Dynamisk styring | 6 | 20 |
| 5. Styringsrelevant informasjon | 5 | 17 |
| 6. Regnskapsanalyse med nøkkeltall | 5 | 19 |
| 7. Modell for mål- og indikatorstyring | 5 | 21 |
| 8. Mål- og indikatorstyring i praksis | 5 | 15 |
| 9. Virksomhetstilpasset styring og benchmarking | 5 | 20 |
| 10. Samfunnsansvar og bærekraft i målstyringen | 5 | 20 |
| 11. Prognosebasert styring | 6 | 18 |
| 12. Kostnadsbegreper, aktiviteter og kostnadsdrivere | 6 | 22 |
| 13. KRV-analyse og driftsgearing | 5 | 14 |
| 14. ABC, kundelønnsomhet, livssyklus og målkostnad | 6 | 22 |
| 15. Beslutningsrelevante kostnader | 5 | 16 |
| 16. Operasjonell effektivisering og lean | 5 | 20 |
| 17. Budsjettet i målstyringen og budsjett og bokføring | 5 | 19 |
| 18. Resultat-, likviditets- og balansebudsjett | 5 | 20 |

## Eksamensinformasjon

Fire timers skriftlig skoleeksamen (kursinformasjonen). Delene og poengvektingen i appens prøveeksamen er et tydelig merket øvingsformat, ikke offisielle regler. Hjelpemidler er ikke oppgitt.

## Kjente mangler

- Forelesninger og oppgavesett for blokk 4 (budsjettering, kap. 15–18) er ikke mottatt. Tema 17 og 18 bygger bare på læreboka, og oppgavene der er egne øvingsoppgaver uten kurs-fasit å sammenligne med.
- Prøveeksamen og tidligere eksamensoppgaver er ikke mottatt. Eksamenssimulatoren bruker et øvingsformat, ikke offisielle regler.
- Tillatte hjelpemidler på eksamen er ikke oppgitt i materialet som er mottatt.
- Blokk 3 har ikke et samlet «fullført»-dokument med forelesningsnotater som blokk 1 og 2; forelesning 7–9 er brukt som egne filer.
- Læreboka er mottatt som skjermbilder og lest med tekstgjenkjenning (OCR). Sidetallene i henvisningene er hentet fra sidemarkeringene og kan avvike noe; enkelte sider mangler (blant annet s. 405–406 og 412 i kap. 14, med innledningen og definisjonen av takttid), og noen sider har ukjent sidetall.

## Kildekonflikter

- **k-leverandordager**: Nevneren for leverandørgjeldens omløpshastighet: Lærebokas eksempler (kap. 6.4.3 og tabell 6.16) bruker varekostnad og andre betalbare driftskostnader, i ett eksempel inklusive mva. Seminarløsningen (oppgave 2b) bruker varekjøp (varekostnad + utgående lager − inngående lager), fordi leverandørgjelden oppstår ved kjøp. *Håndtering:* Appen bruker varekjøp når oppgaven oppgir lagerendring, og forklarer forskjellen. På eksamen: følg definisjonen oppgaven gir, og si hvilken du bruker.
- **k-totalrentabilitet**: Resultatbegrep i totalrentabiliteten: Læreboka sier at teorien tradisjonelt bruker driftsresultat + finansinntekter, men bruker selv driftsresultat (EBIT) i eksemplene. Forelesning og oppgaver bruker driftsresultat / gjennomsnittlig totalkapital. *Håndtering:* Appen bruker driftsresultat / gjennomsnittlig totalkapital, som i forelesning og oppgaver, og minner om å oppgi resultatbegrepet.
- **k-bf-nett**: Lærebokas kommentar til ledelsesrapporten (kap. 8.6, punkt 2) beregner hvor mye lavere varekostnaden på nett ville vært med 40 % bruttofortjeneste som varekostnaden (10 702 962 kr) × (40,00 − 37,18 %) ≈ 300 000 kr. Fordi bruttofortjenesteprosenten måles mot salgsinntekten, ser riktig grunnlag ut til å være salgsinntektene (17 038 432 kr), som gir ca. 480 000 kr. *Håndtering:* Appen bruker salgsinntekter × prosentpoengsdifferansen, i tråd med definisjonen i kap. 6.3.2. Sjekk gjerne med foreleser.
- **k-bayes-apriori**: Lærebokas bayesianske gasseksempel (kap. 11.7.5) oppgir i teksten at a priori-sannsynlighetene er 50, 30 og 20 %, men lister og regner deretter med 0,45, 0,35 og 0,20 (E(X) = −0,15 mrd. kr). *Håndtering:* Appen bruker tallene i utregningen (0,45 / 0,35 / 0,20). Med 50/30/20 ville forventet verdi blitt −5 × 0,5 + 2 × 0,3 + 7 × 0,2 = −0,5 mrd. kr. Konklusjonen (negativ forventning) er den samme.
- **k-malkostnad-flerperiodisk**: Lærebokas eksempel på flerperiodisk målkostnad (kap. 13.6.4) ser ut til å ha interne inkonsistenser: Teksten oppgir anleggsinvestering på 50 mill. kr, mens tabellene bruker 30 mill. kr. Utfasingskostnaden i slutten av år 5 er diskontert med fire år (2 732 i stedet for 2 484). Annuiteten av 47 434 med 10 % over fem år blir 12 513, ikke 12 489. *Håndtering:* Metoden er riktig og brukes i appen med egne tall og eksakt diskontering. Med lærebokas forutsetninger og korrekt diskontering blir målkostnaden om lag 27 510 kr per ovn (læreboka: 27 502 kr). Følg metoden; små tallavvik i læreboka påvirker ikke fremgangsmåten.
- **k-kryssreferanser**: Læreboka viser enkelte steder til kapittelnumre som ikke stemmer med innholdsfortegnelsen, for eksempel «kapittel 9 om prognosebasert styring» (er kap. 11), «benchmarking (se delkapittel 13.8)» (er 13.7) og «figur 9.12» (er figur 12.12). *Håndtering:* Appen henviser til kapitlene slik de står i innholdsfortegnelsen.
- **k-sagen-hammer-salg**: I Sagen & Hammer-caset oppgis prognosen for salgsinntekter i 2025 til 124,0 mill. kr i tabell 17.2, men 123,0 mill. kr i tabell 17.3, der dekningsgraden 20,55 % og prisen per prosjekttime (1 471,29 kr) er beregnet med 123,0 mill. kr. Teksten sier også «i 2021» der det etter sammenhengen skal stå 2025. *Håndtering:* Appen bruker egne tall i oppgavene. På eksamen: bruk tallene oppgaven gir, og vis beregningen.

## Opphavsrett

Kursmateriellet (© Roy-Ivar Andreassen) forbyr offentlig publisering, bearbeidelse og innlemmelse i KI- og eksamensprodukter uten skriftlig samtykke, og læreboka er opphavsrettsbeskyttet. Appen er skrevet med egne ord og egne caser og tall, men bygger tett på materialet. Den bør holdes privat til personlig bruk; offentliggjøring krever samtykke fra rettighetshaverne.
