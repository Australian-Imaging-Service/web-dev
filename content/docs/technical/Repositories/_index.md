---
title: "Top level overview of the AIS repositories"
linkTitle: "Repositories"
weight: 5
---

In each case, we recommend raising issue tickets within the repository in question.

## XNAT-build

This repository builds an XNAT 1.7.6 instance in docker or linux containers (lxd). This is suitable for local deployments.

Code: [xnat-build](https://github.com/australian-imaging-service/xnat-build)

[//]: # (Documentation: [{{< param baseURL >}}/xnat-build]&#40;{{< param baseURL >}}/xnat-build&#41;)
 
## Charts

This is an alternative deployment process utilising Helm and Kubernetes. This is suitable for cloud deployments.

Code: [charts](https://github.com/australian-imaging-service/charts)

[//]: # (Documentation: [{{< relref "docs" >}}]&#40;{{< ref "docs" >}}&#41;)

## XNATUtils

Xnat-utils is a collection of scripts for conveniently up/downloading and listing data on/from XNAT based on the XnatPy package.

Code: [xnatutils](https://github.com/australian-imaging-service/xnatutils)

[//]: # (Documentation: [{{< param baseURL >}}/xnatutils]&#40;{{< param baseURL >}}/xnatutils&#41;)

## Pipelines - Core

Core pipelines for the Australian Imaging Service

Code: [pipelines-core](https://github.com/Australian-Imaging-Service/pipelines-core)

## Pipelines - Community

Community contributed pipelines for the Australian Imaging Service 

Code: [pipelines-community](https://github.com/Australian-Imaging-Service/pipelines-community)

## Arcana

Abstraction of Repository Centric ANAlysis

Code: [arcana](https://github.com/australian-imaging-service/arcana)

## XNAT OpenID Connect Authentication Provider Plugin

[//]: # (TODO)

Code: [openid-auth-plugin](https://github.com/Australian-Imaging-Service/openid-auth-plugin)

## s3fs-build

A side container to mount Amazon S3 storage in a docker container's filesystem.

Code: [s3fs-build](https://github.com/australian-imaging-service/s3fs-build)

[//]: # (Documentation: [{{< param baseURL >}}/s3fs-build]&#40;{{< param baseURL >}}/s3fs-build&#41;)

## qc-pipelines

A collection of QA pipelines for assessing quality biomedical images

Code: [qc-pipelines](https://github.com/australian-imaging-service/qc-pipelines)

[//]: # (Documentation: [{{< param baseURL >}}/qc-pipelines]&#40;{{< param baseURL >}}/qc-pipelines&#41;)

## CTP-build

[Clinical Trials Processor (CTP)](http://mircwiki.rsna.org/index.php?title=MIRC_CTP) is used for processing images from clinical trials. [XNAT utilises CTP](https://wiki.xnat.org/display/XW2/Part+3%3A+Batch+DICOM+Operations+with+CTP+and+XNAT) for anonymisation.

Code: [ctp-build](https://github.com/australian-imaging-service/ctp-build)

[//]: # (Documentation: [{{< param baseURL >}}/CTP-build]&#40;{{< param baseURL >}}/CTP-build&#41;)

## xnat-openid-auth-plugin

Provides AAF authentication in particular.

Code: [xnat-openid-auth-plugin](https://github.com/australian-imaging-service/xnat-openid-auth-plugin)

[//]: # (Documentation: [{{< param baseURL >}}/xnat-openid-auth-plugin]&#40;{{< param baseURL >}}/xnat-openid-auth-plugin&#41;)

