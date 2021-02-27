# Pulseaudio Network to Pipe

Runs Pulseaudio in a container that allows all TCP native connections and has a single file sink.

Used to receive sound from remote Pulseaudio instances and write to a [snapcast named pipe](https://github.com/badaix/snapcast) on a server.

## Configuration

 - `PIPE_PATH` environment variable: set to the path of the pipe in the container

## Usage

```
docker run --rm \
  -v "$PWD/pipes:/pipes" \
  -e "PIPE_PATH=/pipes/phono" \
  -p "4713:4713" \
  davidpadbury/pulseaudio-network-to-pipe:latest
```
