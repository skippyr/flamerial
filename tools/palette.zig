const std = @import("std");
const builtin = @import("builtin");
const is_win = builtin.os.tag == .windows;
const win = @cImport({
    @cInclude("Windows.h");
});

const WinApiError = error{
    SetConsoleOutputCP,
    GetStdHandle,
    GetConsoleMode,
    SetConsoleMode,
};

fn setUtf8Encoding() !void {
    if (is_win and win.SetConsoleOutputCP(win.CP_UTF8) == 0) {
        return WinApiError.SetConsoleOutputCP;
    }
}

fn enableAnsiParse() !void {
    if (!is_win) {
        return;
    }
    const h = win.GetStdHandle(win.STD_OUTPUT_HANDLE);
    var m: win.DWORD = undefined;
    if (h == win.INVALID_HANDLE_VALUE) {
        return WinApiError.GetStdHandle;
    } else if (win.GetConsoleMode(h, &m) == 0) {
        return WinApiError.GetConsoleMode;
    } else if (win.SetConsoleMode(h, m | win.ENABLE_VIRTUAL_TERMINAL_PROCESSING) == 0) {
        return WinApiError.SetConsoleMode;
    }
}

pub fn main() !void {
    try setUtf8Encoding();
    try enableAnsiParse();
    const out = std.io.getStdOut().writer();
    try out.print("\n   \x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[39m Flamerial \x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\n    \x1b[35m¦/: ", .{});
    for (1..9) |i| {
        try out.print("\x1b[48;5;{}m   ", .{i});
    }
    try out.print("\x1b[49m \x1b[35m:\\¦\n    ¦\\: ", .{});
    for (1..9) |i| {
        try out.print("\x1b[38;5;{}mFla\x1b[39m", .{i});
    }
    try out.print(" \x1b[35m:/¦\n   \x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[33m≥\x1b[31mv\x1b[39m\n\n", .{});
}
