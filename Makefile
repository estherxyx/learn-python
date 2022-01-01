update-docs:
		rm -rf docs
		mkdocs build --config-file python-notes/mkdocs.yml
		cp -rf python-notes/generated/ docs/
		rm -rf python-notes/generated
		git add docs
		git commit -m "Update docs"

mkdocs-serve:
		mkdocs serve --config-file python-notes/mkdocs.yml
		#mkdocs build