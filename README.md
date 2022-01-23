`nodejs-ex`
-----------

This is a example JavaScript application, it only shows a simple "hello world" message. However, it's
useful for testing building systems and containerization techniques.

## Building

### Docker

To build a container image, using `docker` as the container-manager, execute:

```bash
npm run build-image
```

### Buildpacks

```bash
pack build nodejs-ex --builder="paketobuildpacks/builder:base"
```

And then, tag the image produced as:

```
docker tag nodejs-ex:latest docker.io/otaviof/nodejs-ex:latest
```

# Running

Running the application as a container image:

```bash
docker run \
	--name="nodejs-ex" \
	--rm \
	--interactive \
	--tty \
	--publish="8080:8080" \
	docker.io/otaviof/nodejs-ex:latest
```

Alternatively, use:

```bash
npm install
npm run start
```