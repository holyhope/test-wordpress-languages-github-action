<!-- How to generate this file
1. Reset the README.md file:
   ```shell
   cp -f README.md.tpl README.md
   ```
2. ```shell
   npx --yes github-action-readme-generator@v1.6.0 --readme README.md
   ```
-->
<div align="center" width="100%">
<!-- start branding -->
<!-- end branding -->
<!-- start title -->
<!-- end title -->
<!-- start badges -->
<!-- end badges -->
---

</div>
<!-- start description -->
<!-- end description -->

This action checks the POT file for the WordPress plugin or theme by running `wp i18n make-pot` and then updates the PO files.
See the [wp-cli doc](https://developer.wordpress.org/cli/commands/i18n/make-pot/) for more information.


By default the action fails if the POT or PO files are not up-to-date or if there are warnings on compilation.
This can be disabled with the `fail_on_diff` and `fail_on_warning` inputs.
See the inputs below for more options.


The action outputs a patch file with the changes to apply to the files, and a file containing all compiler warnings.
<!-- start contents -->
<!-- end contents -->
<!-- start usage -->
<!-- end usage -->
<!-- start inputs -->
<!-- end inputs -->
<!-- start outputs -->
<!-- end outputs -->
<!-- start [.github/ghadocs/examples/] -->
<!-- end [.github/ghadocs/examples/] -->
