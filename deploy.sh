git checkout gh-pages
git merge main
quarto render workshop.qmd --to html -o index.html --output-dir docs
cp maps/* docs
git add docs/*
git commit -m "Deploy index.html"
git push origin gh-pages
git checkout main