# Hugo website with tailbliss and LotusDocs theme.

## Prerequisites

* [Go language installation](https://go.dev/doc/install)
* [Dart Sass installation](https://gohugo.io/functions/css/sass/#development-environment)
* [Hugo installation](https://gohugo.io/installation/)

## Site development

```bash
git clone --recurse-submodules git@github.com:Australian-Imaging-Service/web-dev.git
cd web-dev

# Fix TailBliss theme yaml violation in its config file
# themes/tailbliss/hugo.yaml
patch < patches/tailbliss.patch

# Install dependancies
hugo mod get
npm install
npm audit fix

hugo server
```

## Known issues

* Windows and WSL2
  * Automatic page reload.
    * Running Hugo in WSL requires that the source code be within the WSL file system for notification of changes to reach the service. If you find Hugo server does not acknowledge changes to your site try to run Hugo in the host Windows environment or move your code base into the WSL2 file structure.
