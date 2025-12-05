# i3lock-star

A fork of the [i3lock-color](https://github.com/Raymo111/i3lock-color) project, which replaces the standard password entry indicators (ring and bar) with a more familiar password mask.

![i3lock-color in action](examples/screenshot_i3lock.png "Screenshot sample")

## New Feature: Password Mask Indicator

Now you can use a visual mask to hide the entered password on the lock screen.

### Key Features

- **Password Mask** — 
replaces the standard greeting text with a password masked with a special badge character
- **Mask Badge** — use any character, including Unicode (Some characters are not displayed. This may be fixed in the future). By default badge symbol is `*`
- **Priority Mode** — when password mask is enabled, other indicators are not displayed

### Usage

#### Enabling Password Mask

```bash
i3lock \
--password-mask
```

#### Configuring the Mask Badge

```bash
i3lock \
--password-mask \
--mask-badge="∗"
```

#### Combining with Other Parameters

All settings that applied to the standard `greeter text` also apply to the password mask. For example:

```bash
i3lock \
--password-mask \
--mask-badge="∗" \
--greeter-color="#ff00ffcc" \
--greeter-size=36
```

### Implementation Details

1. **Display Priority**: When the `--password-mask` parameter is passed, other indicators will not be displayed.

2. **Settings Inheritance**: The password mask inherits all formatting settings that previously applied to greeter text (color, font size, positioning, etc.).

3. **Unicode Support**: The `--mask-badge` parameter supports Unicode characters, although some symbols may display incorrectly in the current version. This issue will be fixed in future updates.

### Examples

In the [examples/](examples/ "examples/") directory you can find an example of running i3lock with new parameters, as well as an expanded example of [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen) with screenshots

### Installation

Build the project like the original i3-color, following the standard build procedure. New parameters will be automatically available after compilation.

### Compatibility

The fork maintains full compatibility with all original i3-color parameters. New parameters are added optionally and do not affect the standard behavior of the utility.

---

**Note**: This fork is under development. Support for additional Unicode characters and display improvements are planned for future versions.
