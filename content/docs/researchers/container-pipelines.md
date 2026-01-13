
---
title: "Container Pipelines"
description: "How researchers can run and manage analysis pipelines using the XNAT Container Service within AIS."
# Order of this page within the Researchers section (lower = higher up)
weight: 30

# Render settings
draft: false
toc: true        # LotusDocs/Hugo: show Table of Contents on the right
breadcrumbs: true

# Optional visual hint (LotusDocs supports Bootstrap icons or Material Symbols if enabled)
icon: "bi-terminal"

# Taxonomy (optional)
tags: ["researchers", "pipelines", "containers", "XNAT"]

# Aliases help avoid 404s if links change
aliases:
  - /docs/researchers/container-pipelines
  - /researchers/container-pipelines/

# Sidebar placement under a custom docs menu.
# If your site uses a different menu name, change "docs" to match.
menu:
  docs:
    parent: "Researchers"
    name: "Container Pipelines"
    weight: 30
---

# Overview

The **Australian Imaging Service (AIS)** provides a curated library of **containerised analysis pipelines** that run against data stored in **XNAT** via the **XNAT Container Service**. This page walks researchers through how to discover, launch, monitor, and reproduce pipeline runs in a typical study workflow.

> **Who’s this for?**  
> Researchers who have access to an AIS node and want to run standardised, reproducible analyses on imaging data (e.g., MRIQC, fMRIPrep, BIDS apps, and AIS‑specific workflows).

---

## Prerequisites

- An active **AIS** account and access to an **XNAT project**.
- Required **roles/permissions** in XNAT (e.g., ability to create and manage container jobs).
- Data organised according to the pipeline’s input expectations (e.g., BIDS for certain apps).
- If your node enforces queue limits, ensure you have available **job quota**.

---

## Finding Available Pipelines

1. Open your AIS **XNAT** project.
2. Navigate to **Tools → Container Service → Commands**.  
3. Use the search or filters (e.g., *BIDS*, *MRIQC*, *fMRIPrep*) to locate the pipeline.
4. Click a command to view:
   - Required input(s) (project/subject/session/scan or resource)
   - Parameters with defaults
   - Expected outputs and provenance

> 💡 Tip  
> Many commands provide a **dry‑run** or an **example JSON**. Save it for reuse to ensure consistent runs across datasets.

---

## Launching a Pipeline (Typical Flow)

1. **Select the scope** (e.g., a single session, a set of scans, or an entire project).
2. **Open the command** from Container Service and fill the parameters:
   - Input selector (subject/session/scan)
   - Image or workflow version
   - Optional flags (e.g., `--participant-label`, `--nprocs`, `--mem`)
3. **Choose output destination**:
   - Project or subject resource
   - A named output label (e.g., `derivatives/mriqc`)
4. **Submit job** and confirm:
   - You’ll see a job ID; the **Jobs** tab shows its progress.
   - Logs stream under **Job details**; errors are highlighted.

---

## Monitoring & Logs

- Open **Container Service → Jobs**:
  - **Queued** → waiting on resources
  - **Running** → container started; live logs available
