rm -rf publish
git add .
git commit -m "update"
git push origin master
hugo -d publish --theme=ghostwriter_custom --buildDrafts
cd publish
git init
git remote add origin git@github.com:MaikKlein/maikklein.github.com.git
git add .
git commit -m "update"
git branch -m master gh-pages
git push -f origin gh-pages

