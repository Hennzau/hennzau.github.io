add name repo=name branch="main":
    git remote add {{repo}} git@github.com:Hennzau/{{repo}}.git
    git fetch {{repo}}
    git merge -s ours --no-commit --allow-unrelated-histories {{repo}}/{{branch}}
    git read-tree --prefix={{name}} -u {{repo}}/{{branch}}
    git commit -m "Merge {{name}} into hennzau.github.io"
    
add-branch name repo=name:
    git merge -s ours --no-commit --allow-unrelated-histories {{repo}}/{{name}}
    git read-tree --prefix={{name}} -u {{repo}}/{{name}}
    git commit -m "Merge {{name}} into hennzau.github.io"
