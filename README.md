# lab-resource

Internal documentation for the lab. To contribute please edit files under

```
- public
- private
```
## Preview your changes

To preview changes before you push, you need to [install docker](https://xinhe-lab.github.io/lab-wiki/orientation/jupyter-setup.html#install-docker), then run from `bash` terminal:

```
docker run --rm --security-opt label:disable -v $(pwd):/srv/jekyll -u $(id -u):100 -p 4000:4000 --name wiki-server -t \
	gaow/lab-wiki sos run release.sos --no-use-docker --serve
```
then see the changes at http://0.0.0.0:4000/lab-wiki/welcome.html. If the `docker run` command complains that port 4000 is in use, it means the server was not stopped properly. To fix it, type:

```
docker stop wiki-server
```

## Update the website

**Notice: this section assumes the website is hosted under `docs` folder on github as source for github pages. But in our setup we've implemented an automatic deploy workflow to update the website. Therefore setup in this section do not apply and you can skip this section.**

To publish contents under `public` folder to github.io, run from `bash` terminal:

```
docker run --rm --security-opt label:disable -v $(pwd):/srv/jekyll -u $(id -u):100 -t \
	gaow/lab-wiki sos run release.sos --no-use-docker
```
to write the changes to the repo, add & commit, and push. The updated wiki will then be displayed at https://xinhe-lab.github.io/lab-wiki

## Why docker?

The wiki is powered by `jupyterbook` which uses `jekyll`, a `ruby` based tool for generating static website. These tools, along with their dependencies, are not straightforward to install. Also instead of vanilla `jupyterbook` + `jekyll` some modifications are made to it (making file organization much clearer) and built into `release.sos` as a pipeline, which requires `sos` to run it (requires Python 3.6+). All these tools are built into the docker image and users will only have to run the `docker` commands above.
