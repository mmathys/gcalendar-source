.class public Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;
.super Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;
.source "TaskSuggestEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment",
        "<",
        "Lcom/android/calendar/event/data/AbstractTaskEditManager;",
        "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUPPORTED_LANGUAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/AccountKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccountDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/AccountKey;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;

.field private mAnnotationHintData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExistingSessionId:Ljava/lang/String;

.field private mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

.field private mSuggestionTextForAnnotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

.field private mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

.field private mTitleBeforeLastChange:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 67
    const-class v0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->TAG:Ljava/lang/String;

    .line 68
    const-string v0, "en"

    const-string v1, "es"

    const-string v2, "de"

    const-string v3, "fr"

    const-string v4, "it"

    const-string v5, "nl"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "pl"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "pt"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "ru"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "th"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "tr"

    aput-object v8, v6, v7

    .line 69
    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->SUPPORTED_LANGUAGES:Ljava/util/Set;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 92
    const-class v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    sget-object v1, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->SUPPORTED_LANGUAGES:Ljava/util/Set;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/util/Set;)V

    .line 78
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$1;-><init>(Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAccountDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mExistingSessionId:Ljava/lang/String;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->onAccountChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;)Lcom/google/android/calendar/net/taskassist/TaskAssistService;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;Lcom/google/personalization/assist/annotate/api/nano/EventTime;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->applyTimeChange(Lcom/google/personalization/assist/annotate/api/nano/EventTime;)V

    return-void
.end method

.method private applyQuickCreateInput(Z)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 449
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mEditInput:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 450
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->TAG:Ljava/lang/String;

    const-string v2, "applyQuickCreateInput invoked with mEditInput == null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 523
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v4

    .line 455
    const-class v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 456
    invoke-static {v4, v0}, Lcom/android/calendar/SpanUtils;->getAllSpansOfType(Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 460
    array-length v5, v0

    move v2, v1

    move-object v3, v7

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v1, v0, v2

    .line 461
    invoke-interface {v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;->getFragment()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v6

    .line 462
    if-nez v6, :cond_2

    .line 460
    :cond_1
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 466
    :cond_2
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-static {v6, v8}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v1

    .line 468
    goto :goto_2

    .line 474
    :cond_3
    if-eqz v3, :cond_5

    .line 475
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->getBestResultTitle()Landroid/text/Editable;

    move-result-object v0

    .line 476
    invoke-interface {v0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 481
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 482
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 484
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    new-instance v1, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$3;-><init>(Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    if-eqz v3, :cond_4

    .line 493
    invoke-interface {v3}, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;->getFragment()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    .line 494
    new-instance v2, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$4;

    invoke-direct {v2, p0, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$4;-><init>(Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;Lcom/google/personalization/assist/annotate/api/nano/EventTime;)V

    .line 500
    const-string v1, "com.android.calendar.event.time"

    move-object v0, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->addChangeExecutor(Ljava/lang/String;Ljava/lang/Runnable;Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;Ljava/util/List;Ljava/util/List;Z)V

    .line 505
    :cond_4
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$5;

    invoke-direct {v0, p0, v5}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$5;-><init>(Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;Ljava/util/List;)V

    .line 514
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 515
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 516
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 517
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 518
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 478
    :cond_5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 520
    :cond_6
    invoke-interface {v0, v7}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 466
    nop

    :array_0
    .array-data 4
        0x142
        0x147
    .end array-data
.end method

.method private applyTimeChange(Lcom/google/personalization/assist/annotate/api/nano/EventTime;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 526
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_0

    .line 527
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->TAG:Ljava/lang/String;

    const-string v1, "applyTimeChange invoked with no start time"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 540
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableDueTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    .line 531
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v1

    iget-object v2, p1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    iget-wide v2, v2, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/time/DateTimeService;->dateTimeForMillis(J)Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v1

    .line 530
    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 532
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableIsDueAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 534
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_1

    .line 535
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->TAG:Ljava/lang/String;

    const-string v1, "applyTimeChange invoked with no end time"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 538
    :cond_1
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    iget-wide v0, v0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    iget-object v2, p1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    iget-wide v2, v2, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    sub-long v2, v0, v2

    .line 539
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    check-cast v0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableTaskDurationMillis()Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    move-result-object v0

    long-to-int v1, v2

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;->set(I)V

    goto :goto_0
.end method

.method private getSessionIdKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    const-string v0, ":session_id"

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private logSuggestLatency()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    .line 436
    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->getRequestExecutor()Lcom/google/android/calendar/net/RequestExecutor;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;

    .line 437
    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 441
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->logLatency()V

    goto :goto_0
.end method

.method private logTask()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 360
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->getSessionLoggingRequest(Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;)Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;

    move-result-object v2

    .line 361
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v3, v2, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskSave:Lcom/google/personalization/assist/annotate/api/nano/TaskSave;

    .line 366
    iput v1, v3, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionType:I

    .line 367
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    check-cast v0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableTaskAssistance()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    .line 368
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->hasAssistance:Ljava/lang/Boolean;

    .line 370
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$2;

    invoke-direct {v0, p0, v2}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$2;-><init>(Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;)V

    sget-object v2, Lcom/google/android/calendar/net/AsyncRequestLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    .line 381
    invoke-virtual {v0, v2, v1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 368
    goto :goto_1
.end method

.method private onAccountChanged()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->resetSuggestServerConnection()V

    .line 423
    return-void
.end method

.method private onRestoredSessionId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->getRequestExecutor()Lcom/google/android/calendar/net/RequestExecutor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 411
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mExistingSessionId:Ljava/lang/String;

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->resetSuggestServerForExistingSession(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetSuggestServerConnection()V
    .locals 6

    .prologue
    .line 385
    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->observableAccountKey()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/common/AccountKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    .line 387
    instance-of v2, v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-eqz v2, :cond_0

    .line 388
    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 389
    new-instance v0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    .line 390
    new-instance v0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    const-string v4, "reminderscreate"

    iget-object v5, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mExistingSessionId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/calendar/net/taskassist/TaskAssistService;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_0
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->setRequestExecutor(Lcom/google/android/calendar/net/RequestExecutor;)V

    .line 394
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private resetSuggestServerForExistingSession(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 401
    new-instance v0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;

    .line 402
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    invoke-virtual {v2}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->getAccountEmail()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    const-string v4, "reminderscreate"

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/calendar/net/taskassist/TaskAssistService;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->setRequestExecutor(Lcom/google/android/calendar/net/RequestExecutor;)V

    .line 405
    return-void
.end method

.method private updateAssistance()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTitleBeforeLastChange:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    instance-of v0, v0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    check-cast v0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    .line 429
    invoke-static {v1, v0, v2}, Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils;->setTaskAssistance(Landroid/content/Context;Lcom/google/android/calendar/task/edit/TimelyMutableTask;Lcom/google/android/calendar/net/taskassist/TaskAssistService;)V

    .line 432
    :cond_0
    return-void
.end method


# virtual methods
.method protected canChangeTitle()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->canChangeTitle()Z

    move-result v0

    return v0
.end method

.method protected doNotRequestSuggestions(Landroid/text/Spanned;)V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->doNotRequestSuggestions(Landroid/text/Spanned;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->cancelRequests()V

    .line 204
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;->setSuggestionResponse(Ljava/util/List;)V

    .line 205
    return-void
.end method

.method protected doRequestSuggestions(Landroid/text/Spanned;)Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;
    .locals 2

    .prologue
    .line 197
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAnnotationHintData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->requestSuggestions(Landroid/text/Spanned;Ljava/lang/String;)Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;

    move-result-object v0

    return-object v0
.end method

.method protected getLabelColorData()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lcom/google/calendar/v2/client/service/common/ProxyAtom;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/common/ProxyAtom;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->observableBackgroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->setUnderlying(Lcom/google/calendar/v2/client/service/common/ObservableAtom;)V

    .line 150
    return-object v0
.end method

.method protected getMutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getQueryManager()Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->getQueryManager()Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    move-result-object v0

    return-object v0
.end method

.method protected getQueryManager()Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    return-object v0
.end method

.method protected isNew()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->isNewTask()Z

    move-result v0

    return v0
.end method

.method protected newSpanForFragment(Ljava/lang/String;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;
    .locals 3

    .prologue
    .line 261
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p2, v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)V

    .line 264
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;->setConfig(Lcom/android/calendar/event/edit/segment/ChipConfig;)V

    .line 267
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;-><init>(Landroid/content/Context;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)V

    goto :goto_0

    .line 261
    :array_0
    .array-data 4
        0x142
        0x147
    .end array-data
.end method

.method protected onAfterSetInput()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    sget v1, Lcom/android/calendar/R$string;->edit_title_task_suggest_hint:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setHint(I)V

    .line 133
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->onTitleChanged(Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->observableAccountKey()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAccountData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 139
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAccountData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAccountDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 141
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->resetSuggestServerConnection()V

    .line 142
    return-void
.end method

.method public onDidEnterFullScreen(Landroid/widget/FrameLayout;)V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onDidEnterFullScreen(Landroid/widget/FrameLayout;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTitleBeforeLastChange:Ljava/lang/String;

    .line 276
    :cond_0
    return-void
.end method

.method public onDidExitFullScreen(Landroid/widget/FrameLayout;)V
    .locals 4

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onDidExitFullScreen(Landroid/widget/FrameLayout;)V

    .line 281
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->applyQuickCreateInput(Z)V

    .line 285
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    const-string v2, "\\s+"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->updateAssistance()V

    .line 291
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/event/data/AbstractEditManager;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V

    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/AbstractEditManager;)V

    .line 112
    iput-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    .line 113
    iput-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTitleBeforeLastChange:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAnnotationHintData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 115
    iput-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mSuggestionTextForAnnotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 116
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAccountData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAccountDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 117
    iput-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAccountData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 118
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V

    return-void
.end method

.method public onEnteringEventToReminder(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onEnteringEventToReminder(Ljava/lang/String;)V

    .line 349
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;-><init>()V

    .line 350
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->position:Ljava/lang/Integer;

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->creationTime:Ljava/lang/Long;

    .line 352
    const/16 v1, 0x9

    iput v1, v0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->sourceType:I

    .line 353
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->sendSuggestionClickOnNextRequest(Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;)V

    .line 355
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->onRestoredSessionId(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->requestSuggestions()V

    .line 357
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onFinishInflate()V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    invoke-direct {v1, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    .line 101
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    invoke-virtual {v1, p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->setDelegate(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;)V

    .line 102
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->fetchCurrentLocationForQuery(Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;)V

    .line 104
    new-instance v1, Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;

    invoke-direct {v1, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;

    .line 106
    const-class v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->initialize(Ljava/lang/Class;Lcom/android/calendar/event/edit/segment/SuggestionEditText;Landroid/widget/ListAdapter;)V

    .line 107
    return-void
.end method

.method public onPrepareForSave()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onPrepareForSave()V

    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->applyQuickCreateInput(Z)V

    .line 332
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->logSuggestLatency()V

    .line 333
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->logTask()V

    .line 334
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 316
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->restoreSuggestionsInstanceState(Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestionAdapter;Landroid/os/Bundle;)V

    .line 317
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 319
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->getSessionIdKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_0

    .line 321
    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->onRestoredSessionId(Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 303
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->saveSuggestionsInstanceState(Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestionAdapter;Landroid/os/Bundle;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->isRequestExecutorInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->getSessionIdKey()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    .line 308
    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->getRequestExecutor()Lcom/google/android/calendar/net/RequestExecutor;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;

    .line 309
    invoke-virtual {v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    return-void
.end method

.method public onSuggestReauthSuccess()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->resetSuggestServerConnection()V

    .line 339
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->requestSuggestions()V

    .line 340
    return-void
.end method

.method public onSuggestionAccepted(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Landroid/text/SpannedString;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;->setSuggestionResponse(Ljava/util/List;)V

    .line 249
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotationHint:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAnnotationHintData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mSuggestionTextForAnnotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 252
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->updateAssistance()V

    .line 255
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;

    invoke-virtual {p2}, Landroid/text/SpannedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestQueryManager;->setLastAcceptedSuggestion(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method protected onSuggestionReady(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/String;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;)V
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p3, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    .line 216
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 217
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestionAdapter;->setSuggestionResponse(Ljava/util/List;)V

    .line 218
    return-void
.end method

.method protected bridge synthetic onSuggestionReady(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p3, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->onSuggestionReady(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/String;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 231
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->shouldIgnoreTextChange()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAnnotationHintData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    if-nez v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAnnotationHintData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    check-cast v0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    .line 238
    invoke-virtual {v0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->isAnnotationHintRelevant()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAnnotationHintData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onTitleChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->setInputText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setSelection(I)V

    .line 174
    :cond_0
    return-void
.end method

.method public onWillEnterFullScreen(Landroid/widget/FrameLayout;ZLcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;Lcom/android/calendar/event/edit/EditSaveButton;)V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onWillEnterFullScreen(Landroid/widget/FrameLayout;ZLcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;Lcom/android/calendar/event/edit/EditSaveButton;)V

    .line 226
    return-void
.end method

.method protected requestLatencyActionStringResId()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/calendar/R$string;->latency_task_assist_median_request_duration:I

    return v0
.end method

.method protected bridge synthetic setInputEntity(Lcom/android/calendar/event/data/AbstractEditManager;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->setInputEntity(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V

    return-void
.end method

.method protected setInputEntity(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    .line 125
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableAnnotationHint()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mAnnotationHintData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 126
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    check-cast v0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    .line 127
    invoke-virtual {v0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableSuggestionTextForAnnotationHint()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mSuggestionTextForAnnotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 128
    return-void
.end method

.method protected shouldRequestSuggestions(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->mTask:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    if-nez v1, :cond_0

    .line 185
    sget-object v1, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->TAG:Ljava/lang/String;

    const-string v2, "No task in onRequestSuggestions"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 192
    :goto_0
    return v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->isQuickCreateAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    sget-object v1, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->TAG:Ljava/lang/String;

    const-string v2, "QC disabled for a11y"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 192
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->shouldRequestSuggestions(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method protected shouldShowZeroStateSuggestions()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method
