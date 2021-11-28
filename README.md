`nodejs-ex`
-----------

This is a example JavaScript application, it only shows a simple "hello world" message. However, it's
useful for testing building systems and containerization techniques.

To run it locally, use:

```bash
npm install
npm run start
```

To build a container image, using `docker` as the container-manager, execute:

```bash
npm run build-image
```

And finally, running the application from the container image, use:

```bash
docker run \
	--name="nodejs-ex" \
	--rm \
	--publish="8080:8080" \
	--interactive \
	--tty \
	docker.io/otaviof/nodejs-ex:latest
```
