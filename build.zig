const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const exe = b.addExecutable(.{
        .name = "palette",
        .root_source_file = b.path("tools/palette.zig"),
        .target = target,
    });
    exe.linkLibC();
    b.installArtifact(exe);
}
