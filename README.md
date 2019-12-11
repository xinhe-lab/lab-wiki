# lab-resource

Internal documentation for the lab.

The wiki is powered by `jupyterbook`. To contribute please edit files under 

```
- public
- private
```

To publish contents under `public` folder to github.io, you need to [install docker](https://xinhe-lab.github.io/lab-wiki/orientation/jupyter-setup.html#install-docker), then run

```
docker run --rm --security-opt label:disable -v `pwd`:/srv/jekyll -u $UID:100 -t gaow/lab-wiki sos run release.sos --no-use-docker
```
to write the changes to the repo, add & commit, and push. The updated wiki will then be displayed at https://xinhe-lab.github.io/lab-wiki
