build-docs:
		rm -rf docs
		mkdocs build --config-file learning-notes/mkdocs.yml
		cp -rf learning-notes/generated/ docs/
		rm -rf learning-notes/generated
		git add docs
		git commit -m "Update docs"

mkdocs-serve:
		mkdocs serve --config-file learning-notes/mkdocs.yml
		#mkdocs build

git-push:
		git add .
		git commit -m "update all"
		git push