.class final Lcom/android/calendar/timely/FindTimeScenarioExchange;
.super Ljava/lang/Object;
.source "FindTimeScenarioExchange.java"

# interfaces
.implements Lcom/android/calendar/timely/FindTimeScenario;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/FindTimeScenarioExchange$ProxyProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sExchangeFindTimeSupportMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mProxyProvider:Lcom/android/calendar/timely/FindTimeScenarioExchange$ProxyProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/calendar/timely/FindTimeScenarioExchange;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/FindTimeScenarioExchange;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/FindTimeScenarioExchange;->sExchangeFindTimeSupportMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/android/calendar/timely/FindTimeScenarioExchange$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/FindTimeScenarioExchange$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeScenarioExchange;-><init>(Lcom/android/calendar/timely/FindTimeScenarioExchange$ProxyProvider;)V

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/android/calendar/timely/FindTimeScenarioExchange$ProxyProvider;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeScenarioExchange;->mProxyProvider:Lcom/android/calendar/timely/FindTimeScenarioExchange$ProxyProvider;

    .line 51
    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/content/Context;Landroid/accounts/Account;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 68
    const-string v1, "com.google.android.gm.exchange"

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeScenarioExchange;->mProxyProvider:Lcom/android/calendar/timely/FindTimeScenarioExchange$ProxyProvider;

    invoke-interface {v1, p1}, Lcom/android/calendar/timely/FindTimeScenarioExchange$ProxyProvider;->get(Landroid/content/Context;)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/calendar/timely/FindTimeUtil;->getEasServiceSupportPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    sget-object v2, Lcom/android/calendar/timely/FindTimeScenarioExchange;->sExchangeFindTimeSupportMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    sget-object v0, Lcom/android/calendar/timely/FindTimeScenarioExchange;->sExchangeFindTimeSupportMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 82
    :cond_2
    :try_start_0
    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/emailcommon/service/EmailServiceProxy;->getProtocolVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_3

    .line 84
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 85
    const-wide/high16 v4, 0x402c000000000000L    # 14.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    .line 93
    :cond_3
    :goto_1
    sget-object v1, Lcom/android/calendar/timely/FindTimeScenarioExchange;->sExchangeFindTimeSupportMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    :goto_2
    sget-object v2, Lcom/android/calendar/timely/FindTimeScenarioExchange;->TAG:Ljava/lang/String;

    const-string v3, "getProtocolVersion failed"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 88
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public isEnabled(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-static {p2}, Lcom/android/calendar/timely/FindTimeUtil;->getAccount(Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Landroid/accounts/Account;

    move-result-object v1

    .line 100
    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/calendar/timely/FindTimeScenarioExchange;->isEnabled(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/google/calendar/v2/client/service/api/calendars/Calendar;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
