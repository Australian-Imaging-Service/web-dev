# Hugo website with tailbliss and LotusDocs theme.

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
