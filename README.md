Code of the website the-independent-friend.de
=============================================

![build_html](https://github.com/OlafRadicke/the-independent-friend-static/actions/workflows/build_html.yaml/badge.svg)
![build_html_test](https://github.com/OlafRadicke/the-independent-friend-static/actions/workflows/build_html_test.yaml/badge.svg)

The Website is created with Hugo.

# Run local webserver #

enter:

```bash
cd ./hugo/
hugo server -D
```
And check

[http://127.0.0.1:1313](http://127.0.0.1:1313)

# Add new site #

Enter:

```bash
hugo new posts/my-first-post.md
```

# For converting old shit #

https://www.dotnetperls.com/csv-go

# Links #

## Sites ##

```bash
[export_post_2008-12-16_1_369.raw]({{< ref "export_post_2008-12-16_1_369.raw" "amp" >}})
```

## Pics ##

```bash
![Reignac.jpg](Reignac.jpg)
```


# Create container image

Enter

```bash
podman build -t the-independent-friend-de:latest --no-cache=false .
```

Test run:

```
podman run --name the-independent-friend-de -d -p 8080:80 --rm the-independent-friend-de
```


BUILD AND PUSH IMAGE
--------------------

### BY PIPELINE

Commit changes and set a git tag.

### BY HAND

```bash
podman login docker.io
LATES_VERSION=4.5.16
export HUGO_ENV="production"
hugo 	--gc \
		--ignoreCache \
		--environment production \
		--source ./hugo \
		--destination ../public
podman build -t the-independent-friend-de:latest --no-cache=true .
podman tag  the-independent-friend-de:latest  olafradicke/the-independent-friend-de:${LATES_VERSION}
podman push olafradicke/the-independent-friend-de:${LATES_VERSION}
```

Update HUGO theme
-----------------

```bash
 git submodule update --remote
 ```