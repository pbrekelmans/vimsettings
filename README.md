Steps:

```bash
git clone https://github.com/pbrekelmans/vimsettings.git
cd vimsettings
git submodule update --init --recursive
cp -rp .vimrc .vim ~
```
Or

```bash
git clone --recurse-submodules https://github.com/pbrekelmans/vimsettings.git
cp -rp vimsettings/.vim* ~
```

Then start vim and:

`:PluginInstall`

