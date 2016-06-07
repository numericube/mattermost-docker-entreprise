# Mattermost Docker Entreprise Image

## Build image

```
docker build -t mattermost_entreprise -t mattermost_entreprise:3.0.3 .
```

## Load image

```
docker run -d --name=mattermost_entreprise --publish 8065:8065  mattermost_entreprise:3.0.3
```

## Save image

```
docker save -o mattermost_entreprise_v3-0-3.img mattermost_entreprise:3.0.3 
```

