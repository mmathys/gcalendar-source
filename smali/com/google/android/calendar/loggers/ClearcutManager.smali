.class public Lcom/google/android/calendar/loggers/ClearcutManager;
.super Ljava/lang/Object;
.source "ClearcutManager.java"


# static fields
.field private static sClearcutManager:Lcom/google/android/calendar/loggers/ClearcutManager;


# instance fields
.field private final mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

.field private final mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

.field private final mContext:Landroid/content/Context;

.field private final mRlzConfig:Lcom/google/android/calendar/rlz/RlzConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/loggers/ClearcutManager;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    .line 42
    invoke-static {p1, p2}, Lcom/google/android/calendar/rlz/RlzConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/calendar/rlz/RlzConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/loggers/ClearcutManager;->mRlzConfig:Lcom/google/android/calendar/rlz/RlzConfig;

    .line 43
    new-instance v0, Lcom/google/android/gms/clearcut/ClearcutLogger;

    const-string v1, "CALENDAR"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/clearcut/ClearcutLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/loggers/ClearcutManager;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 44
    iput-object p1, p0, Lcom/google/android/calendar/loggers/ClearcutManager;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static createExtensionProto(Lcom/google/android/calendar/rlz/RlzConfig;I)Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;
    .locals 3

    .prologue
    .line 98
    new-instance v1, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;

    invoke-direct {v1}, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;-><init>()V

    .line 99
    iput p1, v1, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->actionType:I

    .line 101
    invoke-virtual {p0}, Lcom/google/android/calendar/rlz/RlzConfig;->isRlzEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v2, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;

    invoke-direct {v2}, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;-><init>()V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/calendar/rlz/RlzConfig;->getBrandCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->rlzBrandCode:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/google/android/calendar/rlz/RlzConfig;->isPreInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x2

    .line 106
    :goto_0
    iput v0, v2, Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;->distributionType:I

    .line 107
    iput-object v2, v1, Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;->distributionInvariants:Lcom/google/apps/docs/diagnostics/impressions/proto/sessioninvariants/nano/DistributionInvariants;

    .line 109
    :cond_0
    return-object v1

    .line 106
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/calendar/loggers/ClearcutManager;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/google/android/calendar/loggers/ClearcutManager;->sClearcutManager:Lcom/google/android/calendar/loggers/ClearcutManager;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/google/android/calendar/loggers/ClearcutManager;

    invoke-direct {v0, p0, p1}, Lcom/google/android/calendar/loggers/ClearcutManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/calendar/loggers/ClearcutManager;->sClearcutManager:Lcom/google/android/calendar/loggers/ClearcutManager;

    .line 116
    :cond_0
    sget-object v0, Lcom/google/android/calendar/loggers/ClearcutManager;->sClearcutManager:Lcom/google/android/calendar/loggers/ClearcutManager;

    return-object v0
.end method


# virtual methods
.method public logAction(I)V
    .locals 7

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/calendar/loggers/ClearcutManager;->mRlzConfig:Lcom/google/android/calendar/rlz/RlzConfig;

    invoke-static {v0, p1}, Lcom/google/android/calendar/loggers/ClearcutManager;->createExtensionProto(Lcom/google/android/calendar/rlz/RlzConfig;I)Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 54
    iget-object v0, p0, Lcom/google/android/calendar/loggers/ClearcutManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v2

    .line 55
    array-length v0, v2

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/google/android/calendar/loggers/ClearcutManager;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    iget-object v2, p0, Lcom/google/android/calendar/loggers/ClearcutManager;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;)V

    .line 63
    :cond_0
    return-void

    .line 58
    :cond_1
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 59
    iget-object v5, p0, Lcom/google/android/calendar/loggers/ClearcutManager;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v5

    .line 60
    iget-object v6, p0, Lcom/google/android/calendar/loggers/ClearcutManager;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    invoke-virtual {v6, v5, v4}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;Landroid/accounts/Account;)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public logAction(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/calendar/loggers/ClearcutManager;->mRlzConfig:Lcom/google/android/calendar/rlz/RlzConfig;

    invoke-static {v0, p1}, Lcom/google/android/calendar/loggers/ClearcutManager;->createExtensionProto(Lcom/google/android/calendar/rlz/RlzConfig;I)Lcom/google/android/calendar/nano/CalendarLoggingExtension$AndroidCalendarExtensionProto;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/google/android/calendar/loggers/ClearcutManager;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v1

    .line 74
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/google/android/calendar/loggers/ClearcutManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v2

    .line 77
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 78
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/android/calendar/loggers/ClearcutManager;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    invoke-virtual {v0, v1, v4}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;Landroid/accounts/Account;)V

    .line 87
    :goto_1
    return-void

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/loggers/ClearcutManager;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;)V

    goto :goto_1
.end method
