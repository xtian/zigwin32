//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (3)
//--------------------------------------------------------------------------------
pub const HARDWARE_COUNTER_TYPE = extern enum(i32) {
    PMCCounter = 0,
    MaxHardwareCounterType = 1,
};
pub const PMCCounter = HARDWARE_COUNTER_TYPE.PMCCounter;
pub const MaxHardwareCounterType = HARDWARE_COUNTER_TYPE.MaxHardwareCounterType;

pub const HARDWARE_COUNTER_DATA = extern struct {
    Type: HARDWARE_COUNTER_TYPE,
    Reserved: u32,
    Value: u64,
};

pub const PERFORMANCE_DATA = extern struct {
    Size: u16,
    Version: u8,
    HwCountersCount: u8,
    ContextSwitchCount: u32,
    WaitReasonBitMap: u64,
    CycleTime: u64,
    RetryCount: u32,
    Reserved: u32,
    HwCounters: [16]HARDWARE_COUNTER_DATA,
};


//--------------------------------------------------------------------------------
// Section: Functions (4)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows6.1'
pub extern "KERNEL32" fn EnableThreadProfiling(
    ThreadHandle: HANDLE,
    Flags: u32,
    HardwareCounters: u64,
    PerformanceDataHandle: *HANDLE,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows6.1'
pub extern "KERNEL32" fn DisableThreadProfiling(
    PerformanceDataHandle: HANDLE,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows6.1'
pub extern "KERNEL32" fn QueryThreadProfiling(
    ThreadHandle: HANDLE,
    Enabled: *u8,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows6.1'
pub extern "KERNEL32" fn ReadThreadProfilingData(
    PerformanceDataHandle: HANDLE,
    Flags: u32,
    PerformanceData: *PERFORMANCE_DATA,
) callconv(@import("std").os.windows.WINAPI) u32;


//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
pub usingnamespace switch (@import("../../zig.zig").unicode_mode) {
    .ansi => struct {
    },
    .wide => struct {
    },
    .unspecified => if (@import("builtin").is_test) struct {
    } else struct {
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (1)
//--------------------------------------------------------------------------------
const HANDLE = @import("../../system/system_services.zig").HANDLE;

test {
    @setEvalBranchQuota(
        @import("std").meta.declarations(@This()).len * 3
    );

    // reference all the pub declarations
    if (!@import("std").builtin.is_test) return;
    inline for (@import("std").meta.declarations(@This())) |decl| {
        if (decl.is_pub) {
            _ = decl;
        }
    }
}
