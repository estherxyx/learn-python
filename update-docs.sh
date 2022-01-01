rm -rf docs
cd python-notes
mkdocs build
cd ..
cp -rf python-notes/site/ docs/
git add .
git commit -m "Update docs"
git push
