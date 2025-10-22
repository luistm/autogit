clean:
	-rm -rf dist
	-rm -rf src/autogit.egg-info

publish: clean ## Publishes the project in pypi
	python -m build
	python -m twine upload dist/* --verbose