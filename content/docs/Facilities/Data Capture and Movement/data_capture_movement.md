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

