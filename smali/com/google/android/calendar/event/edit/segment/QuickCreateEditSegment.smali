.class public Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;
.super Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;
.source "QuickCreateEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;,
        Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;,
        Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$SpanContentRemover;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment",
        "<",
        "Lcom/android/calendar/event/data/EventEditManager;",
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
.field private mAdapter:Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

.field private mAfterTextChangeActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

.field private mCalendarData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private final mCalendarDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private mConvertToReminderPromo:Landroid/view/View;

.field private mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

.field private mEventToReminderPromoShownInSession:Z

.field private mExistingSessionId:Ljava/lang/String;

.field private mIsEventToReminderPromoInjectedInList:Z

.field private mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

.field private mResolvedLocations:Landroid/os/Bundle;

.field private mShouldInjectEventToReminderPromo:Z

.field private mSpansForPotentialRemoval:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestListTopPadding:I

.field private mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

.field private mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

.field private mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 104
    const-class v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->TAG:Ljava/lang/String;

    .line 105
    const-string v0, "en"

    const-string v1, "pl"

    const-string v2, "es"

    const-string v3, "th"

    const-string v4, "ar"

    const-string v5, "zh"

    const/16 v6, 0x23

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "fr"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "de"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "it"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "ja"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "ko"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "ru"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "tr"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "nl"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "pt"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "fa"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "fil"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "vi"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string v8, "bg"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string v8, "ca"

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string v8, "hr"

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const-string v8, "cs"

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const-string v8, "da"

    aput-object v8, v6, v7

    const/16 v7, 0x11

    const-string v8, "fi"

    aput-object v8, v6, v7

    const/16 v7, 0x12

    const-string v8, "el"

    aput-object v8, v6, v7

    const/16 v7, 0x13

    const-string v8, "iw"

    aput-object v8, v6, v7

    const/16 v7, 0x14

    const-string v8, "hu"

    aput-object v8, v6, v7

    const/16 v7, 0x15

    const-string v8, "id"

    aput-object v8, v6, v7

    const/16 v7, 0x16

    const-string v8, "in"

    aput-object v8, v6, v7

    const/16 v7, 0x17

    const-string v8, "lv"

    aput-object v8, v6, v7

    const/16 v7, 0x18

    const-string v8, "lt"

    aput-object v8, v6, v7

    const/16 v7, 0x19

    const-string v8, "nb"

    aput-object v8, v6, v7

    const/16 v7, 0x1a

    const-string v8, "no"

    aput-object v8, v6, v7

    const/16 v7, 0x1b

    const-string v8, "ro"

    aput-object v8, v6, v7

    const/16 v7, 0x1c

    const-string v8, "sr"

    aput-object v8, v6, v7

    const/16 v7, 0x1d

    const-string v8, "sk"

    aput-object v8, v6, v7

    const/16 v7, 0x1e

    const-string v8, "sl"

    aput-object v8, v6, v7

    const/16 v7, 0x1f

    const-string v8, "uk"

    aput-object v8, v6, v7

    const/16 v7, 0x20

    const-string v8, "pt"

    aput-object v8, v6, v7

    const/16 v7, 0x21

    const-string v8, "sv"

    aput-object v8, v6, v7

    const/16 v7, 0x22

    const-string v8, "hi"

    aput-object v8, v6, v7

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->SUPPORTED_LANGUAGES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    const-class v0, Lcom/android/calendar/event/data/EventEditManager;

    sget-object v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->SUPPORTED_LANGUAGES:Ljava/util/Set;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/util/Set;)V

    .line 127
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$1;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mCalendarDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mSpansForPotentialRemoval:Ljava/util/Map;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAfterTextChangeActions:Ljava/util/List;

    .line 147
    iput-boolean v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEventToReminderPromoShownInSession:Z

    .line 153
    iput-boolean v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mIsEventToReminderPromoInjectedInList:Z

    .line 155
    iput-boolean v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mShouldInjectEventToReminderPromo:Z

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->onCalendarChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->beginIgnoreTextChanges()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->endIgnoreTextChanges()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/android/calendar/editor/EditSegmentController;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->isActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/android/calendar/editor/EditSegmentController;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    return-object v0
.end method

.method static synthetic access$1601(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onFocusChange(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->setTitleInternal(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Lcom/google/personalization/assist/annotate/api/nano/EventTime;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->applyTimeChange(Lcom/google/personalization/assist/annotate/api/nano/EventTime;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->storeResolvedLocation(Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/google/android/calendar/net/taskassist/TaskAssistService;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Landroid/text/Editable;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method private applyQuickCreateInput(Z)V
    .locals 19

    .prologue
    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEditInput:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 790
    sget-object v2, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->TAG:Ljava/lang/String;

    const-string v3, "applyQuickCreateInput invoked with mEditInput == null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 960
    :goto_0
    return-void

    .line 794
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    invoke-virtual {v2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->clearAddedContactHint()V

    .line 796
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v8

    .line 797
    const-class v2, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 798
    invoke-static {v8, v2}, Lcom/android/calendar/SpanUtils;->getAllSpansOfType(Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 800
    const/4 v5, 0x0

    .line 801
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 802
    const/4 v9, 0x0

    .line 804
    array-length v6, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_5

    aget-object v3, v2, v4

    .line 805
    invoke-interface {v3}, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;->getFragment()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v7

    .line 806
    if-nez v7, :cond_2

    move-object v3, v9

    .line 804
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object v9, v3

    goto :goto_1

    .line 810
    :cond_2
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x2

    aput v13, v11, v12

    invoke-static {v7, v11}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 811
    new-instance v3, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;

    iget-object v7, v7, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->contact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    const/4 v11, 0x0

    invoke-direct {v3, v7, v11}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Contact;Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$1;)V

    invoke-interface {v10, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v3, v9

    goto :goto_2

    .line 812
    :cond_3
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/16 v13, 0x1a

    aput v13, v11, v12

    invoke-static {v7, v11}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v5, v3

    move-object v3, v9

    .line 813
    goto :goto_2

    .line 814
    :cond_4
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/16 v13, 0x10a

    aput v13, v11, v12

    invoke-static {v7, v11}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v3, v9

    goto :goto_2

    .line 819
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getBestResultTitle()Landroid/text/Editable;

    move-result-object v4

    .line 821
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 822
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 823
    invoke-direct/range {p0 .. p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getLogMetrics()Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;

    move-result-object v11

    .line 826
    new-instance v2, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$2;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Landroid/text/Spanned;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->isQuickCreateAvailable()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 834
    const-class v2, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 835
    invoke-static {v4, v2}, Lcom/android/calendar/SpanUtils;->getAllSpansOfType(Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 836
    new-instance v12, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 838
    array-length v13, v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v13, :cond_7

    aget-object v14, v2, v3

    .line 839
    invoke-interface {v14}, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;->getFragment()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x2

    aput v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 840
    invoke-interface {v4, v14}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 841
    invoke-interface {v4, v14}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    .line 842
    move/from16 v0, v16

    invoke-interface {v4, v15, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .line 843
    new-instance v17, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;

    .line 844
    invoke-interface {v14}, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;->getFragment()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v14

    iget-object v14, v14, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->contact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$QueryTermContact;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Contact;Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$1;)V

    .line 846
    invoke-static/range {v15 .. v17}, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->forContact(ILjava/lang/String;Lcom/google/calendar/v2/client/service/api/contacts/Contact;)Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 850
    :cond_7
    new-instance v2, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$3;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Ljava/util/Collection;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    :goto_4
    if-eqz v5, :cond_8

    .line 880
    invoke-interface {v5}, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;->getFragment()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v2

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->localBusiness:Lcom/google/personalization/assist/annotate/api/nano/Place;

    .line 881
    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/Place;->placeReference:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getStructuredLocation(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    move-result-object v2

    .line 882
    if-eqz v2, :cond_e

    .line 883
    new-instance v4, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$5;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V

    .line 910
    :goto_5
    const-string v3, "com.google.android.calendar.event.location.structured"

    move-object/from16 v2, p0

    move/from16 v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->addChangeExecutor(Ljava/lang/String;Ljava/lang/Runnable;Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;Ljava/util/List;Ljava/util/List;Z)V

    .line 913
    invoke-virtual {v11}, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->setDidQuickCreateSetLocation()V

    .line 916
    :cond_8
    if-eqz v9, :cond_9

    .line 917
    invoke-interface {v9}, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;->getFragment()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v2

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    .line 918
    new-instance v4, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$7;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Lcom/google/personalization/assist/annotate/api/nano/EventTime;)V

    .line 925
    const-string v3, "com.android.calendar.event.time"

    move-object/from16 v2, p0

    move-object v5, v9

    move/from16 v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->addChangeExecutor(Ljava/lang/String;Ljava/lang/Runnable;Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;Ljava/util/List;Ljava/util/List;Z)V

    .line 929
    invoke-virtual {v11}, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->setDidQuickCreateSetTime()V

    .line 932
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isNewEvent()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 933
    invoke-virtual {v11}, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->setDidQuickCreateSetContacts()V

    .line 936
    :cond_a
    new-instance v3, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$8;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Ljava/util/List;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getAccountKey()Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/common/AccountKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v2

    .line 946
    instance-of v4, v2, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-eqz v4, :cond_c

    .line 947
    check-cast v2, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 948
    const-string v4, "@gmail.com"

    .line 949
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "@googlemail.com"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_b
    const/4 v2, 0x1

    .line 948
    :goto_6
    invoke-virtual {v11, v2}, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->setOnGmailAccount(Z)V

    .line 952
    :cond_c
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 953
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 954
    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 955
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 956
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 868
    :cond_d
    new-instance v2, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$4;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 901
    :cond_e
    invoke-interface {v8, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 902
    invoke-interface {v8, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 901
    invoke-interface {v8, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 902
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 903
    new-instance v4, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$6;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 949
    :cond_f
    const/4 v2, 0x0

    goto :goto_6

    .line 958
    :cond_10
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto/16 :goto_0
.end method

.method private applyTimeChange(Lcom/google/personalization/assist/annotate/api/nano/EventTime;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 963
    .line 964
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_7

    .line 965
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v0

    iget-object v2, p1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    iget-wide v2, v2, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/DateTimeService;->dateTimeForMillis(J)Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v0

    .line 969
    :goto_0
    iget-object v2, p1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v2, :cond_6

    .line 970
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v2

    iget-object v3, p1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    iget-wide v4, v3, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    invoke-virtual {v2, v4, v5}, Lcom/android/calendar/time/DateTimeService;->dateTimeForMillis(J)Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v2

    .line 973
    :goto_1
    iget-boolean v3, p1, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->allDay:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 974
    const/4 v3, 0x0

    .line 976
    if-nez v2, :cond_5

    iget-object v5, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v5}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getEndTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 977
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isAllDay()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 979
    const/4 v2, 0x1

    move-object v3, v1

    .line 986
    :goto_2
    if-eqz v0, :cond_0

    .line 987
    iget-object v5, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v5}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 989
    :cond_0
    if-eqz v3, :cond_4

    .line 990
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableEndTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 994
    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    .line 995
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 997
    :cond_2
    return-void

    .line 981
    :cond_3
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v5}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getEndTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/calendar/v2/client/service/api/time/Duration;->between(Lcom/google/calendar/v2/client/service/api/time/Instant;Lcom/google/calendar/v2/client/service/api/time/Instant;)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v2

    .line 982
    invoke-interface {v0, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    move v6, v3

    move-object v3, v2

    move v2, v6

    goto :goto_2

    .line 991
    :cond_4
    if-eqz v2, :cond_1

    .line 992
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableEndTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move v6, v3

    move-object v3, v2

    move v2, v6

    goto :goto_2

    :cond_6
    move-object v2, v1

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private applyTitleAnnotations()V
    .locals 8

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getTitleAnnotations()Ljava/util/List;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    return-void

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;

    .line 260
    invoke-virtual {v0, v2}, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->isApplicableTo(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 261
    sget-object v4, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->TAG:Ljava/lang/String;

    const-string v5, "Ignoring annotation %s, because current text is %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v2, v6, v0

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 265
    :cond_3
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->getAnnotatedContact()Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    move-result-object v4

    .line 266
    if-eqz v4, :cond_2

    .line 270
    invoke-direct {p0, v4}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->v2ContactToTaskAssistContact(Lcom/google/calendar/v2/client/service/api/contacts/Contact;)Lcom/google/personalization/assist/annotate/api/nano/Contact;

    move-result-object v4

    .line 273
    invoke-direct {p0, v4, v2, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->buildAnnotationFragmentForContact(Lcom/google/personalization/assist/annotate/api/nano/Contact;Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;)Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v0

    .line 275
    invoke-virtual {p0, v1, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->addFragmentSpan(Landroid/text/Spannable;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)V

    goto :goto_0
.end method

.method private buildAnnotationFragmentForContact(Lcom/google/personalization/assist/annotate/api/nano/Contact;Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;)Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;
    .locals 4

    .prologue
    .line 1186
    invoke-virtual {p3}, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->getStartOffset()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/calendar/Utils;->javaToUnicodeCharOffset(Ljava/lang/String;I)I

    move-result v0

    .line 1187
    invoke-virtual {p3}, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->getStartOffset()I

    move-result v1

    .line 1188
    invoke-virtual {p3}, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->getAnnotatedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 1187
    invoke-static {p2, v1}, Lcom/android/calendar/Utils;->javaToUnicodeCharOffset(Ljava/lang/String;I)I

    move-result v1

    .line 1190
    new-instance v2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    invoke-direct {v2}, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;-><init>()V

    .line 1191
    const/4 v3, 0x2

    iput v3, v2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->annotationType:I

    .line 1192
    iput v0, v2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->beginPos:I

    .line 1193
    iput v1, v2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->endPos:I

    .line 1194
    iput-object p1, v2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->contact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    .line 1196
    return-object v2
.end method

.method private convertEventToReminder()V
    .locals 5

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->logEventToReminderPromoView()V

    .line 713
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 714
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->event_to_reminder_promo_category:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 715
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->event_to_reminder_promo_click_action:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 713
    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    new-instance v1, Landroid/text/SpannedString;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    .line 719
    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->getRequestExecutor()Lcom/google/android/calendar/net/RequestExecutor;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;

    invoke-virtual {v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->getSessionId()Ljava/lang/String;

    move-result-object v2

    .line 720
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    invoke-virtual {v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->getAccountEmail()Ljava/lang/String;

    move-result-object v3

    .line 722
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->onExitingEventToReminder()V

    .line 723
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/calendar/event/data/EventEditManager;->convertEventToReminder(Landroid/text/SpannedString;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method private static debugDescription(Landroid/text/Spannable;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 1149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1150
    const-class v0, Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/calendar/SpanUtils;->getAllSpansOfType(Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 1151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1152
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1155
    :cond_0
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1156
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 1157
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    .line 1158
    const-string v9, "SPAN(%s) [%d:%d], flags:0x%08x (%s)"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    .line 1159
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v1

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v11

    const/4 v6, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v6

    const/4 v6, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v6

    const/4 v6, 0x4

    aput-object v5, v10, v6

    .line 1158
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1162
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEventToReminderPromoVisibleKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1072
    const-string v0, ":e2r_promo_visible"

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInputHint()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 733
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v2, 0x1ea

    if-ge v1, v2, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 738
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->isQuickCreateAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 739
    sget v0, Lcom/android/calendar/R$string;->edit_title_quickcreate_hint:I

    .line 743
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 733
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 741
    :cond_2
    sget v0, Lcom/android/calendar/R$string;->edit_title_hint:I

    goto :goto_1
.end method

.method private getLogMetrics()Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    .line 1001
    instance-of v1, v0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1002
    check-cast v0, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;

    return-object v0
.end method

.method private getResolvedLocationsKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1064
    const-string v0, ":resolved_locations_v2"

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSessionIdKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1076
    const-string v0, ":session_id"

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStructuredLocation(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1055
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mResolvedLocations:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1056
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mResolvedLocations:Landroid/os/Bundle;

    .line 1057
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/EventLocationHolder;

    .line 1058
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/calendar/timely/EventLocationHolder;->getEventLocation()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    move-result-object v0

    .line 1060
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 1058
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1060
    goto :goto_0
.end method

.method private getUsageHintsDataKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1068
    const-string v0, ":usage_hints_data"

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private injectEventToRemindersPromo()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1110
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mIsEventToReminderPromoInjectedInList:Z

    if-eqz v0, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    invoke-virtual {v0, v4}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->setHintingEnabled(Z)V

    .line 1117
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getSuggestionList()Landroid/widget/ListView;

    move-result-object v0

    .line 1118
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1119
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mConvertToReminderPromo:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1120
    sget v2, Lcom/android/calendar/R$layout;->convert_event_to_reminder_promo:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mConvertToReminderPromo:Landroid/view/View;

    .line 1125
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mSuggestListTopPadding:I

    .line 1126
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mConvertToReminderPromo:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1127
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    .line 1128
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    .line 1127
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1130
    iput-boolean v5, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEventToReminderPromoShownInSession:Z

    .line 1131
    iput-boolean v5, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mIsEventToReminderPromoInjectedInList:Z

    goto :goto_0
.end method

.method private isCalendarOnGoogleAccount()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 769
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    if-nez v0, :cond_0

    .line 772
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->TAG:Ljava/lang/String;

    const-string v2, "No event in isCalendarOnGoogleAccount"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 781
    :goto_0
    return v0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    .line 777
    instance-of v2, v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-nez v2, :cond_1

    .line 778
    sget-object v2, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->TAG:Ljava/lang/String;

    const-string v3, "Unsupported calendar key: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 779
    goto :goto_0

    .line 781
    :cond_1
    const-string v1, "com.google"

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private logEvent()V
    .locals 3

    .prologue
    .line 1200
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->isQuickCreateAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getSessionLoggingRequest(Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;)Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;

    move-result-object v0

    .line 1204
    if-eqz v0, :cond_0

    .line 1208
    iget-object v1, v0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskSave:Lcom/google/personalization/assist/annotate/api/nano/TaskSave;

    const/4 v2, 0x1

    iput v2, v1, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionType:I

    .line 1210
    new-instance v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$10;

    invoke-direct {v1, p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$10;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;)V

    sget-object v0, Lcom/google/android/calendar/net/AsyncRequestLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 1221
    invoke-virtual {v1, v0, v2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$10;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private logEventToReminderPromoView()V
    .locals 5

    .prologue
    .line 1102
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEventToReminderPromoShownInSession:Z

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1104
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->event_to_reminder_promo_category:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1105
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->event_to_reminder_promo_view_action:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1103
    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_0
    return-void
.end method

.method private logSuggestLatency()V
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    .line 1081
    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->getRequestExecutor()Lcom/google/android/calendar/net/RequestExecutor;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;

    .line 1082
    if-nez v0, :cond_0

    .line 1087
    :goto_0
    return-void

    .line 1086
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->logLatency()V

    goto :goto_0
.end method

.method private onCalendarChanged()V
    .locals 0

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->updateQuickCreateState()V

    .line 1024
    return-void
.end method

.method private onQuickCreateAvailabilityChange()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEditInput:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    if-eqz v0, :cond_3

    .line 234
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getInputHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setHintChipAware(Ljava/lang/CharSequence;)V

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0, p0}, Lcom/android/calendar/editor/EditSegmentController;->isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->requestSuggestions()V

    goto :goto_0
.end method

.method private onRestoredSessionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mExistingSessionId:Ljava/lang/String;

    .line 465
    return-void
.end method

.method private removeEventToReminderPromo()V
    .locals 5

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getSuggestionList()Landroid/widget/ListView;

    move-result-object v0

    .line 1136
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mConvertToReminderPromo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 1137
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mSuggestListTopPadding:I

    .line 1138
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v4

    .line 1137
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1139
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->setHintingEnabled(Z)V

    .line 1140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mIsEventToReminderPromoInjectedInList:Z

    .line 1141
    return-void
.end method

.method private resetSuggestServerConnection()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 747
    .line 748
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getAccountKey()Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/common/AccountKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    .line 749
    instance-of v1, v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-eqz v1, :cond_2

    .line 750
    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 751
    new-instance v0, Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    .line 756
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mExistingSessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->getWarmupRequest()Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;

    move-result-object v6

    .line 760
    :cond_0
    new-instance v0, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;

    .line 761
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    const-string v4, "quickcreate"

    iget-object v5, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mExistingSessionId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/calendar/net/taskassist/TaskAssistService;Ljava/lang/String;Ljava/lang/String;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V

    .line 764
    :goto_0
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->setRequestExecutor(Lcom/google/android/calendar/net/RequestExecutor;)V

    .line 765
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v6

    goto :goto_0
.end method

.method private resolveStructuredLocation(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mResolvedLocations:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mResolvedLocations:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 1035
    :cond_0
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$9;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$9;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1040
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setTitleInternal(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1011
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->setInputText(Ljava/lang/CharSequence;)V

    .line 1012
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setSelection(I)V

    .line 1014
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 1017
    :cond_0
    return-void
.end method

.method private shouldRemovePromoForFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1097
    invoke-static {p1}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isConnectorFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v1, [I

    const/16 v3, 0x10a

    aput v3, v2, v0

    .line 1098
    invoke-static {p1, v2}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1097
    :cond_1
    return v0
.end method

.method private storeResolvedLocation(Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mResolvedLocations:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1045
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mResolvedLocations:Landroid/os/Bundle;

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mResolvedLocations:Landroid/os/Bundle;

    new-instance v1, Lcom/android/calendar/timely/EventLocationHolder;

    invoke-direct {v1, p2}, Lcom/android/calendar/timely/EventLocationHolder;-><init>(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1049
    return-void
.end method

.method private updateQuickCreateState()V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->isQuickCreateAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->setRequestExecutor(Lcom/google/android/calendar/net/RequestExecutor;)V

    .line 215
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->resetSuggestServerConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getLogMetrics()Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->setQuickCreateActive()V

    .line 225
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->onQuickCreateAvailabilityChange()V

    .line 226
    return-void

    .line 218
    :cond_1
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->TAG:Ljava/lang/String;

    const-string v1, "resetSuggestServerConnection unsuccessful"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 219
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getLogMetrics()Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->setQuickCreateUnreachable()V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEditInput:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getLogMetrics()Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/event/data/TimelyEventEditLogMetrics;->setQuickCreateDisabled()V

    goto :goto_0
.end method

.method private v2ContactToTaskAssistContact(Lcom/google/calendar/v2/client/service/api/contacts/Contact;)Lcom/google/personalization/assist/annotate/api/nano/Contact;
    .locals 4

    .prologue
    .line 1167
    new-instance v1, Lcom/google/personalization/assist/annotate/api/nano/Contact;

    invoke-direct {v1}, Lcom/google/personalization/assist/annotate/api/nano/Contact;-><init>()V

    .line 1169
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/personalization/assist/annotate/api/nano/Contact;->name:Ljava/lang/String;

    .line 1170
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getPlusProfileId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/personalization/assist/annotate/api/nano/Contact;->profileId:Ljava/lang/String;

    .line 1171
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;-><init>()V

    .line 1172
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getPrimaryEmail()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->emailAddress:Ljava/lang/String;

    .line 1173
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iput-object v2, v1, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    .line 1175
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    instance-of v0, v0, Lcom/google/calendar/v2/client/service/api/common/FocusIdPrincipalKey;

    if-eqz v0, :cond_0

    .line 1177
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/FocusIdPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/FocusIdPrincipalKey;->getFocusId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/personalization/assist/annotate/api/nano/Contact;->focusId:J

    .line 1180
    :cond_0
    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 650
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->shouldIgnoreTextChange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->isNoOpTextChange(Landroid/text/Editable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->TAG:Ljava/lang/String;

    const-string v2, "afterTextChanged(s:%s): %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 v4, 0x1

    .line 664
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->debugDescription(Landroid/text/Spannable;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, "\n  "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 663
    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAfterTextChangeActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 668
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAfterTextChangeActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 669
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAfterTextChangeActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 675
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 678
    const-class v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    invoke-static {p1, v0}, Lcom/android/calendar/SpanUtils;->getAllSpansOfType(Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 679
    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 678
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 682
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mIsEventToReminderPromoInjectedInList:Z

    if-eqz v0, :cond_6

    .line 683
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->removeEventToReminderPromo()V

    .line 688
    :cond_6
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->setSuggestionResponse(Ljava/util/List;)V

    .line 690
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->afterTextChanged(Landroid/text/Editable;)V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 564
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 565
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->shouldIgnoreTextChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mSpansForPotentialRemoval:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 570
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAfterTextChangeActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 572
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v2

    .line 574
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->TAG:Ljava/lang/String;

    const-string v3, "beforeTextChanged(s:%s, start:%d, count:%d, after:%d): %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const/4 v5, 0x1

    .line 576
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x4

    invoke-static {v2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->debugDescription(Landroid/text/Spannable;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, "\n  "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 575
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 579
    :cond_2
    if-lez p3, :cond_3

    if-nez p4, :cond_3

    .line 582
    add-int v0, p2, p3

    const-class v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 583
    invoke-interface {v2, p2, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 584
    array-length v1, v0

    if-lez v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAfterTextChangeActions:Ljava/util/List;

    new-instance v2, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$SpanContentRemover;

    invoke-direct {v2, p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$SpanContentRemover;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;[Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 589
    :cond_3
    if-lez p3, :cond_4

    if-ne p3, p4, :cond_4

    .line 593
    add-int v0, p2, p3

    const-class v3, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 594
    invoke-interface {v2, p2, v0, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 595
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 596
    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v2, v5, v6}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 597
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 598
    iget-object v6, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mSpansForPotentialRemoval:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 600
    :cond_4
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    .line 602
    add-int v0, p2, p3

    const-class v3, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 603
    invoke-interface {v2, p2, v0, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 604
    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 605
    invoke-interface {v2, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected canChangeTitle()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangeTitle()Z

    move-result v0

    return v0
.end method

.method protected doNotRequestSuggestions(Landroid/text/Spanned;)V
    .locals 2

    .prologue
    .line 432
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->doNotRequestSuggestions(Landroid/text/Spanned;)V

    .line 433
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->cancelRequests()V

    .line 434
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->setSuggestionResponse(Ljava/util/List;)V

    .line 435
    return-void
.end method

.method protected doRequestSuggestions(Landroid/text/Spanned;)Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->requestSuggestions(Landroid/text/Spanned;)Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;

    move-result-object v0

    return-object v0
.end method

.method protected getLabelColorData()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .locals 1
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
    .line 373
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-static {v0}, Lcom/android/calendar/timely/EventColorAtom;->fromEvent(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)Lcom/android/calendar/timely/EventColorAtom;

    move-result-object v0

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
    .line 378
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getQueryManager()Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getQueryManager()Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    move-result-object v0

    return-object v0
.end method

.method protected getQueryManager()Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    return-object v0
.end method

.method protected isNew()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isNewEvent()Z

    move-result v0

    return v0
.end method

.method protected isQuickCreateAvailable()Z
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->isCalendarOnGoogleAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->isQuickCreateAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newSpanForFragment(Ljava/lang/String;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 501
    new-array v0, v3, [I

    const/4 v1, 0x2

    aput v1, v0, v2

    invoke-static {p2, v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;-><init>(Landroid/content/Context;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)V

    .line 521
    :goto_0
    return-object v0

    .line 503
    :cond_0
    new-array v0, v3, [I

    const/16 v1, 0x1a

    aput v1, v0, v2

    invoke-static {p2, v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, v4, p2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)V

    .line 505
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;->setConfig(Lcom/android/calendar/event/edit/segment/ChipConfig;)V

    goto :goto_0

    .line 507
    :cond_1
    new-array v0, v3, [I

    const/16 v1, 0x10a

    aput v1, v0, v2

    invoke-static {p2, v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    .line 509
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->getTimeLabel(Landroid/content/Context;Lcom/google/personalization/assist/annotate/api/nano/EventTime;Z)Ljava/lang/String;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_2

    move-object p1, v0

    .line 513
    :cond_2
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, v4, p2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)V

    .line 514
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;->setConfig(Lcom/android/calendar/event/edit/segment/ChipConfig;)V

    goto :goto_0

    .line 516
    :cond_3
    invoke-static {p2}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isConnectorFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 517
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$style;->QuickCreateConnectorTermTextAppearance:I

    invoke-direct {v0, v1, p2, v2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;-><init>(Landroid/content/Context;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;I)V

    goto :goto_0

    .line 521
    :cond_4
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;-><init>(Landroid/content/Context;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)V

    goto :goto_0
.end method

.method public onAfterSetInput()V
    .locals 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->hasHiddenPrivateDetails()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->busy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->onTitleChanged(Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->applyTitleAnnotations()V

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->observableCalendar()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mCalendarData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 366
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mCalendarData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mCalendarDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 368
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->updateQuickCreateState()V

    .line 369
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onDetachedFromWindow()V

    .line 198
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->dispose()V

    .line 199
    return-void
.end method

.method public onDidEnterFullScreen(Landroid/widget/FrameLayout;)V
    .locals 7

    .prologue
    .line 526
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onDidEnterFullScreen(Landroid/widget/FrameLayout;)V

    .line 528
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    sget v2, Lcom/android/calendar/R$id;->usage_hint_container:I

    .line 529
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    sget v3, Lcom/android/calendar/R$id;->usage_hint_list:I

    .line 530
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    sget v4, Lcom/android/calendar/R$id;->usage_hint_pointer:I

    .line 531
    invoke-virtual {p0, v4}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/4 v5, 0x0

    .line 532
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getSuggestionList()Landroid/widget/ListView;

    move-result-object v6

    .line 528
    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->initialize(Lcom/android/calendar/event/edit/segment/SuggestionEditText;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ListView;)V

    .line 533
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->refreshHints()V

    .line 535
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mShouldInjectEventToReminderPromo:Z

    if-eqz v0, :cond_0

    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mShouldInjectEventToReminderPromo:Z

    .line 537
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->injectEventToRemindersPromo()V

    .line 539
    :cond_0
    return-void
.end method

.method public onDidExitFullScreen(Landroid/widget/FrameLayout;)V
    .locals 1

    .prologue
    .line 548
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onDidExitFullScreen(Landroid/widget/FrameLayout;)V

    .line 549
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->dispose()V

    .line 550
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->applyQuickCreateInput(Z)V

    .line 551
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/event/data/AbstractEditManager;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/AbstractEditManager;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mCalendarData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mCalendarDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->cancelRequests()V

    .line 285
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    invoke-virtual {v0, v2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->setDelegate(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;)V

    .line 288
    :cond_0
    iput-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mCalendarData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 289
    iput-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 290
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    .line 167
    invoke-super {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onFinishInflate()V

    .line 169
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    new-instance v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    invoke-direct {v1, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    .line 171
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    invoke-virtual {v1, p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->setDelegate(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;)V

    .line 172
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->fetchCurrentLocationForQuery(Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;)V

    .line 174
    new-instance v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

    invoke-direct {v1, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

    .line 176
    const-class v1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->initialize(Ljava/lang/Class;Lcom/android/calendar/event/edit/segment/SuggestionEditText;Landroid/widget/ListAdapter;)V

    .line 178
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 180
    new-instance v2, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$1;)V

    .line 181
    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v3, v2}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v3, v2}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 184
    new-instance v2, Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    .line 185
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    sget v3, Lcom/android/calendar/R$dimen;->quickcreate_cursor_width:I

    .line 186
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 185
    invoke-virtual {v2, v1}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->setInputFieldCursorWidth(I)V

    .line 188
    new-instance v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    .line 189
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    invoke-direct {v1, v2, v3}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;-><init>(Landroid/content/Context;Lcom/android/calendar/event/edit/segment/UsageHintViewController;)V

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    .line 190
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->initialize(Lcom/android/calendar/event/edit/segment/SuggestionEditText;Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;)V

    .line 192
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

    .line 193
    return-void
.end method

.method public onPrepareForSave()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onPrepareForSave()V

    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->applyQuickCreateInput(Z)V

    .line 297
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->onSessionEnd()V

    .line 298
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->logSuggestLatency()V

    .line 299
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->logEventToReminderPromoView()V

    .line 300
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->logEvent()V

    .line 301
    return-void
.end method

.method public onQueriesInProgressChange(Z)V
    .locals 0

    .prologue
    .line 558
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 327
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getResolvedLocationsKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mResolvedLocations:Landroid/os/Bundle;

    .line 328
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->restoreSuggestionsInstanceState(Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestionAdapter;Landroid/os/Bundle;)V

    .line 329
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getUsageHintsDataKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 336
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getSessionIdKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_1

    .line 338
    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->onRestoredSessionId(Ljava/lang/String;)V

    .line 341
    :cond_1
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getEventToReminderPromoVisibleKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mShouldInjectEventToReminderPromo:Z

    .line 344
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 306
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getResolvedLocationsKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mResolvedLocations:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 307
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->saveSuggestionsInstanceState(Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestionAdapter;Landroid/os/Bundle;)V

    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 310
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getUsageHintsDataKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 314
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->isQuickCreateAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    .line 316
    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->getRequestExecutor()Lcom/google/android/calendar/net/RequestExecutor;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;

    .line 317
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getSessionIdKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getEventToReminderPromoVisibleKey()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mIsEventToReminderPromoInjectedInList:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    return-void
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/event/data/AbstractEditManager;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onSetInput(Lcom/android/calendar/event/data/AbstractEditManager;)V

    .line 204
    return-void
.end method

.method protected bridge synthetic onSetInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method protected onSuggestListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mIsEventToReminderPromoInjectedInList:Z

    if-eqz v0, :cond_1

    .line 699
    if-nez p3, :cond_0

    .line 700
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->convertEventToReminder()V

    .line 707
    :goto_0
    return-void

    .line 702
    :cond_0
    add-int/lit8 v3, p3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-super/range {v0 .. v5}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onSuggestListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 705
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onSuggestListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onSuggestionAccepted(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Landroid/text/SpannedString;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 472
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->onSuggestionAccepted()V

    .line 475
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->setSuggestionResponse(Ljava/util/List;)V

    .line 477
    invoke-static {p1}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->hasAnnotationFragments(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    iget-object v2, v0, Lcom/google/personalization/assist/annotate/api/nano/Annotation;->fragment:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    .line 480
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 481
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/16 v6, 0x1a

    aput v6, v5, v1

    invoke-static {v4, v5}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 480
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_0
    iget-object v4, v4, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->localBusiness:Lcom/google/personalization/assist/annotate/api/nano/Place;

    iget-object v4, v4, Lcom/google/personalization/assist/annotate/api/nano/Place;->placeReference:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->resolveStructuredLocation(Ljava/lang/String;)V

    goto :goto_1

    .line 488
    :cond_1
    invoke-static {p1}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->getLastFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v0

    .line 489
    iget-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mIsEventToReminderPromoInjectedInList:Z

    if-eqz v1, :cond_2

    .line 490
    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->shouldRemovePromoForFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->removeEventToReminderPromo()V

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mQueryManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;

    invoke-virtual {p2}, Landroid/text/SpannedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateQueryManager;->setLastAcceptedSuggestion(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method protected onSuggestionReady(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/String;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;)V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p3, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    .line 447
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 446
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->setSuggestionResponse(Ljava/util/List;)V

    .line 449
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->showSuggestions(Z)V

    .line 451
    iget-object v0, p3, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->suggestEventToReminder:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 452
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isNewEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->injectEventToRemindersPromo()V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->onSuggestionsReceived()V

    .line 457
    return-void
.end method

.method protected bridge synthetic onSuggestionReady(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p3, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->onSuggestionReady(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/String;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 612
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 613
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->isDisposed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->shouldIgnoreTextChange()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    sget-object v2, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->TAG:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 618
    sget-object v2, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->TAG:Ljava/lang/String;

    const-string v3, "onTextChanged(s:%s, start:%d, before:%d, count:%d): %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 619
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x4

    .line 620
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->debugDescription(Landroid/text/Spannable;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, "\n  "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 618
    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 623
    :cond_2
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mSpansForPotentialRemoval:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mAfterTextChangeActions:Ljava/util/List;

    .line 624
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 623
    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 626
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mSpansForPotentialRemoval:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v3

    .line 631
    add-int v0, p2, p4

    const-class v2, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 632
    invoke-interface {v3, p2, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 633
    array-length v4, v0

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_6

    aget-object v5, v0, v2

    .line 634
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mSpansForPotentialRemoval:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 635
    if-eqz v1, :cond_4

    .line 636
    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 637
    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 636
    invoke-interface {v3, v6, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 637
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 638
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 639
    invoke-interface {v3, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 633
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 624
    goto :goto_1

    .line 644
    :cond_6
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mSpansForPotentialRemoval:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/16 :goto_0
.end method

.method protected onTitleChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->setInputText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setSelection(I)V

    .line 405
    :cond_0
    return-void
.end method

.method public onWillExitFullScreen(Landroid/widget/FrameLayout;Z)V
    .locals 0

    .prologue
    .line 543
    invoke-super {p0, p1, p2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onWillExitFullScreen(Landroid/widget/FrameLayout;Z)V

    .line 544
    return-void
.end method

.method protected requestLatencyActionStringResId()I
    .locals 1

    .prologue
    .line 439
    sget v0, Lcom/android/calendar/R$string;->latency_quick_create_median_request_duration:I

    return v0
.end method

.method protected bridge synthetic setInputEntity(Lcom/android/calendar/event/data/AbstractEditManager;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->setInputEntity(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method protected setInputEntity(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 351
    return-void
.end method

.method protected shouldForceHideKeyboard()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->isInitialTooltipEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->isQuickCreateAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldRequestSuggestions(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 417
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    if-nez v1, :cond_0

    .line 418
    sget-object v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->TAG:Ljava/lang/String;

    const-string v2, "No event in onRequestSuggestions"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 422
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->shouldRequestSuggestions(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method
