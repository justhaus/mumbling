# mumbling
Personal Murmur Server


## Containerized Service

To start mumbling as a Docker containerize service, execute the following steps.

```bash
git clone https://github.com/justhaus/mumbling.git
mkdir data
pushd mumbling
bash build.sh
popd
bash mumbling/run.sh
```

## INI Changes

Keep in mind that when the .ini file changes the container image must be rebuilt in order to see changes, since the .ini file isn't used flat out of the source tree, but instead baked into the container image as part of the build.sh step.
