# Zotero DOI Manager

This is an add-on for Zotero, a research source management tool. The add-on can auto-fetch DOI names for journal articles using the CrossRef API, as well as look up shortDOI names using http://shortdoi.org. The add-on additionally verifies that stored DOIs are valid and marks invalid DOIs.

Please report any bugs, questions, or feature requests on the Zotero forums.

Code for this extension is a fork of [DOI Manager](https://github.com/bwiernik/zotero-shortdoi) by Brenton M. Wiernik, which is in part based on [Zotero Google Scholar Citations](https://github.com/beloglazov/zotero-scholar-citations) by Anton Beloglazov.

### Plugin Functions

- Get shortDOIs: For the selected items, look up shortDOIs (replacing stored DOIs, if any) and mark invalid DOIs.
- Get long DOIs: For the selected items, look up full DOIs (replacing stored DOIs, if any) and mark invalid DOIs.
- Get full metadata: Fetches and applies comprehensive metadata (title, authors, journal, abstract, pages, etc.) for the selected items using a dual-API strategy:
    - Primary source: **CrossRef Works API** for official metadata.
    - Fallback/Supplement: **OpenAlex API** to fill in gaps like missing authors or reconstructed abstracts.
- Verify and clean DOIs: For the selected items, look up full DOIs, verify that stored DOIs are valid, and mark invalid DOIs.
  - This function also removes unnecessary prefixes (such as `doi:`, `https://doi.org/`, or a publisher URL prefix) from the DOI field.

### How to Install

- Download the `.xpi` file for the [latest release](https://github.com/MiguelDLM/zotero-shortdoi/releases/latest).
  - If you are using Firefox, be sure to right-click on the file link and choose Save Link As…
- In Zotero, open the Tools → Add-Ons… menu
- Drag the downloaded `.xpi` file to the Add-Ons popup window.
  - Alternatively, click on the Gear ⚙ button in Add-Ons popup window, choose Install Add-On from File…, and select the downloaded `.xpi` file.

### License

Copyright (C) 2017 Brenton M. Wiernik

Distributed under the Mozilla Public License (MPL) Version 2.0.
