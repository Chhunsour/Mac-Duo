<div align="center">

# Mac Duo

**Bring the dynamic iPhone Duo tilt and perspective effect to your MacBook.**

https://github.com/user-attachments/assets/3ea3b098-c6d2-4398-8f3a-e9087bbb33f2

Close the lid and watch your screen content tilt, blur, and fade in real-time as it moves.  
Mac Duo lives right in your menu bar with quick controls and smooth performance.


</div>

<hr>

### Features

- **Metal GPU rendering:** Hardware-accelerated rendering to apply perspective, blur, and dimming seamlessly as the MacBook lid closes.
- **Live screen content:** Uses ScreenCaptureKit to stream and transform your display content in real-time.
- **Customizable perspective & lean:** Fine-tune perspective convergence and lean-back angle to match your viewing angle.
- **Native & lightweight:** Built with Swift and SwiftUI for macOS 14+, running quietly in the menu bar.

---

## Getting Started

### Requirements

- macOS 14.0 or later
- MacBook with a compatible lid angle sensor
- Screen Recording permission (required by macOS ScreenCaptureKit to render the live effect)

### Installation

Clone the repository and build the app locally:

```sh
git clone https://github.com/Chhunsour/Mac-Duo.git
cd Mac-Duo
./build.sh --run
```

The script builds `build/Mac Duo.app` and launches it in your menu bar.

### Launch at Login

You can enable **Launch at login** directly from the Mac Duo menu bar settings to have it start automatically with macOS.

---

## Limitations

- Only MacBook models equipped with a compatible built-in lid angle sensor are supported.
- The effect applies to the built-in MacBook display.
- macOS stops display rendering when entering sleep mode upon full lid closure.

---

## Author & License

Created and maintained by [Chhunsour](https://github.com/Chhunsour).

Licensed under the [Apache License 2.0](LICENSE). Copyright 2026 chhunsour.
