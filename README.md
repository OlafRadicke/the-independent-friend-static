Code of the website the-independent-friend.de
=============================================

The Website is created with Hugo.

# Run local webserver #

enter:

```bash
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


Build and push image (copy&paste)
---------------------------------

```bash
podman login docker.io
LATES_VERSION=4.2.5
hugo --gc --ignoreCache
podman build -t the-independent-friend-de:latest --no-cache=true .
podman tag  the-independent-friend-de:latest  olafradicke/the-independent-friend-de:${LATES_VERSION}
podman push olafradicke/the-independent-friend-de:${LATES_VERSION}
```

Update HUGO theme
-----------------

```bash
 git submodule update --remote
 ```