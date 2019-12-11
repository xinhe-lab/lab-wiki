# lab-resource

Internal documentation for the lab.

The wiki is powered by `jupyterbook`. To contribute please edit files under 

```
- public
- private
```

To publish contents under `public` folder to github.io, you need to [install docker](https://xinhe-lab.github.io/lab-wiki/orientation/jupyter-setup.html#install-docker), then run from `bash` terminal:

```
docker run --rm --security-opt label:disable -v $(pwd):/srv/jekyll -u $(id -u):100 -t gaow/lab-wiki sos run release.sos --no-use-docker
```
to write the changes to the repo, add & commit, and push. The updated wiki will then be displayed at https://xinhe-lab.github.io/lab-wiki

To preview changes before you push:

```
docker run --rm --security-opt label:disable -v $(pwd):/srv/jekyll -u $(id -u):100 -p 4000:4000 -t gaow/lab-wiki sos run release.sos --no-use-docker
```
then see the changes at http://0.0.0.0:4000/lab-wiki/welcome.html

