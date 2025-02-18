## Theta CLI

![https://api.buildwiththeta.com/storage/v1/object/public/theta-assets/docs/theta_cli.jpg](https://api.buildwiththeta.com/storage/v1/object/public/theta-assets/docs/theta_cli.jpg)

Theta CLI allows the remote user interface to be preloaded for use without an Internet connection.

- [📚 Read the documentation](https://docs.buildwiththeta.com/en/cli/introduction)

---

## Getting Started 🚀

Activate Theta CLI globally via:

```sh
dart pub global activate theta_cli
```

## Usage

```sh
# Preload command
# -anon-key: Anonymous key for the project
$ theta preload -anon-key ANON_KEY
```

The command `preload` allows you to preload the remote user interface for use without an Internet connection.
It preloads also the images used in the remote user interface.

Run this command inside the root of a Flutter app. The folder must contain a `pubspec.yaml` file.

### Other commands

```sh
# Show CLI version
$ theta --version

# Update CLI
$ theta update

# Show usage help
$ theta --help
```

