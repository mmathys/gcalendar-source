.class public Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;
.super Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;
.source "TaskSuggestQueryManager.java"


# instance fields
.field private mNextSuggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->mNextSuggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    .line 22
    return-void
.end method


# virtual methods
.method public getSuggestionType()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected maybeSetSuggestionClick(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->mNextSuggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->mNextSuggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    iput-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->mNextSuggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->maybeSetSuggestionClick(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V

    goto :goto_0
.end method

.method public requestSuggestions(Landroid/text/Spanned;Ljava/lang/String;)Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;-><init>()V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->query:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->addRequestMetadata(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V

    .line 31
    iget-object v1, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-nez v1, :cond_0

    .line 32
    iput-object p2, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotationHint:Ljava/lang/String;

    .line 35
    :cond_0
    sget-object v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    new-instance v1, Lcom/google/personalization/assist/annotate/api/nano/ClientCapabilities;

    invoke-direct {v1}, Lcom/google/personalization/assist/annotate/api/nano/ClientCapabilities;-><init>()V

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientCapabilities:Lcom/google/personalization/assist/annotate/api/nano/ClientCapabilities;

    .line 38
    iget-object v1, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientCapabilities:Lcom/google/personalization/assist/annotate/api/nano/ClientCapabilities;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/google/personalization/assist/annotate/api/nano/ClientCapabilities;->supportsFlexSchedule:Ljava/lang/Boolean;

    .line 41
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->doRequest(Ljava/lang/Object;)Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;

    move-result-object v0

    return-object v0
.end method

.method protected sendSuggestionClickOnNextRequest(Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->mNextSuggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    .line 60
    return-void
.end method
