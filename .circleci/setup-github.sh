git config user.name "juliacn"
git config user.email "no-reply@juliacn.com"

find . -maxdepth 1 ! -name '_site' ! -name '.git' ! -name '.gitignore' -exec rm -rf {} \;
mv _site/* .
rm -R _site/

git add -fA
git commit --allow-empty -m "$(git log master -1 --pretty=%B)"
git push -f origin master:gh-pages

echo "deployed successfully"
