.class public Lcom/google/android/calendar/net/taskassist/TaskAssistLoader;
.super Lcom/google/android/calendar/net/AsyncRequestLoader;
.source "TaskAssistLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/net/AsyncRequestLoader",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;",
        "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/android/calendar/net/taskassist/TaskAssistLoader;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/net/taskassist/TaskAssistLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/calendar/net/RequestExecutor;Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/calendar/net/RequestExecutor",
            "<",
            "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;",
            "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;",
            ">;",
            "Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;",
            "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    sget-object v5, Lcom/google/android/calendar/net/taskassist/TaskAssistLoader;->TAG:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/net/AsyncRequestLoader;-><init>(Landroid/content/Context;Lcom/google/android/calendar/net/RequestExecutor;Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected createErrorResponse(Lcom/google/api/client/http/HttpResponseException;)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic createErrorResponse(Lcom/google/api/client/http/HttpResponseException;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/net/taskassist/TaskAssistLoader;->createErrorResponse(Lcom/google/api/client/http/HttpResponseException;)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;

    move-result-object v0

    return-object v0
.end method

.method protected createTimeoutResponse()Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic createTimeoutResponse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/android/calendar/net/taskassist/TaskAssistLoader;->createTimeoutResponse()Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;

    move-result-object v0

    return-object v0
.end method
