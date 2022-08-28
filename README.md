`nodejs-ex`
-----------

This is a example JavaScript application, it only shows a simple "hello world" message. However, it's
useful for testing building systems and containerization techniques.

## Building

Creating a container image out of this project.

### Docker

To build a container image, using `docker` as the container-manager, execute:

```bash
npm run build-image
```

### Buildpacks

You can use [`pack`][buildpacksPack] to build a container image locally:

```bash
pack build ghcr.io/otaviof/nodejs-ex:latest \
	--builder="paketobuildpacks/builder:base"
```

## Running

Running the application as a container image:

```bash
docker run \
	--name="nodejs-ex" \
	--rm \
	--interactive \
	--publish="8080:8080" \
	ghcr.io/otaviof/nodejs-ex:latest
```

Alternatively, use:

```bash
npm install
npm run start
```

[buildpacksPack]: https://buildpacks.io/docs/tools/pack/