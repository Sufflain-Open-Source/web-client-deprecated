# Sufflain's client side

Licensed under the GNU AGPLv3. For more, read the [LICENSE](./LICENSE) file.

Images are licensed under the **Creative Commons Attribution-NonCommercial-NoDerivatives 4**. For more, read the [LICENSE](img/LICENSE.md) file.

## Demo
You can view the [screenshots](demo.md).

## Project configuration
1. Copy the program's config file from the [template](./template) directory to [lib](./lib).
2. Fill it with necessary data.

## Install the webdev tool
You will build the app using the [webdev](https://pub.dev/packages/webdev) tool.

```bash
dart pub global activate webdev
```


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

Use a script for your system:
```powershell
.\serve.bat [port]
```

or 

```bash
./serve.sh [port]
```

`[port]` is an optional TCP port number of the web server.

## Commit Message Guidelines
We use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) to format our commit
messages.

## Libraries
- [firebase](https://pub.dev/packages/firebase) - Copyright (c) 2016, Google
- [equatable](https://pub.dev/packages/equatable) - Copyright (c) 2018 Felix Angelov
- [bloc](https://pub.dev/packages/bloc) - Copyright (c) 2018 Felix Angelov