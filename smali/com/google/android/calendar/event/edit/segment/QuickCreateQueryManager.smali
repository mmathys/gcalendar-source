.class public Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;
.super Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;
.source "QuickCreateQueryManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getSuggestionType()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method protected getWarmupRequest()Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;-><init>()V

    .line 43
    const-string v1, ""

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->query:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->addRequestMetadata(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V

    .line 45
    return-object v0
.end method

.method public requestSuggestions(Landroid/text/Spanned;)Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;-><init>()V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->query:Ljava/lang/String;

    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->addRequestMetadata(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->doRequest(Ljava/lang/Object;)Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;

    move-result-object v0

    return-object v0
.end method
