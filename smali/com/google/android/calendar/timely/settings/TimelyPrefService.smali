.class public Lcom/google/android/calendar/timely/settings/TimelyPrefService;
.super Lcom/android/calendar/prefs/PrefServiceImpl;
.source "TimelyPrefService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefReadForAccountAsyncTask;,
        Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefData;
    }
.end annotation


# static fields
.field private static final COLOR_PREF_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountSelector:Lcom/android/calendar/timely/PrimaryAccountSelector;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const-class v0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "accountName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "holidayscolor"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->COLOR_PREF_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/calendar/prefs/PrefServiceImpl;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance v0, Lcom/google/android/calendar/timely/settings/TimelyPrefService$1;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/calendar/timely/settings/TimelyPrefService$1;-><init>(Lcom/google/android/calendar/timely/settings/TimelyPrefService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/timely/settings/TimelyPrefService;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->readPrefAsync()V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->COLOR_PREF_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/timely/settings/TimelyPrefService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/calendar/timely/settings/TimelyPrefService;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mHolidaysColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/calendar/timely/settings/TimelyPrefService;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    return-object v0
.end method

.method private readPrefAsync()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mAccountSelector:Lcom/android/calendar/timely/PrimaryAccountSelector;

    invoke-virtual {v0}, Lcom/android/calendar/timely/PrimaryAccountSelector;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 151
    if-nez v0, :cond_0

    .line 152
    sget-object v0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->TAG:Ljava/lang/String;

    const-string v1, "Primary account is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    new-instance v1, Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefReadForAccountAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefReadForAccountAsyncTask;-><init>(Lcom/google/android/calendar/timely/settings/TimelyPrefService;Lcom/google/android/calendar/timely/settings/TimelyPrefService$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/timely/settings/TimelyPrefService$PrefReadForAccountAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/calendar/timely/PrimaryAccountSelector;)V
    .locals 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 106
    iput-object p2, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mAccountSelector:Lcom/android/calendar/timely/PrimaryAccountSelector;

    .line 110
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mHolidaysColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    const v1, -0xbd296e

    invoke-static {v1}, Lcom/android/calendar/Utils;->intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->readPrefAsync()V

    .line 116
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->ACCOUNT_SETTINGS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 125
    return-void
.end method

.method public setHolidaysColor(Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    if-nez p1, :cond_0

    .line 130
    sget-object v0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->TAG:Ljava/lang/String;

    const-string v1, "Won\'t set null color"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 147
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->mAccountSelector:Lcom/android/calendar/timely/PrimaryAccountSelector;

    invoke-virtual {v0}, Lcom/android/calendar/timely/PrimaryAccountSelector;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 134
    if-nez v0, :cond_1

    .line 135
    sget-object v0, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->TAG:Ljava/lang/String;

    const-string v1, "Primary account is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 138
    :cond_1
    new-instance v1, Lcom/google/android/calendar/timely/settings/TimelyPrefService$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/calendar/timely/settings/TimelyPrefService$2;-><init>(Lcom/google/android/calendar/timely/settings/TimelyPrefService;Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;)V

    new-array v0, v2, [Ljava/lang/Void;

    .line 145
    invoke-virtual {v1, v0}, Lcom/google/android/calendar/timely/settings/TimelyPrefService$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    invoke-super {p0, p1}, Lcom/android/calendar/prefs/PrefServiceImpl;->setHolidaysColor(Lcom/google/calendar/v2/client/service/api/common/Color;)V

    goto :goto_0
.end method
