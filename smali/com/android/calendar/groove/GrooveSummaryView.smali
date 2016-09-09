.class public Lcom/android/calendar/groove/GrooveSummaryView;
.super Landroid/widget/LinearLayout;
.source "GrooveSummaryView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/GrooveSummaryView$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static mWaitingTextIndex:I


# instance fields
.field private mCalendarNameTextView:Landroid/widget/TextView;

.field private mContractFrameView:Landroid/widget/LinearLayout;

.field private mContractView:Landroid/widget/LinearLayout;

.field private mDivider:Landroid/view/View;

.field private mDurationTextView:Landroid/widget/TextView;

.field private mEditButtonContainer:Landroid/widget/LinearLayout;

.field private mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

.field private mFrequencyTextView:Landroid/widget/TextView;

.field private mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTitleView:Landroid/widget/TextView;

.field private mWaitingTextView:Landroid/widget/TextView;

.field private waitingTextUpdateTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/calendar/groove/GrooveSummaryView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/GrooveSummaryView;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/groove/GrooveSummaryView;->mWaitingTextIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 250
    new-instance v0, Lcom/android/calendar/groove/GrooveSummaryView$4;

    invoke-direct {v0, p0}, Lcom/android/calendar/groove/GrooveSummaryView$4;-><init>(Lcom/android/calendar/groove/GrooveSummaryView;)V

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->waitingTextUpdateTask:Ljava/lang/Runnable;

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 68
    sget v1, Lcom/android/calendar/R$layout;->groove_summary_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/calendar/groove/GrooveSummaryView;->setOrientation(I)V

    .line 70
    sget v0, Lcom/android/calendar/R$id;->summary_title:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mTitleView:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/android/calendar/R$id;->contract_frame:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mContractFrameView:Landroid/widget/LinearLayout;

    .line 72
    sget v0, Lcom/android/calendar/R$id;->contract:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mContractView:Landroid/widget/LinearLayout;

    .line 73
    sget v0, Lcom/android/calendar/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 74
    sget v0, Lcom/android/calendar/R$id;->waiting_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mWaitingTextView:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/android/calendar/R$id;->frequency_summary:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mFrequencyTextView:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/android/calendar/R$id;->duration_summary:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mDurationTextView:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/android/calendar/R$id;->edit_button_container:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mEditButtonContainer:Landroid/widget/LinearLayout;

    .line 78
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mEditButtonContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/calendar/groove/GrooveSummaryView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/groove/GrooveSummaryView$1;-><init>(Lcom/android/calendar/groove/GrooveSummaryView;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget v0, Lcom/android/calendar/R$id;->calendar_name:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mCalendarNameTextView:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/android/calendar/R$id;->divider:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mDivider:Landroid/view/View;

    .line 105
    sget v0, Lcom/android/calendar/R$id;->floating_action_button:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/utils/widgets/FloatingActionButton;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

    .line 106
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

    new-instance v1, Lcom/android/calendar/groove/GrooveSummaryView$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/groove/GrooveSummaryView$2;-><init>(Lcom/android/calendar/groove/GrooveSummaryView;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setSize(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 128
    sget v0, Lcom/android/calendar/R$id;->more_options_button:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    sget v0, Lcom/android/calendar/R$id;->summary_header:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/groove/GrooveSummaryView;)Lcom/google/android/calendar/api/HabitModifications;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/groove/GrooveSummaryView;)Lcom/android/calendar/utils/widgets/FloatingActionButton;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/groove/GrooveSummaryView;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveSummaryView;->announceWaitingText()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mContractView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/groove/GrooveSummaryView;Landroid/view/ViewGroup;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/groove/GrooveSummaryView;->changeTextColorOfChildViews(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mEditButtonContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mContractFrameView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mWaitingTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/android/calendar/groove/GrooveSummaryView;->mWaitingTextIndex:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0

    .prologue
    .line 38
    sput p0, Lcom/android/calendar/groove/GrooveSummaryView;->mWaitingTextIndex:I

    return p0
.end method

.method static synthetic access$708()I
    .locals 2

    .prologue
    .line 38
    sget v0, Lcom/android/calendar/groove/GrooveSummaryView;->mWaitingTextIndex:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/calendar/groove/GrooveSummaryView;->mWaitingTextIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/calendar/groove/GrooveSummaryView;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/calendar/groove/GrooveSummaryView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->waitingTextUpdateTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private announceWaitingText()V
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSummaryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$array;->groove_checking_schedule_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string v1, " "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 248
    return-void
.end method

.method private changeTextColorOfChildViews(Landroid/view/ViewGroup;I)V
    .locals 3

    .prologue
    .line 234
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 235
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 236
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 237
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 240
    :cond_1
    return-void
.end method

.method private hasMultipleGrooveSupportedAccounts()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->hasLoaded()Z

    move-result v0

    const-string v1, "CalendarsCache not available"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 222
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->getData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 223
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveUtils;->isPrimaryGoogleCalendar(Lcom/android/calendar/timely/data/CalendarItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    add-int/lit8 v0, v1, 0x1

    .line 225
    if-le v0, v3, :cond_2

    move v2, v3

    .line 230
    :cond_0
    return v2

    :cond_1
    move v0, v1

    :cond_2
    move v1, v0

    .line 229
    goto :goto_0
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 2

    .prologue
    .line 164
    if-nez p1, :cond_0

    sget v0, Lcom/android/calendar/R$color;->groove_wizard_button_white:I

    .line 166
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSummaryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 167
    new-instance v1, Lcom/android/calendar/groove/GrooveSummaryView$3;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/groove/GrooveSummaryView$3;-><init>(Lcom/android/calendar/groove/GrooveSummaryView;I)V

    invoke-static {p0, v1}, Lcom/android/calendar/groove/AnimatorHelper;->createFadeOutFadeInAnimator(Landroid/view/View;Lcom/android/calendar/groove/AnimatorHelper$FadeOutFadeInAnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 179
    return-void

    .line 165
    :cond_0
    sget v0, Lcom/android/calendar/R$color;->groove_wizard_button_black:I

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 134
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 135
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setClickable(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mContractFrameView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mWaitingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 146
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSummaryView;->waitingTextUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    :cond_0
    return-void
.end method

.method public setFabColor(I)V
    .locals 3

    .prologue
    .line 152
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

    sget v1, Lcom/android/calendar/R$drawable;->quantum_ic_done_grey600_24:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setIcon(I)V

    .line 154
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSummaryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$color;->quantum_grey600:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setColor(I)V

    .line 161
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;

    sget v1, Lcom/android/calendar/R$drawable;->quantum_ic_done_white_24:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setIcon(I)V

    .line 158
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public setGrooveModifications(Lcom/google/android/calendar/api/HabitModifications;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    .line 183
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_0

    .line 185
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSummaryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/groove/GrooveCategories;->getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/groove/GrooveCategories;

    move-result-object v0

    .line 188
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/groove/GrooveCategories;->getGrooveNameForType(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitContract;->getNumInstancesPerInterval()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 193
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSummaryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->every_day:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mFrequencyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mDurationTextView:Landroid/widget/TextView;

    .line 204
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSummaryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 203
    invoke-static {v2, v1}, Lcom/android/calendar/groove/GrooveUtils;->getDurationAndPreferredTimesString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mDurationTextView:Landroid/widget/TextView;

    .line 206
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSummaryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/calendar/groove/GrooveUtils;->getDurationAndPreferredTimesAccessibilityString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveSummaryView;->hasMultipleGrooveSupportedAccounts()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mCalendarNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    .line 211
    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mCalendarNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :goto_2
    return-void

    .line 189
    :cond_1
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getSummary()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSummaryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$plurals;->groove_n_times_a_week:I

    .line 196
    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitContract;->getNumInstancesPerInterval()I

    move-result v3

    .line 195
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 197
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 198
    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitContract;->getNumInstancesPerInterval()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 197
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView;->mCalendarNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
