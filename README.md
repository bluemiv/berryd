# Components

## Button

### BdButton

![BdButton](./docs/BdButton.png)

```dart
BdButton(
  backgroundColor: BdBlack.color,
  onTap: () {
    print("clicked normal button");
  },
  child: Text(
    "button",
    style: TextStyle(color: Colors.white, fontSize: BdFontSize.md),
  ),
)
```

### BdPrimaryButton

![BdButton](./docs/BdPrimaryButton.png)

```dart
BdPrimaryButton(
  label: "primary button",
  onTap: () {
    print("clicked primary button!");
  },
)
```

### BdSecondaryButton

![BdButton](./docs/BdSecondaryButton.png)

```dart
BdSecondaryButton(
  label: "secondary button",
  onTap: () {
    print("clicked secondary button!");
  },
)
```

### BdLinkButton

![BdButton](./docs/BdLinkButton.png)

```dart
BdLinkButton(
  label: "link button",
  onTap: () {
    print("clicked link button!");
  },
)
```

### BdGradientButton

![BdButton](./docs/BdGradientButton.png)

```dart
BdGradientButton(
  child: Text(
    "Gradient button",
    style: TextStyle(color: Colors.white, fontSize: BdFontSize.md),
  ),
  onTap: () {
    print("clicked gradient button!");
  },
)
```