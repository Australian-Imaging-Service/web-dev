---
title: "ACEMID Data Uploader"
weight: 20
---

An Zhao — June‑2025

## Overview
The ACEMID Data Uploader is a series of Bash scripts designed to automate the upload of dermatological image data to a secure XNAT server using rest API calls. It ensures data is transferred efficiently and securely, following the ACEMID project’s data handling protocols.

#### Prerequisites
Before running the script, ensure the following:
1. **System Requirements**
   - Unix-like OS (Linux/macOS)
   - Bash shell
     
2. **XNAT Requirements**
   - Turn on the External Camera Session (xnat:xcSessionData) and External Camera Scan (xnat:xcScanData) data types (see below).
     <img width="660" height="451" alt="image" src="https://github.com/user-attachments/assets/cb22e73e-8a91-4a50-80f4-7cd89987f59e" />
   - Suggested to Set the User Session Timeout to be 60 minutes (see below).
     <img width="781" height="611" alt="image" src="https://github.com/user-attachments/assets/2fe70219-c6eb-4daf-9212-2bbeb9ee73ac" />

3. **Installed Required Software Packages**
   Install the following dependencies using your package manager. For example, on Ubuntu: run

```
sudo apt update
sudo apt install csvkit pdftotext inotify-tools
```
- curl (for calling XNAT Restful APIs)
- csvkit (for processing the csv files)
- pdftotext (for converting PDF files to text files)
- enscript (for converting text files back to PDF files)
- inotify-tools (for monitoring changes to files and directories in real time)

4. **Explanations of each bash script**
(1) ACEMID_uploader.sh The main ACEMID bash script to upload the cleaned Vectra exported data files to your XNAT instance using JSESSIONID.
(2) dermoscopy_data_upload.sh The Bash script to upload the dermoscopy images (mainly in jpg or png) to your XNAT instance.
(3) stage_server_monitor.sh The bash script to monitor the exported data from Vectra system to your specified network drive to detect if there is any file or folder changes in real time and then it will trigger the upload script.
(4) remove_phi_report.sh The bash script used to remove the PHI info in the pdf reports.
(5) Dockerfile The Dockerfile used to build the docker image of the above bash scripts to run on different platforms.
    
5. **Setup Instructions**
1. **Clone the Repository**
```
git clone https://github.com/Australian-Imaging-Service/acemid-uploader.git
cd acemid-uploader
```
2. **Configure Environment Variables**
Export the following variables in your shell:
```
export XNAT_URL="your_xnat_url"
export USERNAME="your_xnat_username"
export PASSWORD="your_xnat_password"
export PROJECT_ID="your_xnat_project_id"
```
You can also modify the script directly to hardcode these values if preferred.

3. **Running the script**
- For ACEMID_uploader.sh script, place this script in the folder of the cleaned export data file folder containing .db files and then run ./ACEMID_uploader.sh
- For dermoscopy_data_upload.sh script, place this script in the dermoscopy data file folder containing .csv files and then run ./dermoscopy_data_upload.sh input_csv_file_name
- For remove_phi_report.sh script, place this script in the folder containing the pdf files you want to process and then run ./remove_phi_report.sh
- For stage_server_monitor.sh, please this script into the specified network drive folder you want to monitor and then run ./stage_server_monitor.sh

