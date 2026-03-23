---
title: "Data Capture and Movement"
weight: 20
---

# Vectra Export Workflows
Adam Mothershaw — 16‑Jul‑2025

## Summary
Cleansed Vectra exports happen via the `VectraDBTool.exe` utility. Exports can be initiated via the GUI or the command line. A specific set of command‑line arguments produces the same exported files as the GUI. In both cases, a list of study IDs must be supplied. Several options exist for generating this list, each with different impacts on technical and staff resources.

## VectraDBTool

### GUI
Version 1.8+ of `VectraDBTool.exe` can export cleansed patient data via:

**Tools → Export Patients**

The user must:
- Select patients from the master list
- Tick **Cleanse patient data**
- Tick **Backup images**

#### Steps
1. Open VectraDBTool and select **Export Patients**.
2. Filter by External ID (ACEMID ID).
3. Tick **Cleanse** and **Backup** to export data to the staging server.

#### Example Patient Table
|   | RECNUM | First Name | Last Name |
|---|--------|------------|-----------|
| 1 | 025F7551‑1C84‑4C55‑86E6‑82CCFE92F711 | Rick 7.10.x | 67 inches |
| 2 | 08589401‑EBD6‑4D49‑B2B5‑CA5C24915790 | *(blank)* | tiff import |
| 3 | 126ADF11‑F223‑4A2C‑B655‑AE9D8E279AE2 | QA‑2020 | IntelliStudio |
| 4 | 13FE2819‑3536‑4481‑B3F1‑9E31A1268549 | *(blank)* | capture conte |
| 5 | 205885A1‑8D3D‑4113‑9664‑AE5FA272654D | *(blank)* | new patient 2 v |

---

### Command‑line
Canfield provided partial documentation for command‑line usage:

-dbname <database name>
Skips database selection dialog.

-showexport
Opens patient selection dialog with export options.
Must be used with -dbname and must precede it.

-showimport
Opens import dialog. Must be used with -dbname.

-silentexport
Silently exports one or more patients.
Requires: -exportids, -exportdir, -cleanse, -dbname.

-exportids <comma-delimited external IDs>
Used only with -silentexport.

-cleanse
Removes sensitive patient info. Used only with -silentexport.

-exportdir <folder>
Sets export output folder. Used only with -silentexport.

An additional argument discovered via GNU `strings`:

-exportimages

#### Full command replicating GUI output

VectraDBTool.exe -silentexport -exportdir <exportdir> \
-exportids <comma-separated-ids> -cleanse -exportimages -dbname <dbname>


---

### Notes
- Arguments containing spaces must be quoted.
  - Windows 11 PowerShell accepts single or double quotes.
  - Command Prompt requires double quotes.
- Safest approach: use Python `subprocess` with argument list (no `shell=True`).

#### Python example
```python
vectradb_exe = "c:/vectra/bin/vectradbtool_v1.8.exe"
exportdir = "e:/research/acemid/interim study"
exportids = "7767-001,7767-002"
dbname = "VectraDatabase"

args = [
    vectradb_exe,
    "-silentexport",
    "-exportdir", exportdir,
    "-exportids", exportids,
    "-cleanse",
    "-exportimages",
    "-dbname", dbname
]

subprocess.run(args)

Additional notes:

-exportids should be comma‑separated with no spaces.

-dbname only needs quotes if it contains spaces.

No feedback is shown during command‑line export; completion is indicated only when the process exits.

Study ID List
The main challenge in automation is generating the list of study IDs representing “anyone with a Vectra capture since the last export.”

Below are several approaches.

Option 1 — Automated, folder‑name based
Script recursively scans Vectra storage for capture folders newer than last export date.

Extract patient GUIDs.

Convert GUIDs → study IDs.

Perform export.

Record timestamp for next run.

Option 2 — Built into clinician workflow
Clinician records study ID during each capture (text file or spreadsheet).

Export script loads the file and extracts IDs.

Export runs.

Script clears the file.

Option 3 — Managed centrally via REDCap
Add REDCap instrument to record site‑specific last export dates.

Add REDCap report listing study IDs with captures since last export.

REDCap user runs report and sends lists to sites.

Clinician places list file in predetermined location.

Export runs.

Export status and timestamp returned to REDCap user.

Option 3a — Automated via REDCap API
Not possible at Qld Health due to network restrictions.

REDCap API may allow automation of several Option 3 steps, depending on ACEMID configuration.

Conclusion
Command‑line options enable partial automation, but generating the study ID list remains the main obstacle. Multiple stakeholders are affected — clinicians, REDCap users, state managers, IT staff — so a collaborative approach is needed to find a reliable, low‑impact workflow.

