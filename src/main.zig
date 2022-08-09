const std = @import("std");
const utils = @import("utils.zig");
const lz4 = @import("translated/liblz4.zig");
const mtar = @import("translated/libmicrotar.zig");
const compiler = @import("compiler.zig");

// Allocator
var gpa = std.heap.GeneralPurposeAllocator(.{}){};
const allocator = gpa.allocator();

const example_root = "/home/theseyan/Zig/bkg/example";

pub fn main() anyerror!void {

    try compiler.buildArchive(allocator, example_root);

}