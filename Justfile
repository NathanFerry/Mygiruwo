# List all availables commands.
list:
    just -l

# Create a new package with it's associated branch.
new-package name:
    git pull origin main
    git switch -c "pkg/{{name}}" main
    cargo new --lib --vcs none crates/"{{name}}"
    git add . && git commit -m "Add my_package"
    git push -u origin pkg/my_package
