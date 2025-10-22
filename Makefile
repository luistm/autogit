clean:
	-rm -rf dist
	-rm -rf build
	-rm -rf src/luis_autogit.egg-info

tests:
	pytest -q

build:
	python -m build

publish: clean tests build  ## Publishes the project in pypi
	python -m twine upload dist/* --verbose