//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (11)
//--------------------------------------------------------------------------------
pub const EVCF_HASSETTINGS = @as(u32, 1);
pub const EVCF_ENABLEBYDEFAULT = @as(u32, 2);
pub const EVCF_REMOVEFROMLIST = @as(u32, 4);
pub const EVCF_ENABLEBYDEFAULT_AUTO = @as(u32, 8);
pub const EVCF_DONTSHOWIFZERO = @as(u32, 16);
pub const EVCF_SETTINGSMODE = @as(u32, 32);
pub const EVCF_OUTOFDISKSPACE = @as(u32, 64);
pub const EVCF_USERCONSENTOBTAINED = @as(u32, 128);
pub const EVCF_SYSTEMAUTORUN = @as(u32, 256);
pub const EVCCBF_LASTNOTIFICATION = @as(u32, 1);
pub const STATEBITS_FLAT = @as(u32, 1);

//--------------------------------------------------------------------------------
// Section: Types (10)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows5.0'
const IID_IActiveDesktopP_Value = @import("../zig.zig").Guid.initString("52502ee0-ec80-11d0-89ab-00c04fc2972d");
pub const IID_IActiveDesktopP = &IID_IActiveDesktopP_Value;
pub const IActiveDesktopP = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        SetSafeMode: fn(
            self: *const IActiveDesktopP,
            dwFlags: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        EnsureUpdateHTML: fn(
            self: *const IActiveDesktopP,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetScheme: fn(
            self: *const IActiveDesktopP,
            pwszSchemeName: [*:0]const u16,
            dwFlags: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetScheme: fn(
            self: *const IActiveDesktopP,
            pwszSchemeName: [*:0]u16,
            pdwcchBuffer: *u32,
            dwFlags: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IActiveDesktopP_SetSafeMode(self: *const T, dwFlags: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IActiveDesktopP.VTable, self.vtable).SetSafeMode(@ptrCast(*const IActiveDesktopP, self), dwFlags);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IActiveDesktopP_EnsureUpdateHTML(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IActiveDesktopP.VTable, self.vtable).EnsureUpdateHTML(@ptrCast(*const IActiveDesktopP, self));
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IActiveDesktopP_SetScheme(self: *const T, pwszSchemeName: [*:0]const u16, dwFlags: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IActiveDesktopP.VTable, self.vtable).SetScheme(@ptrCast(*const IActiveDesktopP, self), pwszSchemeName, dwFlags);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IActiveDesktopP_GetScheme(self: *const T, pwszSchemeName: [*:0]u16, pdwcchBuffer: *u32, dwFlags: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IActiveDesktopP.VTable, self.vtable).GetScheme(@ptrCast(*const IActiveDesktopP, self), pwszSchemeName, pdwcchBuffer, dwFlags);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows5.0'
const IID_IADesktopP2_Value = @import("../zig.zig").Guid.initString("b22754e2-4574-11d1-9888-006097deacf9");
pub const IID_IADesktopP2 = &IID_IADesktopP2_Value;
pub const IADesktopP2 = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        ReReadWallpaper: fn(
            self: *const IADesktopP2,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetADObjectFlags: fn(
            self: *const IADesktopP2,
            pdwFlags: *u32,
            dwMask: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        UpdateAllDesktopSubscriptions: fn(
            self: *const IADesktopP2,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        MakeDynamicChanges: fn(
            self: *const IADesktopP2,
            pOleObj: *IOleObject,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IADesktopP2_ReReadWallpaper(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IADesktopP2.VTable, self.vtable).ReReadWallpaper(@ptrCast(*const IADesktopP2, self));
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IADesktopP2_GetADObjectFlags(self: *const T, pdwFlags: *u32, dwMask: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IADesktopP2.VTable, self.vtable).GetADObjectFlags(@ptrCast(*const IADesktopP2, self), pdwFlags, dwMask);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IADesktopP2_UpdateAllDesktopSubscriptions(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IADesktopP2.VTable, self.vtable).UpdateAllDesktopSubscriptions(@ptrCast(*const IADesktopP2, self));
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IADesktopP2_MakeDynamicChanges(self: *const T, pOleObj: *IOleObject) callconv(.Inline) HRESULT {
            return @ptrCast(*const IADesktopP2.VTable, self.vtable).MakeDynamicChanges(@ptrCast(*const IADesktopP2, self), pOleObj);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows5.0'
const IID_IEmptyVolumeCacheCallBack_Value = @import("../zig.zig").Guid.initString("6e793361-73c6-11d0-8469-00aa00442901");
pub const IID_IEmptyVolumeCacheCallBack = &IID_IEmptyVolumeCacheCallBack_Value;
pub const IEmptyVolumeCacheCallBack = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        ScanProgress: fn(
            self: *const IEmptyVolumeCacheCallBack,
            dwlSpaceUsed: u64,
            dwFlags: u32,
            pcwszStatus: [*:0]const u16,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        PurgeProgress: fn(
            self: *const IEmptyVolumeCacheCallBack,
            dwlSpaceFreed: u64,
            dwlSpaceToFree: u64,
            dwFlags: u32,
            pcwszStatus: [*:0]const u16,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IEmptyVolumeCacheCallBack_ScanProgress(self: *const T, dwlSpaceUsed: u64, dwFlags: u32, pcwszStatus: [*:0]const u16) callconv(.Inline) HRESULT {
            return @ptrCast(*const IEmptyVolumeCacheCallBack.VTable, self.vtable).ScanProgress(@ptrCast(*const IEmptyVolumeCacheCallBack, self), dwlSpaceUsed, dwFlags, pcwszStatus);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IEmptyVolumeCacheCallBack_PurgeProgress(self: *const T, dwlSpaceFreed: u64, dwlSpaceToFree: u64, dwFlags: u32, pcwszStatus: [*:0]const u16) callconv(.Inline) HRESULT {
            return @ptrCast(*const IEmptyVolumeCacheCallBack.VTable, self.vtable).PurgeProgress(@ptrCast(*const IEmptyVolumeCacheCallBack, self), dwlSpaceFreed, dwlSpaceToFree, dwFlags, pcwszStatus);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows5.0'
const IID_IEmptyVolumeCache_Value = @import("../zig.zig").Guid.initString("8fce5227-04da-11d1-a004-00805f8abe06");
pub const IID_IEmptyVolumeCache = &IID_IEmptyVolumeCache_Value;
pub const IEmptyVolumeCache = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        Initialize: fn(
            self: *const IEmptyVolumeCache,
            hkRegKey: HKEY,
            pcwszVolume: [*:0]const u16,
            ppwszDisplayName: *PWSTR,
            ppwszDescription: *PWSTR,
            pdwFlags: *u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetSpaceUsed: fn(
            self: *const IEmptyVolumeCache,
            pdwlSpaceUsed: *u64,
            picb: *IEmptyVolumeCacheCallBack,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Purge: fn(
            self: *const IEmptyVolumeCache,
            dwlSpaceToFree: u64,
            picb: *IEmptyVolumeCacheCallBack,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        ShowProperties: fn(
            self: *const IEmptyVolumeCache,
            hwnd: HWND,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Deactivate: fn(
            self: *const IEmptyVolumeCache,
            pdwFlags: *u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IEmptyVolumeCache_Initialize(self: *const T, hkRegKey: HKEY, pcwszVolume: [*:0]const u16, ppwszDisplayName: *PWSTR, ppwszDescription: *PWSTR, pdwFlags: *u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IEmptyVolumeCache.VTable, self.vtable).Initialize(@ptrCast(*const IEmptyVolumeCache, self), hkRegKey, pcwszVolume, ppwszDisplayName, ppwszDescription, pdwFlags);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IEmptyVolumeCache_GetSpaceUsed(self: *const T, pdwlSpaceUsed: *u64, picb: *IEmptyVolumeCacheCallBack) callconv(.Inline) HRESULT {
            return @ptrCast(*const IEmptyVolumeCache.VTable, self.vtable).GetSpaceUsed(@ptrCast(*const IEmptyVolumeCache, self), pdwlSpaceUsed, picb);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IEmptyVolumeCache_Purge(self: *const T, dwlSpaceToFree: u64, picb: *IEmptyVolumeCacheCallBack) callconv(.Inline) HRESULT {
            return @ptrCast(*const IEmptyVolumeCache.VTable, self.vtable).Purge(@ptrCast(*const IEmptyVolumeCache, self), dwlSpaceToFree, picb);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IEmptyVolumeCache_ShowProperties(self: *const T, hwnd: HWND) callconv(.Inline) HRESULT {
            return @ptrCast(*const IEmptyVolumeCache.VTable, self.vtable).ShowProperties(@ptrCast(*const IEmptyVolumeCache, self), hwnd);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IEmptyVolumeCache_Deactivate(self: *const T, pdwFlags: *u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IEmptyVolumeCache.VTable, self.vtable).Deactivate(@ptrCast(*const IEmptyVolumeCache, self), pdwFlags);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows5.0'
const IID_IEmptyVolumeCache2_Value = @import("../zig.zig").Guid.initString("02b7e3ba-4db3-11d2-b2d9-00c04f8eec8c");
pub const IID_IEmptyVolumeCache2 = &IID_IEmptyVolumeCache2_Value;
pub const IEmptyVolumeCache2 = extern struct {
    pub const VTable = extern struct {
        base: IEmptyVolumeCache.VTable,
        InitializeEx: fn(
            self: *const IEmptyVolumeCache2,
            hkRegKey: HKEY,
            pcwszVolume: [*:0]const u16,
            pcwszKeyName: [*:0]const u16,
            ppwszDisplayName: *PWSTR,
            ppwszDescription: *PWSTR,
            ppwszBtnText: *PWSTR,
            pdwFlags: *u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IEmptyVolumeCache.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IEmptyVolumeCache2_InitializeEx(self: *const T, hkRegKey: HKEY, pcwszVolume: [*:0]const u16, pcwszKeyName: [*:0]const u16, ppwszDisplayName: *PWSTR, ppwszDescription: *PWSTR, ppwszBtnText: *PWSTR, pdwFlags: *u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IEmptyVolumeCache2.VTable, self.vtable).InitializeEx(@ptrCast(*const IEmptyVolumeCache2, self), hkRegKey, pcwszVolume, pcwszKeyName, ppwszDisplayName, ppwszDescription, ppwszBtnText, pdwFlags);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows5.1.2600'
const IID_IReconcileInitiator_Value = @import("../zig.zig").Guid.initString("99180161-da16-101a-935c-444553540000");
pub const IID_IReconcileInitiator = &IID_IReconcileInitiator_Value;
pub const IReconcileInitiator = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        SetAbortCallback: fn(
            self: *const IReconcileInitiator,
            punkForAbort: ?*IUnknown,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetProgressFeedback: fn(
            self: *const IReconcileInitiator,
            ulProgress: u32,
            ulProgressMax: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IReconcileInitiator_SetAbortCallback(self: *const T, punkForAbort: ?*IUnknown) callconv(.Inline) HRESULT {
            return @ptrCast(*const IReconcileInitiator.VTable, self.vtable).SetAbortCallback(@ptrCast(*const IReconcileInitiator, self), punkForAbort);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IReconcileInitiator_SetProgressFeedback(self: *const T, ulProgress: u32, ulProgressMax: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IReconcileInitiator.VTable, self.vtable).SetProgressFeedback(@ptrCast(*const IReconcileInitiator, self), ulProgress, ulProgressMax);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

pub const _reconcilef = extern enum(i32) {
    RECONCILEF_MAYBOTHERUSER = 1,
    RECONCILEF_FEEDBACKWINDOWVALID = 2,
    RECONCILEF_NORESIDUESOK = 4,
    RECONCILEF_OMITSELFRESIDUE = 8,
    RECONCILEF_RESUMERECONCILIATION = 16,
    RECONCILEF_YOUMAYDOTHEUPDATES = 32,
    RECONCILEF_ONLYYOUWERECHANGED = 64,
    ALL_RECONCILE_FLAGS = 127,
};
pub const RECONCILEF_MAYBOTHERUSER = _reconcilef.RECONCILEF_MAYBOTHERUSER;
pub const RECONCILEF_FEEDBACKWINDOWVALID = _reconcilef.RECONCILEF_FEEDBACKWINDOWVALID;
pub const RECONCILEF_NORESIDUESOK = _reconcilef.RECONCILEF_NORESIDUESOK;
pub const RECONCILEF_OMITSELFRESIDUE = _reconcilef.RECONCILEF_OMITSELFRESIDUE;
pub const RECONCILEF_RESUMERECONCILIATION = _reconcilef.RECONCILEF_RESUMERECONCILIATION;
pub const RECONCILEF_YOUMAYDOTHEUPDATES = _reconcilef.RECONCILEF_YOUMAYDOTHEUPDATES;
pub const RECONCILEF_ONLYYOUWERECHANGED = _reconcilef.RECONCILEF_ONLYYOUWERECHANGED;
pub const ALL_RECONCILE_FLAGS = _reconcilef.ALL_RECONCILE_FLAGS;

// TODO: this type is limited to platform 'windows5.1.2600'
const IID_IReconcilableObject_Value = @import("../zig.zig").Guid.initString("99180162-da16-101a-935c-444553540000");
pub const IID_IReconcilableObject = &IID_IReconcilableObject_Value;
pub const IReconcilableObject = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        Reconcile: fn(
            self: *const IReconcilableObject,
            pInitiator: *IReconcileInitiator,
            dwFlags: u32,
            hwndOwner: HWND,
            hwndProgressFeedback: HWND,
            ulcInput: u32,
            rgpmkOtherInput: [*]*IMoniker,
            plOutIndex: *i32,
            pstgNewResidues: *IStorage,
            pvReserved: *c_void,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetProgressFeedbackMaxEstimate: fn(
            self: *const IReconcilableObject,
            pulProgressMax: *u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IReconcilableObject_Reconcile(self: *const T, pInitiator: *IReconcileInitiator, dwFlags: u32, hwndOwner: HWND, hwndProgressFeedback: HWND, ulcInput: u32, rgpmkOtherInput: [*]*IMoniker, plOutIndex: *i32, pstgNewResidues: *IStorage, pvReserved: *c_void) callconv(.Inline) HRESULT {
            return @ptrCast(*const IReconcilableObject.VTable, self.vtable).Reconcile(@ptrCast(*const IReconcilableObject, self), pInitiator, dwFlags, hwndOwner, hwndProgressFeedback, ulcInput, rgpmkOtherInput, plOutIndex, pstgNewResidues, pvReserved);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IReconcilableObject_GetProgressFeedbackMaxEstimate(self: *const T, pulProgressMax: *u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IReconcilableObject.VTable, self.vtable).GetProgressFeedbackMaxEstimate(@ptrCast(*const IReconcilableObject, self), pulProgressMax);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IBriefcaseInitiator_Value = @import("../zig.zig").Guid.initString("99180164-da16-101a-935c-444553540000");
pub const IID_IBriefcaseInitiator = &IID_IBriefcaseInitiator_Value;
pub const IBriefcaseInitiator = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        IsMonikerInBriefcase: fn(
            self: *const IBriefcaseInitiator,
            pmk: *IMoniker,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IBriefcaseInitiator_IsMonikerInBriefcase(self: *const T, pmk: *IMoniker) callconv(.Inline) HRESULT {
            return @ptrCast(*const IBriefcaseInitiator.VTable, self.vtable).IsMonikerInBriefcase(@ptrCast(*const IBriefcaseInitiator, self), pmk);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

pub const _ColumnSortOrder = extern enum(i32) {
    Ascending = 0,
    Descending = 1,
};
pub const SortOrder_Ascending = _ColumnSortOrder.Ascending;
pub const SortOrder_Descending = _ColumnSortOrder.Descending;


//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {
    },
    .wide => struct {
    },
    .unspecified => if (@import("builtin").is_test) struct {
    } else struct {
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (8)
//--------------------------------------------------------------------------------
const HKEY = @import("../system/registry.zig").HKEY;
const PWSTR = @import("../system/system_services.zig").PWSTR;
const IUnknown = @import("../system/com.zig").IUnknown;
const HRESULT = @import("../system/com.zig").HRESULT;
const IMoniker = @import("../system/com.zig").IMoniker;
const IStorage = @import("../storage/structured_storage.zig").IStorage;
const HWND = @import("../ui/windows_and_messaging.zig").HWND;
const IOleObject = @import("../system/com.zig").IOleObject;

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