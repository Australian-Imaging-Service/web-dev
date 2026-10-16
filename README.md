# Australian Imaging Service website

Hugo site using the [Lotus Docs](https://github.com/colinwilson/lotusdocs) theme.

## Prerequisites

* [Go language installation](https://go.dev/doc/install)
* [Dart Sass installation](https://gohugo.io/functions/css/sass/#development-environment)
* [Hugo extended installation](https://gohugo.io/installation/), same version as `HUGO_VERSION` in `.github/workflows/hugo.yaml`

## Site development

```bash
git clone --recurse-submodules git@github.com:Australian-Imaging-Service/Australian-Imaging-Service.github.io.git
cd Australian-Imaging-Service.github.io

hugo mod get

hugo server
```

## Where things live

* Homepage sections: `data/landing.yaml`, rendered by `layouts/partials/landing/`
* Styling: `assets/scss/_ais-variables.scss` and `assets/scss/_ais.scss`
* Navbar and footer links: `menu.primary` and `menu.footer` in `config/_default/hugo.yaml`
* Docs: `content/docs/`, plus the `charts` and `pipelines` repos mounted as Hugo modules

## Known issues

* Windows and WSL2
  * Automatic page reload.
    * Running Hugo in WSL requires that the source code be within the WSL file system for notification of changes to reach the service. If you find Hugo server does not acknowledge changes to your site try to run Hugo in the host Windows environment or move your code base into the WSL2 file structure.
