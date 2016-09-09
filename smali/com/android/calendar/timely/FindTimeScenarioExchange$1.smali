.class Lcom/android/calendar/timely/FindTimeScenarioExchange$1;
.super Ljava/lang/Object;
.source "FindTimeScenarioExchange.java"

# interfaces
.implements Lcom/android/calendar/timely/FindTimeScenarioExchange$ProxyProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/FindTimeScenarioExchange;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/android/emailcommon/service/EmailServiceProxy;
    .locals 1

    .prologue
    .line 60
    .line 61
    invoke-static {p1}, Lcom/android/calendar/timely/FindTimeUtil;->getEasServiceSupportPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {p1, v0}, Lcom/android/calendar/timely/ExchangeUtil;->getEasServiceProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v0

    return-object v0
.end method
