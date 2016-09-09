.class public Lcom/google/android/calendar/loggers/CalendarClearcutLogger;
.super Ljava/lang/Object;
.source "CalendarClearcutLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;


# instance fields
.field private mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/clearcut/ClearcutLogger;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->mClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/calendar/loggers/CalendarClearcutLogger;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->sCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->sCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    .line 82
    :cond_0
    sget-object v0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->sCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    return-object v0
.end method

.method private isAccountValid(Landroid/accounts/Account;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 93
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    const-string v1, "com.google"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v2

    .line 102
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 103
    invoke-virtual {p1, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->mClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->mClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->logAsync(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0
.end method

.method public logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;Landroid/accounts/Account;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p2}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->isAccountValid(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->setUploadAccountName(Ljava/lang/String;)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;)V

    goto :goto_0
.end method
