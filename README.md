# lab-resource

Internal documentation for the lab.

The wiki is powered by `jupyterbook`. To contribute please edit files under 

```
- public
- private
```

To publish contents under `public` folder to github.io, you need to [install docker](https://xinhe-lab.github.io/lab-wiki/orientation/jupyter-setup.html#install-docker) 
and `sos` (simply `pip install sos` for Python 3 users), then run

```
./release.sos --serve
```
to preview, and 

```
./release.sos
```
to write the changes.
