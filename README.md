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
<!-- start title --># GitHub Action: Test WordPress language files<!-- end title -->
<!-- start badges --><a href="https://github.com/holyhope/test-wordpress-languages-github-action/releases/latest"><img src="https://img.shields.io/github/v/release/holyhope/test-wordpress-languages-github-action?display_name=tag&sort=semver&logo=github&style=flat-square" alt="Release" /></a><a href="https://github.com/holyhope/test-wordpress-languages-github-action/releases/latest"><img src="https://img.shields.io/github/release-date/holyhope/test-wordpress-languages-github-action?display_name=tag&sort=semver&logo=github&style=flat-square" alt="Release" /></a><img src="https://img.shields.io/github/last-commit/holyhope/test-wordpress-languages-github-action?logo=github&style=flat-square" alt="Commit" /><a href="https://github.com/holyhope/test-wordpress-languages-github-action/issues"><img src="https://img.shields.io/github/issues/holyhope/test-wordpress-languages-github-action?logo=github&style=flat-square" alt="Open Issues" /></a><img src="https://img.shields.io/github/downloads/holyhope/test-wordpress-languages-github-action/total?logo=github&style=flat-square" alt="Downloads" /><!-- end badges -->
---

</div>
<!-- start description -->Check language files for WordPress plugins for being up-to-date.<!-- end description -->
<!-- start contents -->
<!-- end contents -->
<!-- start usage -->```yaml
- uses: holyhope/test-wordpress-languages-github-action@v0.0.0
  with:
    plugin_slug: ''

    # Default: .
    source: ''

    # Default:
    pot_file: ''

    # Default:
    po_path: ''

    # Default: languages
    languages_directory: ''

    # Default: "POT-Creation-Date:
    ignored_pattern: ''

    domain: ''

    # Default: false
    ignore_domain: ''

    # Default: false
    skip_js: ''

    # Default: false
    skip_php: ''

    # Default: false
    skip_blade: ''

    # Default: false
    skip_block_json: ''

    # Default: false
    skip_theme_json: ''

    # Default: true
    skip_audit: ''

    # Default:
    exclude: ''

    include: ''

    # Default: true
    location: ''

    # Default:
    headers: ''

    # Default:
    file_comment: ''

    # Default:
    package_name: ''

```
<!-- end usage -->
<!-- start inputs -->| ****Input**** | ****Description**** | ****Default**** | ****Required**** |
|---|---|---|---|
| `**plugin_slug**` | Plugin or theme slug. |  | **true** |
| `**source**` | Directory to scan for string extraction. | `.` | __false__ |
| `**pot_file**` | Path to an existing POT file to use for updating.<br />If not provided, the default `{source}/{plugin_slug}.pot` is used. |  | __false__ |
| `**po_path**` | PO file to update or a directory containing multiple PO files.<br />Defaults to all PO files in the source directory. |  | __false__ |
| `**languages_directory**` | Path to the languages directory | `languages` | __false__ |
| `**ignored_pattern**` | Pattern to ignore when checking the POT file changes. | `"POT-Creation-Date: ` | __false__ |
| `**domain**` | Text domain to look for in the source code, unless the `--ignore-domain` option is used.<br />By default, the "Text Domain" header of the plugin or theme is used.<br />If none is provided, it falls back to the project slug. |  | __false__ |
| `**ignore_domain**` | Ignore the text domain completely and extract strings with any text domain. |  | __false__ |
| `**skip_js**` | Skips JavaScript string extraction. Useful when this is done in another build step, e.g. through Babel. |  | __false__ |
| `**skip_php**` | Skips PHP string extraction. |  | __false__ |
| `**skip_blade**` | Skips Blade-PHP string extraction. |  | __false__ |
| `**skip_block_json**` | Skips string extraction from block.json files. |  | __false__ |
| `**skip_theme_json**` | Skips string extraction from theme.json files. |  | __false__ |
| `**skip_audit**` | Skips string audit where it tries to find possible mistakes in translatable strings. | `true` | __false__ |
| `**exclude**` | Comma-separated list of files and paths that should be skipped for string extraction.<br />For example, `--exclude=.github,myfile.php` would ignore any strings found within `myfile.php` or the `.github` folder. Simple glob patterns can be used, i.e. `--exclude=foo-*.php` excludes any PHP file with the `foo-` prefix. Leading and trailing slashes are ignored, i.e. `/my/directory/` is the same as `my/directory`. The following files and folders are always excluded: node_modules, .git, .svn, .CVS, .hg, vendor, *.min.js. |  | __false__ |
| `**include**` | Comma-separated list of files and paths that should be used for string extraction.<br />If provided, only these files and folders will be taken into account for string extraction.<br />For example, `--include="src,my-file.php` will ignore anything besides `my-file.php` and files in the `src` directory. Simple glob patterns can be used, i.e. `--include=foo-*.php` includes any PHP file with the `foo-` prefix. Leading and trailing slashes are ignored, i.e. `/my/directory/` is the same as `my/directory`. |  | __false__ |
| `**location**` | Whether to write `#: filename:line` lines.<br />Note that disabling this option makes it harder for technically skilled translators to understand each message’s context. | `true` | __false__ |
| `**headers**` | Array in JSON format of custom headers which will be added to the POT file. |  | __false__ |
| `**file_comment**` | String that should be added as a comment to the top of the resulting POT file. |  | __false__ |
| `**package_name**` | Name to use for package name in the resulting POT file's `Project-Id-Version` header.<br />Overrides plugin or theme name, if applicable. |  | __false__ |
<!-- end inputs -->
<!-- start outputs -->| ****Output**** | ****Description**** |
|---|---|
| `**patch_path**` | Path to the patch file. |
<!-- end outputs -->
<!-- start [.github/ghadocs/examples/] -->
<!-- end [.github/ghadocs/examples/] -->
```
