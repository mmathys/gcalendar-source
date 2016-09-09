.class public Lcom/google/android/calendar/timely/location/LocationClientListener;
.super Ljava/lang/Object;
.source "LocationClientListener.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/android/calendar/timely/location/LocationClientListener;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/location/LocationClientListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isUserRecoverableError(I)Z
    .locals 1

    .prologue
    .line 60
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/calendar/timely/location/LocationClientListener;->TAG:Ljava/lang/String;

    const-string v1, "LocationClient connected: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 25
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/calendar/timely/location/LocationClientListener;->TAG:Ljava/lang/String;

    const-string v1, "LocationClient failed to connect: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    .line 36
    invoke-direct {p0, v0}, Lcom/google/android/calendar/timely/location/LocationClientListener;->isUserRecoverableError(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    :cond_0
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/calendar/timely/location/LocationClientListener;->TAG:Ljava/lang/String;

    const-string v1, "LocationClient disconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 30
    return-void
.end method
