.class public Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;
.super Ljava/lang/Object;
.source "TaskAssistRequestExecutor.java"

# interfaces
.implements Lcom/google/android/calendar/net/RequestExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/calendar/net/RequestExecutor",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;",
        "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccountEmail:Ljava/lang/String;

.field private final mAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

.field private final mContext:Landroid/content/Context;

.field private final mSessionId:Ljava/lang/String;

.field private final mSourceTag:Ljava/lang/String;

.field private final mSuggestLatencyMetrics:Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;

.field private final mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/calendar/net/taskassist/TaskAssistService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mAccountEmail:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

    .line 37
    new-instance v0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;-><init>(Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$1;)V

    iput-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mSuggestLatencyMetrics:Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;

    .line 38
    iput-object p3, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    .line 39
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_suggest_latency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mSourceTag:Ljava/lang/String;

    .line 41
    if-nez p5, :cond_0

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mSessionId:Ljava/lang/String;

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iput-object p5, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mSessionId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public executeRequest(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;
    .locals 6

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mSessionId:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->sessionId:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->emailAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mAccountEmail:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->emailAddress:Ljava/lang/String;

    .line 63
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->suggest(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;
    :try_end_0
    .catch Lcom/google/android/calendar/net/exceptions/GrpcServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 74
    iget-object v1, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mSuggestLatencyMetrics:Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->addSample(J)V

    .line 81
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    sget-object v1, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->TAG:Ljava/lang/String;

    const-string v2, "Exception getting Task Assist suggestions"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic executeRequest(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    check-cast p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->executeRequest(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public logLatency()V
    .locals 8

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mSuggestLatencyMetrics:Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;

    invoke-virtual {v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->getSampleAverageMs()J

    move-result-wide v4

    .line 96
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

    iget-object v2, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mContext:Landroid/content/Context;

    const-string v3, "task_assist"

    iget-object v6, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mSourceTag:Ljava/lang/String;

    const-string v7, "average"

    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/AnalyticsLogger;->trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

    iget-object v2, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mContext:Landroid/content/Context;

    const-string v3, "task_assist"

    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mSuggestLatencyMetrics:Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;

    .line 100
    invoke-virtual {v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->getMaxSampleMs()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->mSourceTag:Ljava/lang/String;

    const-string v7, "max"

    .line 99
    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/AnalyticsLogger;->trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method
