.class public Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils;
.super Ljava/lang/Object;
.source "TaskAssistServiceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static setTaskAssistance(Landroid/content/Context;Lcom/google/android/calendar/task/edit/TimelyMutableTask;Lcom/google/android/calendar/net/taskassist/TaskAssistService;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 31
    new-instance v1, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;

    invoke-direct {v1}, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;-><init>()V

    .line 32
    const/4 v0, 0x2

    iput v0, v1, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->clientType:I

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    iput-object v0, v1, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    .line 34
    iget-object v0, v1, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    new-instance v2, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    invoke-direct {v2}, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;-><init>()V

    aput-object v2, v0, v4

    .line 35
    iget-object v0, v1, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    aget-object v2, v0, v4

    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->query:Ljava/lang/String;

    .line 36
    iget-object v0, v1, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    aget-object v2, v0, v4

    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableAnnotationHint()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->annotationHint:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 39
    if-eqz v0, :cond_0

    .line 40
    iget-object v2, v1, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    aget-object v2, v2, v4

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->language:Ljava/lang/String;

    .line 41
    iget-object v2, v1, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    aget-object v2, v2, v4

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->country:Ljava/lang/String;

    .line 44
    :cond_0
    new-instance v0, Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils$1;

    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils$1;-><init>(Lcom/google/android/calendar/net/taskassist/TaskAssistService;Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;Lcom/google/android/calendar/task/edit/TimelyMutableTask;)V

    .line 63
    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    return-void
.end method
