# Sufflain's client side

Licensed under the GNU AGPLv3. For more, read the [LICENSE](./LICENSE) file.

## Project configuration
1. Copy the program's config file from the [template](./template) directory to [lib](./lib).
2. Fill it with necessary data.

## Build
1. Get the dependencies:
```bash
dart pub get
```

2. Run a build script. Use either a PowerShell or shell script, depending on your system:
```powershell
.\build.bat
```

or

```bash
./build.sh
```

## Serve (optional)
If you want to run it using the [webdev](https://pub.dev/packages/webdev) tool.

1. Install the *webdev* tool:
```bash
dart pub global activate webdev
```

2. Use a script for your system:
```powershell
.\serve.bat [port]
```

or 

```bash
./serve.sh [port]
```

"[port]" is an optional TCP port number of the web server.

## Commit Message Guidelines
We use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) to format our commit
messages.
