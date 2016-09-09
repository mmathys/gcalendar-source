.class public abstract Lcom/android/emailcommon/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/Device$DeviceImpl;
    }
.end annotation


# static fields
.field private static final DEVICE_ID_PATTERN:Ljava/util/regex/Pattern;

.field private static sDeviceId:Ljava/lang/String;

.field private static sSingleton:Lcom/android/emailcommon/Device;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    sput-object v1, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/android/emailcommon/Device$DeviceImpl;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/Device$DeviceImpl;-><init>(Lcom/android/emailcommon/Device$1;)V

    sput-object v0, Lcom/android/emailcommon/Device;->sSingleton:Lcom/android/emailcommon/Device;

    .line 45
    const-string v0, "[a-zA-Z0-9]{1,32}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/Device;->DEVICE_ID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized generateDeviceId(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const-class v1, Lcom/android/emailcommon/Device;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 87
    :cond_0
    sget-object v0, Lcom/android/emailcommon/Device;->sSingleton:Lcom/android/emailcommon/Device;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/Device;->getDeviceIdInternal(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;

    .line 90
    :cond_1
    sget-object v0, Lcom/android/emailcommon/Device;->sDeviceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/Device;->generateDeviceId(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceIdInternal(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getDeviceId requires a Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/Device;->getDeviceIdFromStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    :cond_1
    :goto_0
    return-object v0

    .line 122
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/Device;->getConsistentDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_4

    .line 126
    const-string v1, "androidc"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/emailcommon/Device;->storeDeviceIdToStorage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, p2

    .line 131
    goto :goto_1
.end method


# virtual methods
.method protected abstract getConsistentDeviceId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method protected abstract getDeviceIdFromStorage(Landroid/content/Context;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract storeDeviceIdToStorage(Landroid/content/Context;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
