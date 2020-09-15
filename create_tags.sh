#!/bin/bash
for i in {1..4000}
do
  t="t-$i"

  echo "Tag $t" > README.md
  git commit -q -m "Setting tag name $t in README" README.md
  git tag -m "Create tag $t" $t

  echo $t
done

git push origin master
git push --tags origin

