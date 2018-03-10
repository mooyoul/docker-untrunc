# docker-untrunc
Docker image for untrunc

## What is this?

This docker image contains prebuilt [untrunc](https://github.com/ponchio/untrunc) binary, which restores a damaged mp4 (or mov) video.

## How to use this image?

Since untrunc requires working (not broken) video to reference some base metadata, 
You'll need to prepare not only broken video but also working video.

So assuming you have two videos from same video source (e.g. Video camera):

- Broken: /tmp/workspace/broken.mp4
- Working: /tmp/workspace/working.mp4


Pull this docker image first:

```bash
$ docker pull mooyoul/untrunc
```

Run untrunc program:

```bash
docker run --rm -v /tmp/workspace:/workspace mooyoul/untrunc /workspace/working.mp4 /workspace/broken.mp4
```

For further details, Please refer [untrunc documentation](https://github.com/ponchio/untrunc#using).

## License

GPL 2

