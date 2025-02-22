//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (4)
//--------------------------------------------------------------------------------
pub const LIST_MODULES_DEFAULT = @as(u32, 0);
pub const LIST_MODULES_32BIT = @as(u32, 1);
pub const LIST_MODULES_64BIT = @as(u32, 2);
pub const PSAPI_VERSION = @as(u32, 2);

//--------------------------------------------------------------------------------
// Section: Types (13)
//--------------------------------------------------------------------------------
pub const MODULEINFO = extern struct {
    lpBaseOfDll: *c_void,
    SizeOfImage: u32,
    EntryPoint: *c_void,
};

pub const PSAPI_WORKING_SET_BLOCK = extern union {
    Flags: usize,
    Anonymous: extern struct {
        _bitfield: usize,
    },
};

pub const PSAPI_WORKING_SET_INFORMATION = extern struct {
    NumberOfEntries: usize,
    WorkingSetInfo: [1]PSAPI_WORKING_SET_BLOCK,
};

pub const PSAPI_WORKING_SET_EX_BLOCK = extern union {
    Flags: usize,
    Anonymous: extern union {
        Anonymous: extern struct {
            _bitfield: usize,
        },
        Invalid: extern struct {
            _bitfield: usize,
        },
    },
};

pub const PSAPI_WORKING_SET_EX_INFORMATION = extern struct {
    VirtualAddress: *c_void,
    VirtualAttributes: PSAPI_WORKING_SET_EX_BLOCK,
};

pub const PSAPI_WS_WATCH_INFORMATION = extern struct {
    FaultingPc: *c_void,
    FaultingVa: *c_void,
};

pub const PSAPI_WS_WATCH_INFORMATION_EX = extern struct {
    BasicInfo: PSAPI_WS_WATCH_INFORMATION,
    FaultingThreadId: usize,
    Flags: usize,
};

pub const PROCESS_MEMORY_COUNTERS = extern struct {
    cb: u32,
    PageFaultCount: u32,
    PeakWorkingSetSize: usize,
    WorkingSetSize: usize,
    QuotaPeakPagedPoolUsage: usize,
    QuotaPagedPoolUsage: usize,
    QuotaPeakNonPagedPoolUsage: usize,
    QuotaNonPagedPoolUsage: usize,
    PagefileUsage: usize,
    PeakPagefileUsage: usize,
};

pub const PROCESS_MEMORY_COUNTERS_EX = extern struct {
    cb: u32,
    PageFaultCount: u32,
    PeakWorkingSetSize: usize,
    WorkingSetSize: usize,
    QuotaPeakPagedPoolUsage: usize,
    QuotaPagedPoolUsage: usize,
    QuotaPeakNonPagedPoolUsage: usize,
    QuotaNonPagedPoolUsage: usize,
    PagefileUsage: usize,
    PeakPagefileUsage: usize,
    PrivateUsage: usize,
};

pub const PERFORMANCE_INFORMATION = extern struct {
    cb: u32,
    CommitTotal: usize,
    CommitLimit: usize,
    CommitPeak: usize,
    PhysicalTotal: usize,
    PhysicalAvailable: usize,
    SystemCache: usize,
    KernelTotal: usize,
    KernelPaged: usize,
    KernelNonpaged: usize,
    PageSize: usize,
    HandleCount: u32,
    ProcessCount: u32,
    ThreadCount: u32,
};

pub const ENUM_PAGE_FILE_INFORMATION = extern struct {
    cb: u32,
    Reserved: u32,
    TotalSize: usize,
    TotalInUse: usize,
    PeakUsage: usize,
};

pub const PENUM_PAGE_FILE_CALLBACKW = fn(
    pContext: *c_void,
    pPageFileInfo: *ENUM_PAGE_FILE_INFORMATION,
    lpFilename: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub const PENUM_PAGE_FILE_CALLBACKA = fn(
    pContext: *c_void,
    pPageFileInfo: *ENUM_PAGE_FILE_INFORMATION,
    lpFilename: [*:0]const u8,
) callconv(@import("std").os.windows.WINAPI) BOOL;


//--------------------------------------------------------------------------------
// Section: Functions (27)
//--------------------------------------------------------------------------------
pub extern "KERNEL32" fn K32EnumProcesses(
    // TODO: what to do with BytesParamIndex 1?
    lpidProcess: *u32,
    cb: u32,
    lpcbNeeded: *u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn K32EnumProcessModules(
    hProcess: HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    lphModule: *HINSTANCE,
    cb: u32,
    lpcbNeeded: *u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn K32EnumProcessModulesEx(
    hProcess: HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    lphModule: *HINSTANCE,
    cb: u32,
    lpcbNeeded: *u32,
    dwFilterFlag: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn K32GetModuleBaseNameA(
    hProcess: HANDLE,
    hModule: HINSTANCE,
    lpBaseName: [*:0]u8,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "KERNEL32" fn K32GetModuleBaseNameW(
    hProcess: HANDLE,
    hModule: HINSTANCE,
    lpBaseName: [*:0]u16,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "KERNEL32" fn K32GetModuleFileNameExA(
    hProcess: HANDLE,
    hModule: HINSTANCE,
    lpFilename: [*:0]u8,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "KERNEL32" fn K32GetModuleFileNameExW(
    hProcess: HANDLE,
    hModule: HINSTANCE,
    lpFilename: [*:0]u16,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "KERNEL32" fn K32GetModuleInformation(
    hProcess: HANDLE,
    hModule: HINSTANCE,
    lpmodinfo: *MODULEINFO,
    cb: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn K32EmptyWorkingSet(
    hProcess: HANDLE,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn K32QueryWorkingSet(
    hProcess: HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    pv: *c_void,
    cb: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn K32QueryWorkingSetEx(
    hProcess: HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    pv: *c_void,
    cb: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn K32InitializeProcessForWsWatch(
    hProcess: HANDLE,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn K32GetWsChanges(
    hProcess: HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    lpWatchInfo: *PSAPI_WS_WATCH_INFORMATION,
    cb: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn K32GetWsChangesEx(
    hProcess: HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    lpWatchInfoEx: *PSAPI_WS_WATCH_INFORMATION_EX,
    cb: *u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn K32GetMappedFileNameW(
    hProcess: HANDLE,
    lpv: *c_void,
    lpFilename: [*:0]u16,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "KERNEL32" fn K32GetMappedFileNameA(
    hProcess: HANDLE,
    lpv: *c_void,
    lpFilename: [*:0]u8,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "KERNEL32" fn K32EnumDeviceDrivers(
    // TODO: what to do with BytesParamIndex 1?
    lpImageBase: **c_void,
    cb: u32,
    lpcbNeeded: *u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn K32GetDeviceDriverBaseNameA(
    ImageBase: *c_void,
    lpFilename: [*:0]u8,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "KERNEL32" fn K32GetDeviceDriverBaseNameW(
    ImageBase: *c_void,
    lpBaseName: [*:0]u16,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "KERNEL32" fn K32GetDeviceDriverFileNameA(
    ImageBase: *c_void,
    lpFilename: [*:0]u8,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "KERNEL32" fn K32GetDeviceDriverFileNameW(
    ImageBase: *c_void,
    lpFilename: [*:0]u16,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "KERNEL32" fn K32GetProcessMemoryInfo(
    Process: HANDLE,
    ppsmemCounters: *PROCESS_MEMORY_COUNTERS,
    cb: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn K32GetPerformanceInfo(
    pPerformanceInformation: *PERFORMANCE_INFORMATION,
    cb: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn K32EnumPageFilesW(
    pCallBackRoutine: PENUM_PAGE_FILE_CALLBACKW,
    pContext: *c_void,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn K32EnumPageFilesA(
    pCallBackRoutine: PENUM_PAGE_FILE_CALLBACKA,
    pContext: *c_void,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn K32GetProcessImageFileNameA(
    hProcess: HANDLE,
    lpImageFileName: [*:0]u8,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "KERNEL32" fn K32GetProcessImageFileNameW(
    hProcess: HANDLE,
    lpImageFileName: [*:0]u16,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;


//--------------------------------------------------------------------------------
// Section: Unicode Aliases (8)
//--------------------------------------------------------------------------------
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {
        pub const PENUM_PAGE_FILE_CALLBACK = PENUM_PAGE_FILE_CALLBACKA;
        pub const K32GetModuleBaseName = K32GetModuleBaseNameA;
        pub const K32GetModuleFileNameEx = K32GetModuleFileNameExA;
        pub const K32GetMappedFileName = K32GetMappedFileNameA;
        pub const K32GetDeviceDriverBaseName = K32GetDeviceDriverBaseNameA;
        pub const K32GetDeviceDriverFileName = K32GetDeviceDriverFileNameA;
        pub const K32EnumPageFiles = K32EnumPageFilesA;
        pub const K32GetProcessImageFileName = K32GetProcessImageFileNameA;
    },
    .wide => struct {
        pub const PENUM_PAGE_FILE_CALLBACK = PENUM_PAGE_FILE_CALLBACKW;
        pub const K32GetModuleBaseName = K32GetModuleBaseNameW;
        pub const K32GetModuleFileNameEx = K32GetModuleFileNameExW;
        pub const K32GetMappedFileName = K32GetMappedFileNameW;
        pub const K32GetDeviceDriverBaseName = K32GetDeviceDriverBaseNameW;
        pub const K32GetDeviceDriverFileName = K32GetDeviceDriverFileNameW;
        pub const K32EnumPageFiles = K32EnumPageFilesW;
        pub const K32GetProcessImageFileName = K32GetProcessImageFileNameW;
    },
    .unspecified => if (@import("builtin").is_test) struct {
        pub const PENUM_PAGE_FILE_CALLBACK = *opaque{};
        pub const K32GetModuleBaseName = *opaque{};
        pub const K32GetModuleFileNameEx = *opaque{};
        pub const K32GetMappedFileName = *opaque{};
        pub const K32GetDeviceDriverBaseName = *opaque{};
        pub const K32GetDeviceDriverFileName = *opaque{};
        pub const K32EnumPageFiles = *opaque{};
        pub const K32GetProcessImageFileName = *opaque{};
    } else struct {
        pub const PENUM_PAGE_FILE_CALLBACK = @compileError("'PENUM_PAGE_FILE_CALLBACK' requires that UNICODE be set to true or false in the root module");
        pub const K32GetModuleBaseName = @compileError("'K32GetModuleBaseName' requires that UNICODE be set to true or false in the root module");
        pub const K32GetModuleFileNameEx = @compileError("'K32GetModuleFileNameEx' requires that UNICODE be set to true or false in the root module");
        pub const K32GetMappedFileName = @compileError("'K32GetMappedFileName' requires that UNICODE be set to true or false in the root module");
        pub const K32GetDeviceDriverBaseName = @compileError("'K32GetDeviceDriverBaseName' requires that UNICODE be set to true or false in the root module");
        pub const K32GetDeviceDriverFileName = @compileError("'K32GetDeviceDriverFileName' requires that UNICODE be set to true or false in the root module");
        pub const K32EnumPageFiles = @compileError("'K32EnumPageFiles' requires that UNICODE be set to true or false in the root module");
        pub const K32GetProcessImageFileName = @compileError("'K32GetProcessImageFileName' requires that UNICODE be set to true or false in the root module");
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (5)
//--------------------------------------------------------------------------------
const PWSTR = @import("../system/system_services.zig").PWSTR;
const PSTR = @import("../system/system_services.zig").PSTR;
const HANDLE = @import("../system/system_services.zig").HANDLE;
const BOOL = @import("../system/system_services.zig").BOOL;
const HINSTANCE = @import("../system/system_services.zig").HINSTANCE;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    if (@hasDecl(@This(), "PENUM_PAGE_FILE_CALLBACKW")) { _ = PENUM_PAGE_FILE_CALLBACKW; }
    if (@hasDecl(@This(), "PENUM_PAGE_FILE_CALLBACKA")) { _ = PENUM_PAGE_FILE_CALLBACKA; }

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
