# Project layout and rules
Those are the rules that I'll follow to keep this project structured and not become a mess of package in a workspace.

## Git
### 1. Each package has its own *main* branch
- It follows the naming convention `pkg/<package_name>` 
- It acts as **main**, but only for the package.
- Work on a package should be done on sub-branches from the main package branch.
- *Main* package branches can't be deleted.

### 2. Package's branches are automatically fast-forwarded
[This](../.github/workflows/sync-packages.yml) workflow automatically fast-forwards all the packages main branches that are main when a PR is merged.  
This keep the user to have to rebase the branch everytime you want to work on the package, just checkout, pull, et voila!
