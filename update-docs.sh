rm -rf docs
cd python-notes
mkdocs build
cd ..
cp -rf python-notes/generated/ docs/
rm -rf python-notes/generated
git add docs
git commit -m "Update docs"