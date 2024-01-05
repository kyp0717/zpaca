const std = @import("std");
const sloop = @import("shell_loop.zig.zig");

pub fn main() !u8 {
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();
    try stdout.print("*** Hello, I am a real shell! ***\n", .{});
    try sloop.shellLoop(stdin, stdout);

    return 0;
}
