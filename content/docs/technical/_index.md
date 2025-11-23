---
title: Technical Documentation
linkTitle: Technical Documentation
description: 'This section contains technical and infrastructure documentation'
weight: 4
draft: false
toc: true
---

## Background

Due to the number of systems and audiences involved, the current documentation plan is for the canonical documentation to be within the Github repository, using GitHub pages.

This provides a number of easy to use tools and systems to help keep standardised, versions and readable documentation.

## Strategy

* Main AIS documentation to be at the top level [https://australian-imaging-service.github.io/](https://australian-imaging-service.github.io/)
* Each repository will self document under the generic /docs/ folder/
* Using Hugo module mounts the documentation for each repository will be integrated into the main documentation.
  * Documentation from each repository is effectively mounted in a virtual file tree where the documentation is then generated from. See the [hugo docs](https://gohugo.io/hugo-modules/) for more info.

## Documentation

- Should be written in Markdown
- Should be in a directory called docs in the top level of each repository. We have chosen this methodology as it allows for versioned documentation that matches the code base.
- Either add themselves to the main site or ask an administrator to add them.
