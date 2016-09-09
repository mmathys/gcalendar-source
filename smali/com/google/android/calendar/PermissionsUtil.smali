.class public Lcom/google/android/calendar/PermissionsUtil;
.super Ljava/lang/Object;
.source "PermissionsUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sGrantedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/android/calendar/PermissionsUtil;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/PermissionsUtil;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/calendar/PermissionsUtil;->sGrantedPermissions:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cachePermissionResult(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    if-nez p1, :cond_0

    .line 37
    sget-object v0, Lcom/google/android/calendar/PermissionsUtil;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " granted, adding to cache"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 38
    sget-object v0, Lcom/google/android/calendar/PermissionsUtil;->sGrantedPermissions:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/google/android/calendar/PermissionsUtil;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " denied"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 42
    sget-object v0, Lcom/google/android/calendar/PermissionsUtil;->sGrantedPermissions:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static canRequestPermissions()Z
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/google/android/calendar/MncUtil;->isMnc()Z

    move-result v0

    return v0
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-static {}, Lcom/google/android/calendar/MncUtil;->isMnc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    :goto_0
    return v0

    .line 26
    :cond_0
    sget-object v1, Lcom/google/android/calendar/PermissionsUtil;->sGrantedPermissions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    sget-object v1, Lcom/google/android/calendar/PermissionsUtil;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " found in cache"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 31
    invoke-static {p1, v0}, Lcom/google/android/calendar/PermissionsUtil;->cachePermissionResult(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static clearCachedPermissions()V
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/calendar/PermissionsUtil;->TAG:Ljava/lang/String;

    const-string v1, "Clearing cached permissions"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 48
    sget-object v0, Lcom/google/android/calendar/PermissionsUtil;->sGrantedPermissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 49
    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/google/android/calendar/MncUtil;->isMnc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 61
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Check canRequestPermissions()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shouldShowRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/google/android/calendar/MncUtil;->isMnc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
