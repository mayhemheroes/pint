---
layout: default
parent: Checks
grand_parent: Documentation
---

# alerts/for

This check will warn if an alert rule uses invalid `for` value
or if it passes default value that can be removed to simplify rule.

## Configuration

This check doesn't have any configuration options.

## How to enable it

This check is enabled by default.

## How to disable it

You can disable this check globally by adding this config block:

```js
checks {
  disabled = ["alerts/for"]
}
```

You can also disable it for all rules inside given file by adding
a comment anywhere in that file. Example:

`# pint file/disable alerts/for`

Or you can disable it per rule by adding a comment to it. Example:

`# pint disable alerts/for`
