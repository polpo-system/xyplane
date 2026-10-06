# XYplane of ETH Oberon, for polpo

`XYplane`, the virtual screen of "Programming in Oberon" (Reiser and Wirth): a viewer of W x H
pixels in the desktop with `Open`, `Clear`, `Dot(x, y, mode)` (`draw`, `erase`), `IsDot(x, y)`
and `Key()` (the next key typed, 0X if none). Many small programs and games use it.

From ETH Oberon (OLR), converted to plain text. `test/XYTest.Mod`: `XYTest.Run` draws and
erases a dot; it needs the desktop (DISPLAY).

Install with portia: `portia.Install xyplane`. The license is GPL-3 (`LICENSE`); the code comes from ETH Oberon, whose license (`LICENSE.ETH`)
asks to keep its copyright notice and conditions, which `LICENSE.ETH` does.
