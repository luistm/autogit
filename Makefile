clean:
	-rm -rf dist
	-rm -rf build
	-rm -rf src/luis_autogit.egg-info

publish: clean ## Publishes the project in pypi
	python -m build
	python -m twine upload dist/* --verbose