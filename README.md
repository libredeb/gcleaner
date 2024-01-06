# GCleaner

GCleaner Allows to keep clean your GNU/Linux system easily.

## Translations

Do you want to contribute with translations in your language?

1. First edit `LINGUAS` file and add the (2 letter) abbreviation of your language (one below the other).

2. Generate the translatable content in a `.po` language file running next command:
```bash
ninja com.github.libredeb.gcleaner-update-po
```

> **NOTE:** Remember to keep/add the corresponding header (you can take the one from other `.po` files as an example).

## Install

To be able to build this app, you need follow this steps:

1. Install dependencies:
```bash
sudo apt install <dependencies>
```

2. Configure build directory:
```bash
meson build --prefix=/usr
```

3. Compile the source code and install the required files on your system:
```bash
cd build
ninja
ninja install
```

> **NOTE:** You will be asked for your user password to have privileges/permissions to install the required files on your system.

## Uninstall

To remove the application files from your system, run next command from the root of the project:
```bash
sudo ninja -C build uninstall
```
