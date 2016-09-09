.class public Lcom/android/calendar/timely/ExchangeUtil;
.super Ljava/lang/Object;
.source "ExchangeUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/calendar/timely/ExchangeUtil;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/ExchangeUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEasServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    const-string v1, "com.android.exchange.service.EasService"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    return-object v0
.end method

.method public static getEasServiceProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/service/EmailServiceProxy;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 32
    if-nez p1, :cond_0

    move-object v0, v1

    .line 40
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string v0, "com.google.android.gm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.google.android.gm.exchange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 36
    sget-object v2, Lcom/android/calendar/timely/ExchangeUtil;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected package name used: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 37
    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :cond_2
    invoke-static {p1}, Lcom/android/calendar/timely/ExchangeUtil;->createEasServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 40
    new-instance v0, Lcom/android/emailcommon/external/service/RemoteServiceProxy;

    invoke-direct {v0, p0, v1}, Lcom/android/emailcommon/external/service/RemoteServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static isEasServiceResolvable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 54
    invoke-static {p1}, Lcom/android/calendar/timely/ExchangeUtil;->createEasServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
