.class public abstract Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;
.super Lcom/google/android/calendar/net/AutoCompleteRequestManager;
.source "BaseAnnotatedSuggestQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/net/AutoCompleteRequestManager",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;",
        "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;",
        "Lcom/google/android/calendar/net/taskassist/TaskAssistLoader;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mCountry:Ljava/lang/String;

.field private mCurrentLocation:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

.field private mDeviceType:I

.field private mLanguage:Ljava/lang/String;

.field private mLastAcceptedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

.field private mLastQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 54
    invoke-direct {p0}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 61
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLanguage:Ljava/lang/String;

    .line 65
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mCountry:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    const/4 v0, 0x4

    :goto_1
    iput v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mDeviceType:I

    .line 70
    return-void

    .line 63
    :cond_1
    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLanguage:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private getAnnotationForRequest(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)Lcom/google/personalization/assist/annotate/api/nano/Annotation;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->getLastAcceptedSuggestion()Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    move-result-object v2

    .line 216
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 258
    :goto_0
    return-object v0

    .line 220
    :cond_1
    iget-object v3, v2, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    .line 222
    invoke-static {v2}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->getSuggestionFullText(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    iget-object v0, v2, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    goto :goto_0

    .line 226
    :cond_2
    invoke-static {v3}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->hasAnnotationFragments(Lcom/google/personalization/assist/annotate/api/nano/Annotation;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 232
    iget-object v2, v3, Lcom/google/personalization/assist/annotate/api/nano/Annotation;->fragment:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    .line 234
    invoke-static {v0, v2}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->getFirstNonmatchingFragmentIndex(Ljava/lang/String;[Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)I

    move-result v0

    .line 236
    if-lez v0, :cond_3

    .line 238
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    .line 244
    :try_start_0
    invoke-static {v3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/personalization/assist/annotate/api/nano/Annotation;->parseFrom([B)Lcom/google/personalization/assist/annotate/api/nano/Annotation;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 250
    iput-object v0, v1, Lcom/google/personalization/assist/annotate/api/nano/Annotation;->fragment:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-object v0, v1

    .line 251
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    sget-object v2, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception cloning annotation"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 247
    goto :goto_0

    .line 255
    :cond_3
    invoke-virtual {p0, v1, v1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->setLastAcceptedSuggestion(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Ljava/lang/String;)V

    :cond_4
    move-object v0, v1

    .line 258
    goto :goto_0
.end method

.method private static getFirstNonmatchingFragmentIndex(Ljava/lang/String;[Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)I
    .locals 4

    .prologue
    .line 267
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 268
    aget-object v1, p1, v0

    .line 269
    iget v2, v1, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->endPos:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 280
    :cond_0
    return v0

    .line 273
    :cond_1
    iget v2, v1, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->beginPos:I

    iget v3, v1, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->endPos:I

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 276
    iget-object v1, v1, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->text:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected addRequestMetadata(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->getAnnotationForRequest(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    move-result-object v0

    iput-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->setClientInfo(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->setLocationAndLocaleInfo(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->maybeSetSuggestionClick(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V

    .line 122
    return-void
.end method

.method protected bridge synthetic createRequestLoader(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/Object;)Lcom/google/android/calendar/net/AsyncRequestLoader;
    .locals 1

    .prologue
    .line 35
    check-cast p2, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->createRequestLoader(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)Lcom/google/android/calendar/net/taskassist/TaskAssistLoader;

    move-result-object v0

    return-object v0
.end method

.method protected createRequestLoader(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)Lcom/google/android/calendar/net/taskassist/TaskAssistLoader;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Lcom/google/android/calendar/net/taskassist/TaskAssistLoader;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->getRequestExecutor()Lcom/google/android/calendar/net/RequestExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/calendar/net/taskassist/TaskAssistLoader;-><init>(Landroid/content/Context;Lcom/google/android/calendar/net/RequestExecutor;Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V

    return-object v0
.end method

.method public getLastAcceptedSuggestion()Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLastAcceptedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    return-object v0
.end method

.method public getLastQueryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLastQuery:Ljava/lang/String;

    return-object v0
.end method

.method protected getResponseStatus(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;)Lcom/google/android/calendar/net/ResponseStatus;
    .locals 1

    .prologue
    .line 195
    invoke-static {p1}, Lcom/google/android/calendar/net/quickcreate/SuggestionUtil;->getResponseStatus(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;)Lcom/google/android/calendar/net/ResponseStatus;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getResponseStatus(Ljava/lang/Object;)Lcom/google/android/calendar/net/ResponseStatus;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->getResponseStatus(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;)Lcom/google/android/calendar/net/ResponseStatus;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSuggestionType()I
.end method

.method protected bridge synthetic isValidResponse(Lcom/google/android/calendar/net/AsyncRequestLoader;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/google/android/calendar/net/taskassist/TaskAssistLoader;

    check-cast p2, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->isValidResponse(Lcom/google/android/calendar/net/taskassist/TaskAssistLoader;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;)Z

    move-result v0

    return v0
.end method

.method protected isValidResponse(Lcom/google/android/calendar/net/taskassist/TaskAssistLoader;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;)Z
    .locals 1

    .prologue
    .line 200
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected maybeSetSuggestionClick(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLastAcceptedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLastAcceptedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLastAcceptedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotationHint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLastAcceptedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    iput-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    .line 157
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLastAcceptedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    .line 159
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 176
    const-string v0, ":last_accepted_suggestion"

    .line 177
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler;->fromParcelable(Landroid/os/Parcelable;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    .line 178
    const-string v1, ":last_query"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->setLastAcceptedSuggestion(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Ljava/lang/String;)V

    .line 182
    :cond_0
    const-string v0, ":current_location"

    .line 183
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler;->fromParcelable(Landroid/os/Parcelable;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mCurrentLocation:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    .line 184
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLastAcceptedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    if-eqz v0, :cond_0

    .line 163
    const-string v0, ":last_accepted_suggestion"

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLastAcceptedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    .line 164
    invoke-static {v1}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler;->toParcelable(Lcom/google/protobuf/nano/MessageNano;)Landroid/os/Parcelable;

    move-result-object v1

    .line 163
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLastQuery:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 167
    const-string v0, ":last_query"

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLastQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mCurrentLocation:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    if-eqz v0, :cond_2

    .line 170
    const-string v0, ":current_location"

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mCurrentLocation:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    .line 171
    invoke-static {v1}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler;->toParcelable(Lcom/google/protobuf/nano/MessageNano;)Landroid/os/Parcelable;

    move-result-object v1

    .line 170
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 173
    :cond_2
    return-void
.end method

.method protected setClientInfo(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x2

    iput v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientType:I

    .line 126
    iget v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mDeviceType:I

    iput v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->deviceType:I

    .line 127
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->getSuggestionType()I

    move-result v0

    iput v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionType:I

    .line 128
    return-void
.end method

.method public setCurrentLocation(Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;-><init>()V

    .line 75
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 76
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v1, v4

    iput v1, v0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->latitudeE7:I

    .line 77
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->longitudeE7:I

    .line 78
    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mCurrentLocation:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    .line 80
    :cond_0
    return-void
.end method

.method public setLastAcceptedSuggestion(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->parseFrom([B)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLastAcceptedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLastQuery:Ljava/lang/String;

    .line 96
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    sget-object v1, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception cloning AnnotatedSuggestion"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLastAcceptedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    goto :goto_0
.end method

.method protected setLocationAndLocaleInfo(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLanguage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mLanguage:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->language:Ljava/lang/String;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mCountry:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mCountry:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->country:Ljava/lang/String;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mCurrentLocation:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->mCurrentLocation:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    iput-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    .line 143
    :cond_2
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/time/DateTimeService;->calendarTimeZone()Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/time/TimeZoneImpl;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->timezone:Ljava/lang/String;

    .line 144
    return-void
.end method
