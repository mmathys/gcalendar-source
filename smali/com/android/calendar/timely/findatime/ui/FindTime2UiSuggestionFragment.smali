.class public Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;
.super Landroid/app/ListFragment;
.source "FindTime2UiSuggestionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/calendar/event/FindTimeSuggestionUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;
    }
.end annotation


# static fields
.field private static final EMPTY_SUGGESTION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/SuggestionRow;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

.field private mContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDogfoodBar:Landroid/view/View;

.field private mDogfoodBarSubmit:Landroid/widget/TextView;

.field private mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

.field private mEmptyView:Landroid/view/View;

.field private mEventColor:I

.field private mFooter:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;

.field private mLoadingStringIndex:I

.field private mLoadingStrings:[Ljava/lang/String;

.field private mLoadingStringsLastIndex:I

.field private mLoadingTextView:Landroid/widget/TextView;

.field private mNoResultsSubtitle:Landroid/widget/TextView;

.field private mNoResultsTitle:Landroid/widget/TextView;

.field private mNoResultsView:Landroid/view/View;

.field private mNumberOfItemsShown:I

.field private mProgressContainerView:Landroid/view/View;

.field private mShowMoreView:Landroid/view/View;

.field private mTextFadeInAnimation:Landroid/animation/Animator;

.field private mTextFadeInOutAnimation:Landroid/animation/Animator;

.field private mTimeframeDurationChangeButtonView:Landroid/widget/TextView;

.field private mTimeframeDurationView:Landroid/widget/TextView;

.field private mTimezone:Ljava/util/TimeZone;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mToolbarElevation:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->EMPTY_SUGGESTION:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 106
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNumberOfItemsShown:I

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;Lcom/android/calendar/timely/SuggestionRow;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->finish(Lcom/android/calendar/timely/SuggestionRow;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->setTimeframeDurationLabel()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->notifyListenerQuery()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListener:Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringsLastIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTextFadeInAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTextFadeInOutAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->logFindLaterSuggestions()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTimezone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public static convertDurationValueToLabel(Landroid/content/res/Resources;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 447
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 448
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 449
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0, v2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getDurationLabel(Landroid/content/res/Resources;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 451
    :cond_0
    return-object v3
.end method

.method private finish(Lcom/android/calendar/timely/SuggestionRow;)V
    .locals 1

    .prologue
    .line 646
    if-eqz p1, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListener:Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;

    invoke-interface {v0, p1}, Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;->onTimeSlotSelected(Lcom/android/calendar/timely/SuggestionRow;)V

    .line 651
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListener:Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;

    invoke-interface {v0}, Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;->onCancelled()V

    goto :goto_0
.end method

.method public static getDurationLabel(Landroid/content/res/Resources;IZ)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    div-int/lit8 v0, p1, 0x3c

    .line 457
    rem-int/lit8 v2, p1, 0x3c

    .line 458
    if-eqz v0, :cond_0

    .line 459
    if-eqz p2, :cond_3

    .line 460
    sget v3, Lcom/android/calendar/R$string;->find_time_duration_hour_label_abbrev:I

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 459
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    if-eqz v2, :cond_0

    .line 464
    sget v0, Lcom/android/calendar/R$string;->find_time_duration_hour_minute_word_break:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_0
    if-eqz p1, :cond_1

    if-eqz v2, :cond_2

    .line 468
    :cond_1
    if-eqz p2, :cond_4

    .line 469
    sget v0, Lcom/android/calendar/R$string;->find_time_duration_minute_label_abbrev:I

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-virtual {p0, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 468
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 461
    :cond_3
    sget v3, Lcom/android/calendar/R$plurals;->find_time_duration_hour_label:I

    new-array v4, v7, [Ljava/lang/Object;

    .line 462
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 461
    invoke-virtual {p0, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 470
    :cond_4
    sget v0, Lcom/android/calendar/R$plurals;->find_time_duration_minute_label:I

    new-array v3, v7, [Ljava/lang/Object;

    .line 471
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 470
    invoke-virtual {p0, v0, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private hasOnlyNotFoundReasons(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/OmittedAttendee;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 561
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/OmittedAttendee;

    .line 562
    iget v0, v0, Lcom/android/calendar/timely/OmittedAttendee;->reason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 563
    const/4 v0, 0x0

    .line 566
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hideProgressContainer()V
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mProgressContainerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 897
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I

    .line 898
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTextFadeInOutAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTextFadeInOutAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTextFadeInAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTextFadeInAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 904
    :cond_1
    return-void
.end method

.method private isSuggestionListScrolled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 399
    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_1

    move v0, v1

    .line 414
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 406
    if-nez v2, :cond_0

    .line 412
    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 413
    if-nez v2, :cond_2

    move v2, v1

    .line 414
    :goto_1
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_1
.end method

.method private logFindLaterSuggestions()V
    .locals 6

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 595
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/calendar/R$string;->analytics_action_ft_suggestion_view:I

    .line 596
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/calendar/R$string;->analytics_label_ft_try_later:I

    .line 597
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 594
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 598
    return-void
.end method

.method private logOnOpen()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 654
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    .line 656
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 657
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/calendar/R$string;->analytics_action_ft_suggestion_view:I

    .line 658
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/calendar/R$string;->analytics_label_ft_opened:I

    .line 659
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 656
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 661
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 662
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/calendar/R$string;->analytics_action_ft_filter_duration:I

    .line 663
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/calendar/R$string;->analytics_label_ft_initial:I

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iget v8, v8, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    .line 665
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 664
    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 661
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 668
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 669
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/calendar/R$string;->analytics_action_ft_filter_timeframe:I

    .line 670
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/calendar/R$string;->analytics_label_ft_initial:I

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    .line 672
    invoke-virtual {v8}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeTag()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 671
    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 668
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 674
    return-void
.end method

.method private logShowMoreClick()V
    .locals 6

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 678
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/calendar/R$string;->analytics_action_ft_suggestion_view:I

    .line 679
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/calendar/R$string;->analytics_label_ft_show_more:I

    .line 680
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 677
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 681
    return-void
.end method

.method public static newInstance(IILcom/android/calendar/timely/findatime/ui/DurationTimeframe;Ljava/lang/String;Ljava/lang/String;)Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;
    .locals 4

    .prologue
    .line 139
    new-instance v0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    invoke-direct {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;-><init>()V

    .line 140
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 141
    sget-object v2, Lcom/android/calendar/event/FindTimeActivity;->SUPPORTED_TYPES:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    const-string v2, "type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-string v2, "event_color"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    const-string v2, "duration_timeframe"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 147
    const-string v2, "timezone"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "account_name"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 150
    return-object v0
.end method

.method private notifyListenerQuery()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListener:Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListener:Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-interface {v0, v1}, Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;->onQuery(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    .line 421
    :cond_0
    return-void
.end method

.method private setDurationTimeframe(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    .line 441
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->setTimeframeDurationLabel()V

    .line 442
    return-void
.end method

.method private setErrorScreen(ZZZ)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 509
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setImportantForAccessibility(I)V

    .line 511
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDogfoodBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 513
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->hideProgressContainer()V

    .line 514
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->clear()V

    .line 515
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->notifyDataSetChanged()V

    .line 517
    if-eqz p1, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mFooter:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 519
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNoResultsTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$string;->find_time_empty_list_offline_label_title:I

    .line 520
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNoResultsSubtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$string;->find_time_empty_list_offline_body_title:I

    .line 522
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :goto_0
    invoke-static {}, Lcom/android/calendar/A11yHelper;->getInstance()Lcom/android/calendar/A11yHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/A11yHelper;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNoResultsView:Landroid/view/View;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 550
    :cond_0
    return-void

    .line 523
    :cond_1
    if-eqz p2, :cond_3

    .line 524
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNoResultsTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$string;->find_time_empty_list_failed_load_calendars_label_title:I

    .line 525
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    if-eqz p3, :cond_2

    .line 528
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mFooter:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 529
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNoResultsSubtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$string;->find_time_empty_list_not_found_all_calendars_body_title:I

    .line 530
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mFooter:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 534
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNoResultsSubtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$string;->find_time_empty_list_failed_load_calendars_body_title:I

    .line 535
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 539
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mFooter:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 540
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNoResultsTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$string;->find_time_empty_list_label_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNoResultsSubtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$string;->find_time_empty_list_label_body:I

    .line 542
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTimeframeDurationLabel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    .line 425
    invoke-static {p0, v0, v4}, Lcom/android/calendar/timely/findatime/ui/LabelsUtil;->getTimeframeDurationLabel(Landroid/app/Fragment;Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;Z)Ljava/lang/String;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTimeframeDurationView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->accessibility_find_time_timeframe_duration_label:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTimeframeDurationView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 432
    return-void
.end method

.method private setupStatusbar()V
    .locals 4

    .prologue
    .line 389
    .line 390
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->createInstance(Landroid/view/Window;)Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v0

    .line 392
    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mEventColor:I

    .line 393
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$color;->transparent_black_20:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 392
    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->blendColor(II)I

    move-result v1

    .line 394
    invoke-virtual {v0, v1}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->setStatusbarColor(I)V

    .line 395
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->setLightStatusbar(Z)V

    .line 396
    return-void
.end method

.method private setupSuggestionListView(Lcom/android/calendar/timely/SuggestionRows;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 571
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setImportantForAccessibility(I)V

    .line 573
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->setSuggestionRows(Lcom/android/calendar/timely/SuggestionRows;)V

    .line 575
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNumberOfItemsShown:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNumberOfItemsShown:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNumberOfItemsShown:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->setCount(I)V

    .line 577
    iput v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNumberOfItemsShown:I

    .line 579
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/timely/SuggestionRows;->hasBestTimes()Z

    move-result v0

    if-nez v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->showMore()V

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->notifyDataSetChanged()V

    .line 586
    return-void
.end method

.method private showListFooter(Z)V
    .locals 2

    .prologue
    .line 616
    if-eqz p1, :cond_1

    .line 618
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mShowMoreView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 620
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mShowMoreView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mShowMoreView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mShowMoreView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0
.end method


# virtual methods
.method public customizeSystemDecorations()V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->setupStatusbar()V

    .line 591
    return-void
.end method

.method public getDurationTimeframe()Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;
    .locals 2

    .prologue
    .line 436
    new-instance v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;-><init>(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    return-object v0
.end method

.method public getLoadingString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 639
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStrings:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 640
    :cond_0
    const-string v0, ""

    .line 642
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStrings:[Ljava/lang/String;

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->edit_title_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mToolbarElevation:I

    .line 259
    new-instance v0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->EMPTY_SUGGESTION:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;-><init>(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    .line 260
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    .line 263
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->find_time_list_show_more_button:I

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    .line 264
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mShowMoreView:Landroid/view/View;

    .line 266
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mShowMoreView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mShowMoreView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 269
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDogfoodBarSubmit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 273
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$3;-><init>(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 302
    if-eqz p1, :cond_0

    .line 303
    const-string v0, "loading_string_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I

    .line 304
    const-string v0, "duration_timeframe"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    .line 307
    const-string v0, "number_of_items_shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNumberOfItemsShown:I

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->setDurationTimeframe(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    .line 313
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTimeframeDurationChangeButtonView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    new-instance v1, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$4;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$4;-><init>(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->setOnItemMoreInformationRequestListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 325
    return-void

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->logOnOpen()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 330
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    .line 331
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 358
    sget v1, Lcom/android/calendar/R$id;->timeframe_duration_change_button:I

    if-ne v0, v1, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListener:Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-interface {v0, v1}, Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;->onFiltersOpen(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    sget v1, Lcom/android/calendar/R$id;->show_more:I

    if-ne v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListener:Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;

    invoke-interface {v0}, Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;->onShowMore()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mType:I

    .line 158
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "duration_timeframe"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    .line 159
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTimezone:Ljava/util/TimeZone;

    .line 160
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAccountName:Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "event_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mEventColor:I

    .line 164
    sget v0, Lcom/android/calendar/R$layout;->find_time_suggestion_fragment_v2:I

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 166
    sget v1, Lcom/android/calendar/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 167
    sget v1, Lcom/android/calendar/R$id;->progress_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mProgressContainerView:Landroid/view/View;

    .line 168
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mProgressContainerView:Landroid/view/View;

    sget v2, Lcom/android/calendar/R$id;->loading_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingTextView:Landroid/widget/TextView;

    .line 170
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNoResultsView:Landroid/view/View;

    .line 171
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNoResultsView:Landroid/view/View;

    sget v2, Lcom/android/calendar/R$id;->empty_list_view_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNoResultsTitle:Landroid/widget/TextView;

    .line 172
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNoResultsView:Landroid/view/View;

    sget v2, Lcom/android/calendar/R$id;->empty_list_view_subtitle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNoResultsSubtitle:Landroid/widget/TextView;

    .line 173
    sget v1, Lcom/android/calendar/R$id;->empty:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mEmptyView:Landroid/view/View;

    .line 175
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mEventColor:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 176
    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    sget v2, Lcom/android/calendar/R$string;->propose_time_title:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$1;-><init>(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    sget v1, Lcom/android/calendar/R$id;->find_time_2_suggestion_list_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContainer:Landroid/view/View;

    .line 188
    sget v1, Lcom/android/calendar/R$id;->dogfood_feedback_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDogfoodBar:Landroid/view/View;

    .line 189
    sget v1, Lcom/android/calendar/R$id;->dogfood_feedback_bar_submit:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDogfoodBarSubmit:Landroid/widget/TextView;

    .line 190
    sget v1, Lcom/android/calendar/R$id;->footer:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mFooter:Landroid/view/View;

    .line 192
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 194
    sget v1, Lcom/android/calendar/R$id;->timeframe_duration:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTimeframeDurationView:Landroid/widget/TextView;

    .line 196
    sget v1, Lcom/android/calendar/R$id;->timeframe_duration_change_button:I

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTimeframeDurationChangeButtonView:Landroid/widget/TextView;

    .line 198
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTimeframeDurationChangeButtonView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 200
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    sget v1, Lcom/android/calendar/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 202
    iget v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mEventColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$array;->find_time_loading_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStrings:[Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStrings:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringsLastIndex:I

    .line 207
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$animator;->find_time_loading_text_in_out:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTextFadeInOutAnimation:Landroid/animation/Animator;

    .line 209
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$animator;->find_time_loading_text_in:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTextFadeInAnimation:Landroid/animation/Animator;

    .line 211
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTextFadeInOutAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 212
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTextFadeInAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 213
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTextFadeInOutAnimation:Landroid/animation/Animator;

    new-instance v2, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;-><init>(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 250
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 335
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 337
    const-string v1, "number_of_items_shown"

    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    .line 338
    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    .line 337
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    const-string v0, "loading_string_index"

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    const-string v0, "duration_timeframe"

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 342
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 373
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->isSuggestionListScrolled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mToolbarElevation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setElevation(F)V

    goto :goto_0

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setElevation(F)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public setException(Lcom/android/calendar/timely/FindTimeSuggestionException;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 632
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    .line 633
    invoke-static {v0}, Lcom/android/calendar/Utils;->isConnectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 632
    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->setErrorScreen(ZZZ)V

    .line 635
    return-void

    :cond_0
    move v0, v2

    .line 633
    goto :goto_0
.end method

.method public setListener(Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListener:Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;

    .line 486
    return-void
.end method

.method public setLoading(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 490
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNoResultsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mDogfoodBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mProgressContainerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringsLastIndex:I

    if-ge v0, v1, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTextFadeInOutAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 501
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->setDurationTimeframe(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    .line 502
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStrings:[Ljava/lang/String;

    iget v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringsLastIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setNoSuggestion(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/OmittedAttendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 555
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;

    .line 556
    invoke-static {v0}, Lcom/android/calendar/Utils;->isConnectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v1, :cond_1

    .line 557
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->hasOnlyNotFoundReasons(Ljava/util/List;)Z

    move-result v2

    .line 555
    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->setErrorScreen(ZZZ)V

    .line 558
    return-void

    :cond_0
    move v0, v2

    .line 556
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setSuggestions(Lcom/android/calendar/timely/SuggestionRows;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/SuggestionRows;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/OmittedAttendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 605
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->hideProgressContainer()V

    .line 606
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mNoResultsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 608
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->setupSuggestionListView(Lcom/android/calendar/timely/SuggestionRows;)V

    .line 609
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->hasMoreToShow()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->showListFooter(Z)V

    .line 610
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mFooter:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 611
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 481
    return-void
.end method

.method public showMore()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->showMore()V

    .line 347
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->notifyDataSetChanged()V

    .line 348
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAdapter:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->hasMoreToShow()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->showListFooter(Z)V

    .line 349
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->logShowMoreClick()V

    .line 350
    return-void
.end method
