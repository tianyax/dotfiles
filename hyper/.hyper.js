// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    enableVibrancy: true,
    hyperTransparentDynamic: {
        alpha: 0.7 // 默认 50% 透明度
    },
    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates
    updateChannel: 'stable',
    //catCursor: {
    //  speed: 0, // length of the sequence in milliseconds
    //  fontSize: 60, // font size of the cat in css pixels
    //  cats: ['🐱', '🙀', '😾', '😿', '😹', '😼', '😺', '😻', '😸', '😽'] // custom cat sequence. only cats are accepted, of course
    //},

    // default font size in pixels for all tabs
    fontSize: 20,

    // font family with optional fallbacks
    // fontFamily: 'Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    //fontFamily: 'Droid Sans Mono for Powerline',
    //fontFamily: 'JetBrainsMono Nerd Font',
    fontFamily: 'FuraCode Nerd Font',

    // default font weight: 'normal' or 'bold'
    fontWeight: 'normal',

    // font weight for bold characters: 'normal' or 'bold'
    // fontWeightBold: 'bold',
    fontWeightBold: 'normal',

    // line height as a relative unit
    lineHeight: 1.1,

    // letter spacing as a relative unit
    letterSpacing: 0.3,

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(248,28,229,0.8)',

    // terminal text color under BLOCK cursor
    cursorAccentColor: '#000',

    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: 'BLOCK',

    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: false,

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    // opacity is only supported on macOS
    //backgroundColor: '#000',
    //backgroundColor: 'rgba(0,0,0,0.5)',
    backgroundColor: 'rgba(75,75,75,0)',

    // terminal selection color
    selectionColor: 'rgba(248,28,229,0.3)',

    // border color (window, tabs)
    borderColor: '#333',

    // custom CSS to embed in the main window
    css: '',

    // custom CSS to embed in the terminal window
    termCSS: '',

    // if you're using a Linux setup which show native menus, set to false
    // default: `true` on Linux, `true` on Windows, ignored on macOS
    showHamburgerMenu: '',

    // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
    showWindowControls: '',

    // custom padding (CSS format, i.e.: `top right bottom left`)
    // padding: '1px 4px',
    padding: '0px 1px 0px 1px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#000000',
      red: '#C51E14',
      green: '#1DC121',
      yellow: '#C7C329',
      blue: '#0A2FC4',
      magenta: '#C839C5',
      cyan: '#20C5C6',
      white: '#C7C7C7',
      lightBlack: '#686868',
      lightRed: '#FD6F6B',
      lightGreen: '#67F86F',
      lightYellow: '#FFFA72',
      lightBlue: '#6A76FB',
      lightMagenta: '#FD7CFC',
      lightCyan: '#68FDFE',
      lightWhite: '#FFFFFF',
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    //
    // Windows
    // - Make sure to use a full path if the binary name doesn't work
    // - Remove `--login` in shellArgs
    //
    // Bash on Windows
    // - Example: `C:\\Windows\\System32\\bash.exe`
    //
    // PowerShell on Windows
    // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
    shell: 'zsh',

    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to `false` for no bell
    //bell: 'SOUND',
    bell: false,

    // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,

    // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // selection is present (`true` by default on Windows and disables the context menu feature)
    quickEdit: false,

    // choose either `'vertical'`, if you want the column mode when Option key is hold during selection (Default)
    // or `'force'`, if you want to force selection regardless of whether the terminal is in mouse events mode
    // (inside tmux or vim with mouse mode enabled for example).
    macOptionSelectionMode: 'vertical',

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // Whether to use the WebGL renderer. Set it to false to use canvas-based
    // rendering (slower, but supports transparent backgrounds)
    webGLRenderer: false,

    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    `hyper-materialshell`,
    `hyper-pane`,
    `hyper-material-theme`,
    `hyper-transparent-bg`,
    `hyperpower`,
    `hyper-quit`,
    `hyperminimal`,
    `hyperfullscreen`,
    `hyperterm-crosshair`,
    `hyper-arc-dark-controls`,
    `hyper-bloodbath`,
    //`hyper-statusline`,
    //`hyperterm-lastpass`,
    //`hyper-transparent-dynamic`,
    //`hyper-hypest`,
    //`hyper-sweet`,
    //`hyper-tabs-enhanced`,
    //`hyperline`,
    //`hyperpanic`,
    //`hyper-one-light`,
    //`hyper-cat`,
    //`hyper-cat-cursor`,
  ],
  //plugins: [`hyper-pane`, `hyper-snazzy`, `hyper-transparent-dynamic`, `hyperpower`],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [
  "fig-hyper-integration"
],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  },
};

