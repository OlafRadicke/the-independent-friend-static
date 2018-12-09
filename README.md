# Build static page #

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

# Deploy #

```bash
ansible-playbook -i ./ansible/hosts ./ansible/setup.yml
```

# Renewl ssl cert #

```bash
cd /opt/
./certbot-auto renew --dry-run
./certbot-auto renew
nginx -t
systemctl reload nginx 
systemctl status nginx
curl -vvI https://the-independent-friend.de
curl -vvI https://olaf-radicke.de/
```

