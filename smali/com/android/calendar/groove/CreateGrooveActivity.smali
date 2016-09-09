.class public Lcom/android/calendar/groove/CreateGrooveActivity;
.super Landroid/app/Activity;
.source "CreateGrooveActivity.java"

# interfaces
.implements Lcom/android/calendar/event/edit/EditDetailsFragment$OnEditChangedListener;
.implements Lcom/android/calendar/groove/CategoryBackgroundHelper$Listener;
.implements Lcom/android/calendar/groove/CustomGrooveFragment$Listener;
.implements Lcom/android/calendar/groove/GrooveCategorySelectionFragment$Listener;
.implements Lcom/android/calendar/groove/GrooveDurationSelectionView$Listener;
.implements Lcom/android/calendar/groove/GrooveFrequencySelectionView$Listener;
.implements Lcom/android/calendar/groove/GroovePreferredTimesSelectionView$Listener;
.implements Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$Listener;
.implements Lcom/android/calendar/groove/GrooveSummaryView$Listener;
.implements Lcom/android/calendar/newapi/screen/GrooveEditScreenListener;


# instance fields
.field private forceFinishTask:Ljava/lang/Runnable;

.field private mAnalyticsCategory:Ljava/lang/String;

.field private mBackButton:Lcom/android/calendar/groove/BackButtonView;

.field private mBanner:Landroid/widget/ImageView;

.field private mCategoryFragment:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

.field private mConfirmedScheduling:Z

.field private mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

.field private mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

.field private mHabitModificationsMoreOptions:Lcom/google/android/calendar/api/HabitModifications;

.field private mInstanceCreated:Z

.field private mIsTablet:Z

.field private mLogger:Lcom/android/calendar/AnalyticsLogger;

.field private mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

.field private mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

.field private mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 482
    new-instance v0, Lcom/android/calendar/groove/CreateGrooveActivity$4;

    invoke-direct {v0, p0}, Lcom/android/calendar/groove/CreateGrooveActivity$4;-><init>(Lcom/android/calendar/groove/CreateGrooveActivity;)V

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->forceFinishTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/groove/CreateGrooveActivity;)Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/groove/CreateGrooveActivity;Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/groove/CreateGrooveActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/calendar/groove/CreateGrooveActivity;->configureFragments(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/groove/CreateGrooveActivity;)Lcom/google/android/calendar/api/HabitModifications;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/calendar/groove/CreateGrooveActivity;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mConfirmedScheduling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/calendar/groove/CreateGrooveActivity;)Lcom/android/calendar/groove/GrooveScheduleFragment;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/groove/CreateGrooveActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/calendar/groove/CreateGrooveActivity;->finishWithMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/calendar/groove/CreateGrooveActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->forceFinishTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/groove/CreateGrooveActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/groove/CreateGrooveActivity;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mInstanceCreated:Z

    return v0
.end method

.method private configureFragments(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->createHabitModifications()Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    .line 171
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    .line 172
    new-instance v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    invoke-direct {v0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mCategoryFragment:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    .line 173
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->fragment_container:I

    iget-object v2, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mCategoryFragment:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    sget-object v3, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->TAG:Ljava/lang/String;

    .line 174
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 193
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v0, "habit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    .line 178
    const-string v0, "habit_more_options"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModificationsMoreOptions:Lcom/google/android/calendar/api/HabitModifications;

    .line 180
    const-string v0, "confirmed_scheduling"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mConfirmedScheduling:Z

    .line 181
    const-string v0, "instance_created"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mInstanceCreated:Z

    .line 182
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    .line 183
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->TAG:Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mCategoryFragment:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    .line 185
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/groove/GrooveScheduleFragment;->TAG:Ljava/lang/String;

    .line 186
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/GrooveScheduleFragment;

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    .line 187
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->setGrooveModifications(Lcom/google/android/calendar/api/HabitModifications;)V

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->maybeShowActionBarControls()V

    .line 191
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->customizeBackground()V

    goto :goto_0
.end method

.method private createHabitModifications()Lcom/google/android/calendar/api/HabitModifications;
    .locals 4

    .prologue
    .line 640
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->hasLoaded()Z

    move-result v0

    const-string v1, "CalendarsCache not available"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 643
    invoke-static {p0}, Lcom/android/calendar/groove/GrooveUtils;->getGrooveSupportedCalendar(Landroid/content/Context;)Lcom/android/calendar/timely/data/CalendarItem;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 645
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getOwnerAccount()Ljava/lang/String;

    move-result-object v2

    .line 646
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v3, "Could not find primary calendar"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 647
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V

    .line 649
    sget-object v1, Lcom/google/android/calendar/api/CalendarApi;->HabitFactory:Lcom/google/android/calendar/api/HabitFactory;

    invoke-interface {v1, v0}, Lcom/google/android/calendar/api/HabitFactory;->newHabit(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v0

    return-object v0

    .line 646
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createImageFadeInAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 464
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 465
    const-wide/16 v2, 0xd2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 466
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 467
    return-object v0

    .line 464
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private customizeBackground()V
    .locals 3

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->isPastScheduleFragmentInWizardFlow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mBanner:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    invoke-static {}, Lcom/android/calendar/groove/CategoryBackgroundHelper;->getInstance()Lcom/android/calendar/groove/CategoryBackgroundHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    .line 523
    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/calendar/api/HabitUtil;->getParentType(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mBanner:Landroid/widget/ImageView;

    .line 522
    invoke-virtual {v0, p0, v1, v2, p0}, Lcom/android/calendar/groove/CategoryBackgroundHelper;->requestBackgroundImage(Landroid/app/Activity;ILandroid/view/View;Lcom/android/calendar/groove/CategoryBackgroundHelper$Listener;)V

    goto :goto_0
.end method

.method private customizeTabletUI()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 581
    sget v0, Lcom/android/calendar/R$id;->banner_image:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mBanner:Landroid/widget/ImageView;

    .line 582
    sget v0, Lcom/android/calendar/R$id;->fragment_container:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 583
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 584
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->getMaximumWindowDimension(Landroid/content/res/Resources;)I

    move-result v2

    .line 587
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$dimen;->groove_category_margin_horizontal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 588
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 589
    sget v4, Lcom/android/calendar/R$id;->inset_frame:I

    invoke-virtual {p0, v4}, Lcom/android/calendar/groove/CreateGrooveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 594
    :cond_0
    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 595
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 596
    sget v0, Lcom/android/calendar/R$id;->back_arrow:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/BackButtonView;

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mBackButton:Lcom/android/calendar/groove/BackButtonView;

    .line 597
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mBackButton:Lcom/android/calendar/groove/BackButtonView;

    invoke-virtual {v0, v5}, Lcom/android/calendar/groove/BackButtonView;->setIcon(I)V

    .line 598
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mBackButton:Lcom/android/calendar/groove/BackButtonView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/groove/BackButtonView;->setTheme(IZ)V

    .line 599
    return-void
.end method

.method private finishWithMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/calendar/Utils;->showFeedback(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 495
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->finish()V

    .line 496
    return-void
.end method

.method private hideActionBarControls()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mBackButton:Lcom/android/calendar/groove/BackButtonView;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mBackButton:Lcom/android/calendar/groove/BackButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/BackButtonView;->setVisibility(I)V

    .line 514
    :cond_0
    return-void
.end method

.method private initMoreOptionsHabitModification()V
    .locals 2

    .prologue
    .line 609
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->HabitFactory:Lcom/google/android/calendar/api/HabitFactory;

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitFactory;->modifyHabit(Lcom/google/android/calendar/api/Habit;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModificationsMoreOptions:Lcom/google/android/calendar/api/HabitModifications;

    .line 610
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModificationsMoreOptions:Lcom/google/android/calendar/api/HabitModifications;

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->setGrooveModifications(Lcom/google/android/calendar/api/HabitModifications;)V

    .line 611
    return-void
.end method

.method private initStatusBar()V
    .locals 3

    .prologue
    .line 550
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 552
    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 553
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x500

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 563
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-static {}, Lcom/android/calendar/Utils;->isMOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    sget v0, Lcom/android/calendar/R$color;->transparent_black_04:I

    .line 574
    :goto_0
    invoke-static {v1}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->createInstance(Landroid/view/Window;)Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v1

    .line 575
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->setStatusbarColor(I)V

    .line 578
    :cond_0
    return-void

    .line 573
    :cond_1
    sget v0, Lcom/android/calendar/R$color;->transparent_black_20:I

    goto :goto_0
.end method

.method private isPastScheduleFragmentInWizardFlow()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 537
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 538
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    move v1, v0

    .line 539
    :goto_0
    if-ge v1, v2, :cond_0

    .line 541
    sget-object v3, Lcom/android/calendar/groove/GrooveScheduleFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v4

    .line 542
    invoke-interface {v4}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 541
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 543
    const/4 v0, 0x1

    .line 546
    :cond_0
    return v0

    .line 539
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isShowingCategorySelection()Z
    .locals 3

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 531
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 532
    if-lez v0, :cond_0

    sget-object v1, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    .line 533
    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logEventToAnalytics(I)V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mLogger:Lcom/android/calendar/AnalyticsLogger;

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mAnalyticsCategory:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/CreateGrooveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method private logEventToAnalytics(ILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mLogger:Lcom/android/calendar/AnalyticsLogger;

    iget-object v2, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mAnalyticsCategory:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/CreateGrooveActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 476
    return-void
.end method

.method private logViewToAnalytics(I)V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mLogger:Lcom/android/calendar/AnalyticsLogger;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/CreateGrooveActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/calendar/AnalyticsLogger;->trackView(Landroid/content/Context;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method private maybeShowActionBarControls()V
    .locals 2

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->isShowingCategorySelection()Z

    move-result v0

    .line 500
    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mBackButton:Lcom/android/calendar/groove/BackButtonView;

    if-eqz v1, :cond_0

    .line 502
    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mBackButton:Lcom/android/calendar/groove/BackButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/BackButtonView;->setVisibility(I)V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mBackButton:Lcom/android/calendar/groove/BackButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/BackButtonView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showScheduleFragment(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    .line 278
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    .line 277
    invoke-static {p1, p2, v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->newInstance(ILjava/lang/String;Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/android/calendar/groove/GrooveScheduleFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    .line 279
    sget v0, Lcom/android/calendar/R$string;->analytics_goal3_frequency:I

    invoke-direct {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->logViewToAnalytics(I)V

    .line 280
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->useSlideTransitions(Landroid/app/Activity;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 282
    invoke-static {}, Lcom/android/calendar/Utils;->isLollipopMr1OrLater()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    sget v1, Lcom/android/calendar/R$animator;->stay:I

    sget v2, Lcom/android/calendar/R$animator;->fade_out:I

    sget v3, Lcom/android/calendar/R$animator;->stay:I

    sget v4, Lcom/android/calendar/R$animator;->fade_out:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 287
    :cond_0
    sget v1, Lcom/android/calendar/R$id;->fragment_container:I

    iget-object v2, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    sget-object v3, Lcom/android/calendar/groove/GrooveScheduleFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 289
    sget-object v1, Lcom/android/calendar/groove/GrooveScheduleFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 290
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 119
    invoke-static {}, Lcom/android/calendar/Utils;->isNOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p1}, Lcom/google/android/calendar/utils/ResourceConfigOverrider;->getOverrideConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 127
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 455
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mCategoryFragment:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    .line 456
    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    sget v0, Lcom/android/calendar/R$string;->groove_category_screen_description:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 458
    const/4 v0, 0x1

    .line 460
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mConfirmedScheduling:Z

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mLogger:Lcom/android/calendar/AnalyticsLogger;

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mAnalyticsCategory:Ljava/lang/String;

    sget v2, Lcom/android/calendar/R$string;->analytics_action_interstitial_back_pressed:I

    .line 428
    invoke-virtual {p0, v2}, Lcom/android/calendar/groove/CreateGrooveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-interface {v0, p0, v1, v2}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->forceFinishTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 430
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->async_scheduling_exit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->finishWithMessage(Ljava/lang/String;)V

    .line 443
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    .line 434
    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getSelectionIndex()I

    move-result v0

    if-lez v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->previousSelection()V

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 437
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 438
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->maybeShowActionBarControls()V

    .line 439
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->customizeBackground()V

    goto :goto_0

    .line 441
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->finish()V

    goto :goto_0
.end method

.method public onBackgroundDrawableFetchComplete(Landroid/view/View;Lcom/android/calendar/timely/ListenableBitmapDrawable;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mBanner:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 449
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mBanner:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->createImageFadeInAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 450
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mBanner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 451
    return-void
.end method

.method public onCategorySelectionComplete(ILandroid/view/View;)V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/HabitModifications;->setType(I)Lcom/google/android/calendar/api/HabitModifications;

    .line 242
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->hideActionBarControls()V

    .line 243
    sget v0, Lcom/android/calendar/R$string;->analytics_action_category_selected:I

    .line 244
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-direct {p0, v0, v1, p1}, Lcom/android/calendar/groove/CreateGrooveActivity;->logEventToAnalytics(ILjava/lang/String;I)V

    .line 245
    sget v0, Lcom/android/calendar/R$string;->analytics_goal2_subcategories:I

    invoke-direct {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->logViewToAnalytics(I)V

    .line 246
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mCategoryFragment:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    invoke-virtual {v0, p1}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->initTransitions(I)V

    .line 247
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 248
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 252
    :cond_0
    sget v1, Lcom/android/calendar/R$id;->fragment_container:I

    .line 254
    invoke-static {p1}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->newInstance(I)Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    move-result-object v2

    sget-object v3, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->TAG:Ljava/lang/String;

    .line 253
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->TAG:Ljava/lang/String;

    .line 256
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 257
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    invoke-static {p1}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getBackgroundSharedElementName(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-virtual {v0, p2, v1}, Landroid/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 262
    :cond_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 263
    return-void
.end method

.method public onConfirmContract()V
    .locals 2

    .prologue
    .line 354
    sget v0, Lcom/android/calendar/R$string;->analytics_goal7_interstitial:I

    invoke-direct {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->logViewToAnalytics(I)V

    .line 355
    sget v0, Lcom/android/calendar/R$string;->analytics_action_goal_creation_confirmed:I

    invoke-direct {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->logEventToAnalytics(I)V

    .line 356
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 357
    new-instance v1, Lcom/android/calendar/groove/CreateGrooveActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity$3;-><init>(Lcom/android/calendar/groove/CreateGrooveActivity;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 421
    invoke-virtual {v1, v0}, Lcom/android/calendar/groove/CreateGrooveActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 422
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-static {p0}, Lcom/android/calendar/Utils;->redirectIfMandatoryPermissionsNotGranted(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 138
    :cond_1
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mLogger:Lcom/android/calendar/AnalyticsLogger;

    .line 139
    sget v0, Lcom/android/calendar/R$string;->analytics_category_groove:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mAnalyticsCategory:Ljava/lang/String;

    .line 140
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mIsTablet:Z

    .line 141
    iget-boolean v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mIsTablet:Z

    if-nez v0, :cond_2

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->setRequestedOrientation(I)V

    .line 144
    :cond_2
    sget v0, Lcom/android/calendar/R$layout;->create_groove_activity:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->setContentView(I)V

    .line 145
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->initStatusBar()V

    .line 146
    iget-boolean v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mIsTablet:Z

    if-eqz v0, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->customizeTabletUI()V

    .line 149
    :cond_3
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->hasLoaded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    invoke-direct {p0, p1}, Lcom/android/calendar/groove/CreateGrooveActivity;->configureFragments(Landroid/os/Bundle;)V

    .line 164
    :goto_1
    if-eqz p1, :cond_5

    .line 165
    const-string v0, "CreateGrooveActivity.Recreated"

    .line 164
    :goto_2
    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_4
    new-instance v1, Lcom/android/calendar/groove/CreateGrooveActivity$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/calendar/groove/CreateGrooveActivity$1;-><init>(Lcom/android/calendar/groove/CreateGrooveActivity;Lcom/android/calendar/timely/data/CalendarsCache;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    .line 162
    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/data/CalendarsCache;->addDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    goto :goto_1

    .line 165
    :cond_5
    const-string v0, "CreateGrooveActivity.Created"

    goto :goto_2
.end method

.method public onCustomGrooveSelectionComplete(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0, p2}, Lcom/google/android/calendar/api/HabitModifications;->setSummary(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitModifications;

    .line 347
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/HabitModifications;->setType(I)Lcom/google/android/calendar/api/HabitModifications;

    .line 348
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getType()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/calendar/groove/CreateGrooveActivity;->showScheduleFragment(ILjava/lang/String;)V

    .line 349
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->customizeBackground()V

    .line 350
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "CreateGrooveActivity.Destroyed"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 216
    invoke-static {}, Lcom/android/calendar/groove/CategoryBackgroundHelper;->getInstance()Lcom/android/calendar/groove/CategoryBackgroundHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/groove/CategoryBackgroundHelper;->cancelAll()V

    .line 217
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/data/CalendarsCache;->removeDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    .line 221
    :cond_0
    return-void
.end method

.method public onDurationSelectionComplete(I)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/HabitContractModifications;->setDurationMinutes(I)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 234
    sget v0, Lcom/android/calendar/R$string;->analytics_action_duration_selected:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/calendar/groove/CreateGrooveActivity;->logEventToAnalytics(ILjava/lang/String;I)V

    .line 235
    sget v0, Lcom/android/calendar/R$string;->analytics_goal5_preferredtime:I

    invoke-direct {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->logViewToAnalytics(I)V

    .line 236
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->changeSelection(I)V

    .line 237
    return-void
.end method

.method public onEditCancel(Landroid/app/DialogFragment;)V
    .locals 1

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->initMoreOptionsHabitModification()V

    .line 605
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 606
    return-void
.end method

.method public onEditCancelled()V
    .locals 0

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->initMoreOptionsHabitModification()V

    .line 635
    return-void
.end method

.method public onEditComplete(Landroid/app/DialogFragment;Lcom/android/calendar/event/CalendarEventModel;Z)V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModificationsMoreOptions:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitModifications;->applyModifications(Lcom/google/android/calendar/api/HabitModifications;)V

    .line 617
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->initMoreOptionsHabitModification()V

    .line 618
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->initializeImageBackground(Z)V

    .line 619
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 620
    return-void
.end method

.method public onEditFinished(Lcom/google/android/calendar/api/HabitModifications;)V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/HabitModifications;->applyModifications(Lcom/google/android/calendar/api/HabitModifications;)V

    .line 627
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->initMoreOptionsHabitModification()V

    .line 628
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->initializeImageBackground(Z)V

    .line 629
    return-void
.end method

.method public onFrequencySelectionComplete(I)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/HabitContractModifications;->setNumInstancesPerInterval(I)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 226
    sget v0, Lcom/android/calendar/R$string;->analytics_action_frequency_selected:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/calendar/groove/CreateGrooveActivity;->logEventToAnalytics(ILjava/lang/String;I)V

    .line 227
    sget v0, Lcom/android/calendar/R$string;->analytics_goal4_duration:I

    invoke-direct {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->logViewToAnalytics(I)V

    .line 228
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->changeSelection(I)V

    .line 229
    return-void
.end method

.method public onPreferredTimesSelectionComplete(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0, v2}, Lcom/google/android/calendar/api/HabitContractModifications;->setMorningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 296
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0, v2}, Lcom/google/android/calendar/api/HabitContractModifications;->setAfternoonPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 297
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0, v2}, Lcom/google/android/calendar/api/HabitContractModifications;->setEveningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 298
    packed-switch p1, :pswitch_data_0

    .line 312
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Preferred time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->setAnyDayTimeAcceptable()Lcom/google/android/calendar/api/HabitContractModifications;

    .line 316
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    .line 317
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->getDurationMinutes()I

    move-result v0

    const/16 v3, 0xf

    if-le v0, v3, :cond_0

    move v0, v1

    .line 318
    :goto_1
    new-instance v3, Lcom/android/calendar/groove/CreateGrooveActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity$2;-><init>(Lcom/android/calendar/groove/CreateGrooveActivity;Z)V

    new-array v0, v1, [Lcom/google/android/calendar/api/HabitDescriptor;

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    .line 334
    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {v3, v0}, Lcom/android/calendar/groove/CreateGrooveActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 335
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->initMoreOptionsHabitModification()V

    .line 336
    sget v0, Lcom/android/calendar/R$string;->analytics_action_preferredtime_selected:I

    .line 338
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    .line 337
    invoke-static {v1, v2}, Lcom/android/calendar/groove/GrooveUtils;->getPreferredTimeString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-direct {p0, v0, v1, p1}, Lcom/android/calendar/groove/CreateGrooveActivity;->logEventToAnalytics(ILjava/lang/String;I)V

    .line 340
    sget v0, Lcom/android/calendar/R$string;->analytics_goal6_contract:I

    invoke-direct {p0, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->logViewToAnalytics(I)V

    .line 341
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mScheduleFragment:Lcom/android/calendar/groove/GrooveScheduleFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->changeSelection(I)V

    .line 342
    return-void

    .line 303
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitContractModifications;->setMorningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    goto :goto_0

    .line 306
    :pswitch_3
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitContractModifications;->setAfternoonPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    goto :goto_0

    .line 309
    :pswitch_4
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitContractModifications;->setEveningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    goto :goto_0

    :cond_0
    move v0, v2

    .line 317
    goto :goto_1

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 205
    const-string v0, "habit"

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 206
    const-string v0, "habit_more_options"

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModificationsMoreOptions:Lcom/google/android/calendar/api/HabitModifications;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 207
    const-string v0, "confirmed_scheduling"

    iget-boolean v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mConfirmedScheduling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    const-string v0, "instance_created"

    iget-boolean v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mInstanceCreated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 210
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 198
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mCategoryFragment:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->isShowingCategorySelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mCategoryFragment:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->runEnterAnimation()V

    .line 201
    :cond_0
    return-void
.end method

.method public onSubcategorySelectionComplete(I)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/HabitModifications;->setType(I)Lcom/google/android/calendar/api/HabitModifications;

    .line 268
    invoke-virtual {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/groove/GrooveCategories;->getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/groove/GrooveCategories;

    move-result-object v0

    .line 269
    invoke-virtual {v0, p1}, Lcom/android/calendar/groove/GrooveCategories;->getGrooveNameForType(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    sget v1, Lcom/android/calendar/R$string;->analytics_action_subcategory_selected:I

    invoke-direct {p0, v1, v0, p1}, Lcom/android/calendar/groove/CreateGrooveActivity;->logEventToAnalytics(ILjava/lang/String;I)V

    .line 271
    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v1, v0}, Lcom/google/android/calendar/api/HabitModifications;->setSummary(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitModifications;

    .line 272
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->showScheduleFragment(ILjava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/android/calendar/groove/CreateGrooveActivity;->customizeBackground()V

    .line 274
    return-void
.end method
