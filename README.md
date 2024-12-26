
## Table of Contents

- [Rabbit 🐰](#rabbit-)
  - [Features](#features)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [Getting Started](#getting-started)
  - [Configuration Options](#configuration-options)
    - [Example Configuration](#example-configuration)
    - [`widgets`](#widgets)
    - [`output_dir`](#output_dir)
    - [`add_imports`](#add_imports)
    - [`prefix`](#prefix)
    - [`docs`](#docs)
  - [Multiple Constructors](#multiple-constructors)
  - [Maintaining Generated Code](#maintaining-generated-code)
  - [Common Use Cases](#common-use-cases)
    - [Theming Widgets](#theming-widgets)
    - [Adding Default Behaviors](#adding-default-behaviors)
  - [Best Practices](#best-practices)
    - [When to Use Wrappers](#when-to-use-wrappers)
    - [When Not to Use Wrappers](#when-not-to-use-wrappers)
    - [Naming Conventions](#naming-conventions)


# Rabbit 🐰

A Dart CLI tool that generates wrapper widgets to help reduce boilerplate code and create reusable widget variations. Instead of manually writing wrapper widgets for customized versions of existing widgets, Rabbit generates the boilerplate code for you, allowing you to focus on the customization.

For example, if you need a red container in multiple places in your app, instead of writing:
```dart
Container(
  color: Colors.red,
  child: child,
)
```
You can generate a `RedContainer` widget that encapsulates this styling:
```dart
RedContainer(
  child: child,
)
```

Rabbit helps you create these wrapper widgets quickly and consistently, maintaining all the original widget's parameters while allowing you to customize what you need.

## Features

- **Easy Widget Wrapping**: Generate wrapper widgets from any existing widget with a single command
- **Type Safety**: Preserves generic types and constructor parameters from the original widget
- **Customizable Output**: 
  - Choose your output directory
  - Customize widget name prefixes
  - Control import statement generation
- **Documentation Support**: Option to include original widget's documentation comments
- **Bulk Generation**: Generate multiple wrappers at once, even for entire packages
- **Non-Destructive**: Never overwrites existing files, allowing safe regeneration
- **Flutter Compatible**: Works with any Flutter widget, including third-party packages

## Requirements

- Flutter SDK: >=3.19.0
- Dart SDK: >=3.19.0

## Installation

Add Rabbit to your project's dev dependencies:

```sh
flutter pub add dev:rabbit
```

Or manually add it to your `pubspec.yaml`:

```yaml
dev_dependencies:
  rabbit: ^latest_version
```

Then run:
```sh
flutter pub get
```

## Getting Started

In this example we will generate a `RedContainer` widget that is identical to a `Container` widget but with a red background color.

1. Configure your widget wrappers in `pubspec.yaml`:

    ```yaml
    rabbit:
      widgets:
        package:flutter/material.dart:
          - Container
    ```
    For a complete list of configuration options, see the [Configuration](#configuration) section.

2. Run the generation command:
    ```bash
    dart run rabbit generate
    ```
    This will generate a `$Container` widget in the default output directory.
3. Locate the generated widget and customize it as needed.
    ```dart
    class RedContainer extends StatelessWidget {
    
      final AlignmentGeometry alignment;
      final EdgeInsetsGeometry padding;
      // ... and the rest of the Container properties

      const RedContainer({
        super.key,
        this.alignment,
        this.padding,
        // ... and the rest of the Container properties
      });


      @override
      Widget build(BuildContext context) {
        return Container(
          color: Colors.red,
          alignment: alignment,
          padding: padding,
          // ... and the rest of the Container properties
        );
      }
    }
    ```
    You can now use the `RedContainer` widget in your app as you would a `Container` widget.
4. (Optional) Rename the generated file:
    Rename the generated file to `red_container.dart` for better readability and import statements.

Now you can use the `RedContainer` widget in your app as you would a `Container` widget.
```dart
RedContainer(
  child: Text('Hello, World!'),
)
```

## Configuration Options

The following options can be configured in your `pubspec.yaml` under the `rabbit` key:

| Option        | Default           | Description                                          |
| ------------- | ----------------- | ---------------------------------------------------- |
| `widgets`     | Required          | Map of package imports and widget names              |
| `output_dir`  | `lib/src/wrapped` | Directory where generated files will be placed       |
| `add_imports` | `false`           | Create the import statements for the generated files |
| `prefix`      | `$`               | Prefix for generated widget names                    |
| `docs`        | `false`           | Include documentation comments from original widget  |

### Example Configuration

```yaml
rabbit:
  output_dir: lib/src/widgets 
  add_imports: true
  prefix: My
  docs: true
  widgets:
    package:flutter/material.dart:
      - Container
      - ElevatedButton
    package:shadcn_ui/shadcn_ui.dart:
      - ShadButton
```
    
###  `widgets`

The `widgets` option is a map where:
- Keys are package import statements
- Values are lists of widget names to generate wrappers for

You can use the special value `all` to generate wrappers for all widgets in a package:
```yaml
rabbit:
  widgets:
    package:flutter/material.dart:
      - all  # Will generate wrappers for all Material widgets
```
⚠️ **Warning**: Using `all` will generate a large number of files and is not recommended for most use cases.

### `output_dir`
The directory where generated files will be placed. 
```yaml
rabbit:
  output_dir: lib/src/widgets  # Your custom path
```
- Default: `lib/src/wrapped`
- The directory will be created if it doesn't exist
- Relative paths are resolved from your project root
- The generate widgets will match the package structure of the original widgets

### `add_imports`
`rabbit` *can* generate import statements for the generated files, however they look very ugly so it's disabled by default.

If you want to use this feature, you can enable it like this:

```yaml
rabbit:
  add_imports: true
```
- Default: `false`
- When `true`, adds imports with package prefixes to avoid naming conflicts

### `prefix`
The prefix added to generated widget names to avoid naming conflicts.
```yaml
rabbit:
  prefix: My  # Will generate MyContainer, MyButton, etc.
```
- Default: `$`
- Can be set to an empty string (`''`) if you want no prefix
- If using no prefix, consider setting `add_imports: true` to avoid naming conflicts

### `docs`
Controls whether documentation comments from the original widget are included.
```yaml
rabbit:
  docs: true
```
- Default: `false`
- Includes parameter descriptions, examples, and other documentation
- Can significantly increase the size of generated files
- Useful when creating public packages or maintaining API documentation
- 
## Multiple Constructors

When a widget has multiple constructors, Rabbit generates a separate wrapper for each constructor. For example, with `ListView`:

```dart
// Original ListView has multiple constructors:
// ListView()
// ListView.builder()
// ListView.separated()
// ListView.custom()

// Rabbit will generate:
class $ListView extends StatelessWidget { ... }
class $ListViewBuilder extends StatelessWidget { ... }
class $ListViewSeparated extends StatelessWidget { ... }
class $ListViewCustom extends StatelessWidget { ... }
```

Each generated wrapper maintains the exact signature and functionality of its corresponding constructor.

## Maintaining Generated Code

If a Flutter update changes the API of wrapped widgets:

1. Backup your customized wrappers
2. Regenerate the wrappers with the latest Flutter version:
   ```bash
   dart run rabbit generate
   ```
3. Copy your customizations from the backup to the newly generated files

This ensures your wrappers stay in sync with Flutter's API changes while preserving your modifications.


## Common Use Cases

### Theming Widgets
Create consistent themed versions of widgets across your app:
```dart
class PrimaryButton extends StatelessWidget {
  // Generated from ElevatedButton
  // Customized with your theme's primary color
}
### Platform-Specific Variants
```dart
class AdaptiveContainer extends StatelessWidget {
  // Generated from Container
  // Customized with platform-specific styling
}
```

### Adding Default Behaviors
```dart
class LoadingButton extends StatelessWidget {
  // Generated from ElevatedButton
  // Adds loading state handling
}
```

## Best Practices

### When to Use Wrappers
- For consistent styling across your app
- When you need multiple variants of a widget
- To encapsulate complex behavior

### When Not to Use Wrappers
- For one-off customizations
- When composition would be clearer
- For very simple modifications

### Naming Conventions
- Use descriptive names that indicate the purpose
- Follow Flutter's widget naming conventions
- Consider grouping related wrappers
```