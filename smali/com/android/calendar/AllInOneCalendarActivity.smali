.class public Lcom/android/calendar/AllInOneCalendarActivity;
.super Lcom/android/calendar/AbstractCalendarActivity;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/android/calendar/CalendarController$Command$Handler;
.implements Lcom/android/calendar/CreateFabFragment$CreateFabInterface;
.implements Lcom/android/calendar/OnLaunchEdit;
.implements Lcom/android/calendar/OverlayFragment$OverlayListener;
.implements Lcom/android/calendar/SpeedDialLayout$SpeedDialActivity;
.implements Lcom/android/calendar/Troubleshootable;
.implements Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;
.implements Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;
.implements Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;
.implements Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;
.implements Lcom/android/calendar/event/edit/EditDetailsFragment$OnEditChangedListener;
.implements Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;
.implements Lcom/android/calendar/timely/MonthFragment$OnLaunchDayDetailsHandler;
.implements Lcom/android/calendar/timely/OnTimelineGestureListener;
.implements Lcom/android/calendar/timely/TimelyChip$OnLaunchDetailsHandler;
.implements Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;,
        Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final NEXT_PROMO_DELAY_AFTER_ACCEPT:J

.field public static final SMALL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final VIEW_SWITCHER_ID_TO_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mHasBeenRestarted:Z


# instance fields
.field private isDatePickerAnimating:Z

.field private mBackgroundImagesFrame:Lcom/android/calendar/timely/BackgroundImagesFrame;

.field private mBackgroundLayout:Landroid/widget/FrameLayout;

.field private mBackgroundMonth:I

.field mCalIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mCalendarConfigurationUpdateListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

.field private mCardLeftMargin:I

.field private final mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private mController:Lcom/android/calendar/CalendarController;

.field private final mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

.field private mDatePickerArrow:Landroid/widget/ImageView;

.field private mDatePickerButton:Landroid/view/View;

.field private mDatePickerOpen:Z

.field private mDatePickerTextView:Landroid/widget/TextView;

.field private mDragListener:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

.field private mDrawerFragment:Lcom/android/calendar/calendarlist/DrawerFragment;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerList:Landroid/widget/FrameLayout;

.field private mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field private mEndJulianDay:I

.field private mFeedbackReceiver:Landroid/content/BroadcastReceiver;

.field private mGlobalLayoutFinished:Z

.field private mHandler:Landroid/os/Handler;

.field private mInfoFragmentDismiss:Landroid/animation/Animator;

.field private mIsOrientationRequested:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mIsRtl:Z

.field private mIsTabletConfig:Z

.field private mLaunchScreenManager:Lcom/android/calendar/LaunchScreenManager;

.field private mLiftFabAnimator:Landroid/animation/Animator;

.field private mLiftFabAnimatorButton:Landroid/animation/Animator;

.field private mLiftFabAnimatorDrawable:Landroid/animation/Animator;

.field private mNewIntentFragment:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/OverlayFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field private mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

.field private mOnSaveInstanceStateCalled:Z

.field private mOrientation:I

.field private mOverflowMenuItem:Landroid/view/MenuItem;

.field private mPaused:Z

.field private mPendingDrawerActionId:I

.field private mPromoAcceptedMillis:J

.field private mPromos:[Lcom/android/calendar/timely/BottomPromo;

.field private final mRefreshUIManager:Lcom/android/calendar/RefreshUIManagerInterface;

.field private mRobotoMedium:Landroid/graphics/Typeface;

.field private mShownPromoIndex:I

.field private mStartJulianDay:I

.field private mTaskCreationSupported:Z

.field private final mTimeChangesUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;

.field private mTimeZoneUpdateDialogLauncher:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;

.field private mTodayMenuItem:Landroid/view/MenuItem;

.field private mUpdateOnResume:Z

.field private mViewScreenBuilderTask:Landroid/os/AsyncTask;

.field private restoreExpandedSpeedDial:Z

.field private restoreExpandedSpeedDialPulseId:Ljava/lang/Integer;

.field private speedDialSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 210
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/calendar/AllInOneCalendarActivity;->NEXT_PROMO_DELAY_AFTER_ACCEPT:J

    .line 212
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/AllInOneCalendarActivity;->mHasBeenRestarted:Z

    .line 267
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/calendar/AllInOneCalendarActivity;->CPU_COUNT:I

    .line 268
    sget v0, Lcom/android/calendar/AllInOneCalendarActivity;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/AllInOneCalendarActivity;->CORE_POOL_SIZE:I

    .line 269
    sget v0, Lcom/android/calendar/AllInOneCalendarActivity;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/AllInOneCalendarActivity;->MAXIMUM_POOL_SIZE:I

    .line 270
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/android/calendar/AllInOneCalendarActivity;->CORE_POOL_SIZE:I

    sget v3, Lcom/android/calendar/AllInOneCalendarActivity;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/android/bitmap/NamedThreadFactory;

    const-string v0, "decode"

    invoke-direct {v8, v0}, Lcom/android/bitmap/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/android/calendar/AllInOneCalendarActivity;->SMALL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 274
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    sget v1, Lcom/android/calendar/R$id;->agenda_view:I

    .line 276
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->agenda_view_label:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->hourly_view:I

    .line 277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->hourly_view_label:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->list_week_view_3days:I

    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->list_week_view_3days_label:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->week_view:I

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->week_view_label:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->month_view:I

    .line 280
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->month_view_label:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/AllInOneCalendarActivity;->VIEW_SWITCHER_ID_TO_NAME:Ljava/util/Map;

    .line 274
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 183
    invoke-direct {p0}, Lcom/android/calendar/AbstractCalendarActivity;-><init>()V

    .line 215
    iput-boolean v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOnSaveInstanceStateCalled:Z

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPaused:Z

    .line 218
    iput-boolean v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mUpdateOnResume:Z

    .line 219
    iput-object v4, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mNewIntentFragment:Landroid/util/Pair;

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mHandler:Landroid/os/Handler;

    .line 240
    iput v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mShownPromoIndex:I

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromoAcceptedMillis:J

    .line 252
    iput v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPendingDrawerActionId:I

    .line 253
    new-instance v0, Lcom/android/calendar/timely/ChipRecycler;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/ChipRecycler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 259
    new-instance v0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;Lcom/android/calendar/AllInOneCalendarActivity$1;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    .line 261
    iput v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOrientation:I

    .line 264
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getRefreshUIManager()Lcom/android/calendar/RefreshUIManagerInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mRefreshUIManager:Lcom/android/calendar/RefreshUIManagerInterface;

    .line 283
    iput-boolean v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsOrientationRequested:Z

    .line 288
    iput v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundMonth:I

    .line 298
    iput-boolean v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->isDatePickerAnimating:Z

    .line 319
    new-instance v0, Lcom/android/calendar/AllInOneCalendarActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneCalendarActivity$1;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mFeedbackReceiver:Landroid/content/BroadcastReceiver;

    .line 369
    new-instance v0, Lcom/android/calendar/AllInOneCalendarActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneCalendarActivity$2;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    .line 381
    new-instance v0, Lcom/android/calendar/AllInOneCalendarActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/AllInOneCalendarActivity$3;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/AllInOneCalendarActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity;->showFeedback(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/calendar/AllInOneCalendarActivity;)Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/AllInOneCalendarActivity;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->maybeAddCreatePromos()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/calendar/AllInOneCalendarActivity;Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/calendar/AllInOneCalendarActivity;Lcom/android/calendar/timely/data/CalendarsCache;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/AllInOneCalendarActivity;->updateCalendarConfiguration(Lcom/android/calendar/timely/data/CalendarsCache;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/calendarlist/DrawerFragment;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerFragment:Lcom/android/calendar/calendarlist/DrawerFragment;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/AllInOneCalendarActivity;)I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPendingDrawerActionId:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/calendar/AllInOneCalendarActivity;I)I
    .locals 0

    .prologue
    .line 183
    iput p1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPendingDrawerActionId:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/calendar/AllInOneCalendarActivity;I)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity;->logMenuItemSelected(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTodayMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOverflowMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/calendar/AllInOneCalendarActivity;Z)Z
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mGlobalLayoutFinished:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/SpeedDialLayout;
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getSpeedDial()Lcom/android/calendar/SpeedDialLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/calendar/AllInOneCalendarActivity;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->restoreExpandedSpeedDialPulseId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/calendar/AllInOneCalendarActivity;)[Lcom/android/calendar/timely/BottomPromo;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromos:[Lcom/android/calendar/timely/BottomPromo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/AllInOneCalendarActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/calendar/AllInOneCalendarActivity;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->maybeUpdatePromoStates()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/calendar/AllInOneCalendarActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/RefreshUIManagerInterface;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mRefreshUIManager:Lcom/android/calendar/RefreshUIManagerInterface;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/calendar/AllInOneCalendarActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mInfoFragmentDismiss:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/calendar/AllInOneCalendarActivity;Lcom/android/calendar/timely/data/CalendarsCache;)Z
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity;->checkForSpeedDialAccounts(Lcom/android/calendar/timely/data/CalendarsCache;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/calendar/AllInOneCalendarActivity;)Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/calendar/AllInOneCalendarActivity;Z)Z
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/calendar/AllInOneCalendarActivity;)I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOrientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDragListener:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/calendar/AllInOneCalendarActivity;)I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCardLeftMargin:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/calendar/AllInOneCalendarActivity;)Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->isDatePickerAnimating:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/calendar/AllInOneCalendarActivity;Z)Z
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->isDatePickerAnimating:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/calendar/AllInOneCalendarActivity;)Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/timely/BackgroundImagesFrame;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundImagesFrame:Lcom/android/calendar/timely/BackgroundImagesFrame;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/calendar/AllInOneCalendarActivity;ZF)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/AllInOneCalendarActivity;->setDatePickerArrow(ZF)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/calendar/AllInOneCalendarActivity;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->setDatePickerContentDescription()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/AllInOneCalendarActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/calendar/AllInOneCalendarActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity;->removeFullScreenView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/CalendarController;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/calendar/AllInOneCalendarActivity;Z)Z
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTaskCreationSupported:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/calendar/AllInOneCalendarActivity;Z)Z
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->restoreExpandedSpeedDial:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/calendar/AllInOneCalendarActivity;)Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->speedDialSupported:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/calendar/AllInOneCalendarActivity;Z)Z
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->speedDialSupported:Z

    return p1
.end method

.method private canChangeMode(Landroid/app/Fragment;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1724
    instance-of v1, p1, Lcom/android/calendar/timely/DualTimelineGridFragment;

    if-nez v1, :cond_1

    .line 1733
    :cond_0
    :goto_0
    return v0

    .line 1728
    :cond_1
    check-cast p1, Lcom/android/calendar/timely/DualTimelineGridFragment;

    .line 1729
    invoke-virtual {p1}, Lcom/android/calendar/timely/DualTimelineGridFragment;->getMainPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1733
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkForSpeedDialAccounts(Lcom/android/calendar/timely/data/CalendarsCache;)Z
    .locals 3

    .prologue
    .line 2724
    invoke-virtual {p1}, Lcom/android/calendar/timely/data/CalendarsCache;->getData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 2725
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 2726
    const-string v2, "com.google"

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2727
    const/4 v0, 0x1

    .line 2730
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearScreenBuilderTask()V
    .locals 2

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mViewScreenBuilderTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 2129
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mViewScreenBuilderTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 2130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mViewScreenBuilderTask:Landroid/os/AsyncTask;

    .line 2132
    :cond_0
    return-void
.end method

.method private commitOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V
    .locals 1

    .prologue
    .line 2153
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2154
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mNewIntentFragment:Landroid/util/Pair;

    .line 2159
    :goto_0
    return-void

    .line 2156
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mNewIntentFragment:Landroid/util/Pair;

    .line 2157
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/AllInOneCalendarActivity;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    goto :goto_0
.end method

.method private configureActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 778
    .line 779
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->action_bar_custom_view_all_in_one:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerButton:Landroid/view/View;

    .line 780
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerButton:Landroid/view/View;

    sget v1, Lcom/android/calendar/R$id;->date_picker_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerTextView:Landroid/widget/TextView;

    .line 781
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerButton:Landroid/view/View;

    sget v1, Lcom/android/calendar/R$id;->date_picker_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerArrow:Landroid/widget/ImageView;

    .line 782
    new-instance v0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDragListener:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    .line 783
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mRobotoMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 784
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDragListener:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 790
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->setCustomActionBar(Landroid/view/View;)V

    .line 791
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsTabletConfig:Z

    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->initializeActionBar(Z)V

    .line 793
    iput-boolean v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z

    .line 794
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->setDatePickerArrow(ZF)V

    .line 795
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->configureDatePickerTextViews()V

    .line 796
    return-void

    .line 794
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private configureDatePickerTextViews()V
    .locals 0

    .prologue
    .line 800
    return-void
.end method

.method private configureDrawerLayout()V
    .locals 10

    .prologue
    .line 814
    sget v0, Lcom/android/calendar/R$id;->drawer_layout:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 815
    sget v0, Lcom/android/calendar/R$id;->drawer_main_frame:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerList:Landroid/widget/FrameLayout;

    .line 817
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    if-nez v0, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->accessibility_drawer_opened_announce:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 820
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->accessibility_drawer_closed_announce:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 822
    new-instance v0, Lcom/android/calendar/AllInOneCalendarActivity$9;

    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v4, 0x0

    sget v5, Lcom/android/calendar/R$drawable;->ic_menu:I

    sget v6, Lcom/android/calendar/R$string;->accessibility_drawer_open:I

    sget v7, Lcom/android/calendar/R$string;->accessibility_drawer_close:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/calendar/AllInOneCalendarActivity$9;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIIILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 922
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 925
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->drawer_main_frame:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/DrawerFragment;

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerFragment:Lcom/android/calendar/calendarlist/DrawerFragment;

    .line 928
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerFragment:Lcom/android/calendar/calendarlist/DrawerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerFragment:Lcom/android/calendar/calendarlist/DrawerFragment;

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/DrawerFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerFragment:Lcom/android/calendar/calendarlist/DrawerFragment;

    if-nez v0, :cond_2

    .line 930
    new-instance v0, Lcom/android/calendar/calendarlist/DrawerFragment;

    invoke-direct {v0}, Lcom/android/calendar/calendarlist/DrawerFragment;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerFragment:Lcom/android/calendar/calendarlist/DrawerFragment;

    .line 933
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 934
    sget v1, Lcom/android/calendar/R$id;->drawer_main_frame:I

    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerFragment:Lcom/android/calendar/calendarlist/DrawerFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 935
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 937
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerFragment:Lcom/android/calendar/calendarlist/DrawerFragment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/calendarlist/DrawerFragment;->setDrawerItemClickedListener(Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;)V

    .line 938
    return-void
.end method

.method private configureTransparentStatusbar()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 951
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 952
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    or-int/lit16 v1, v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 957
    new-instance v0, Lcom/android/calendar/utils/SystemWindowInsetApplier;

    invoke-direct {v0}, Lcom/android/calendar/utils/SystemWindowInsetApplier;-><init>()V

    .line 958
    iget-boolean v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsTabletConfig:Z

    if-eqz v1, :cond_0

    .line 960
    sget v1, Lcom/android/calendar/R$id;->marker_id:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->addView(Landroid/view/View;II)V

    .line 975
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 976
    return-void

    .line 964
    :cond_0
    sget v1, Lcom/android/calendar/R$id;->toolbar:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 965
    if-eqz v1, :cond_1

    .line 966
    invoke-virtual {v0, v1, v2, v2}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 971
    :cond_1
    sget v1, Lcom/android/calendar/R$id;->main_pane:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private getCreateFabDay()Lcom/android/calendar/time/Time;
    .locals 1

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->getStartDayForCreation()Lcom/android/calendar/time/Time;

    move-result-object v0

    return-object v0
.end method

.method private getCreatePromos()[Lcom/android/calendar/timely/BottomPromo;
    .locals 2

    .prologue
    .line 1140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/calendar/timely/BottomPromo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/timely/BottomPromo;

    return-object v0
.end method

.method private getDelayedActionPerformer()Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;
    .locals 2

    .prologue
    .line 2315
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/timely/TaskBundleFragment;->TAG:Ljava/lang/String;

    .line 2316
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TaskBundleFragment;

    .line 2317
    if-eqz v0, :cond_1

    .line 2333
    :cond_0
    :goto_0
    return-object v0

    .line 2321
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/timely/MonthDayPopUpFragment;->TAG:Ljava/lang/String;

    .line 2322
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/MonthDayPopUpFragment;

    .line 2323
    if-nez v0, :cond_0

    .line 2327
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->main_pane:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 2328
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;

    if-eqz v1, :cond_2

    .line 2330
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;

    goto :goto_0

    .line 2333
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLiftFabAnimatorForButton()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mLiftFabAnimatorButton:Landroid/animation/Animator;

    return-object v0
.end method

.method private getLiftFabAnimatorForDrawable()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mLiftFabAnimatorDrawable:Landroid/animation/Animator;

    return-object v0
.end method

.method private getMainFragment()Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 1792
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1793
    if-nez v0, :cond_0

    .line 1794
    const/4 v0, 0x0

    .line 1796
    :goto_0
    return-object v0

    :cond_0
    sget v1, Lcom/android/calendar/R$id;->main_pane:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method private getOrCreateLiftFabAnimator()Landroid/animation/Animator;
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2337
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mLiftFabAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2338
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mLiftFabAnimator:Landroid/animation/Animator;

    .line 2374
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 2347
    check-cast v0, Landroid/view/View;

    new-array v2, v8, [Landroid/animation/PropertyValuesHolder;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    const v5, 0x3fb33333    # 1.4f

    aput v5, v4, v6

    .line 2348
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "scaleY"

    new-array v4, v7, [F

    const v5, 0x3fb33333    # 1.4f

    aput v5, v4, v6

    .line 2349
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v7

    .line 2347
    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2350
    const-wide/16 v4, 0x14d

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object v0, v1

    .line 2352
    check-cast v0, Landroid/view/View;

    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2353
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2354
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v7

    .line 2352
    invoke-static {v0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2355
    const-wide/16 v4, 0x14d

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2357
    const-string v3, "level"

    new-array v4, v8, [I

    fill-array-data v4, :array_0

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2358
    const-wide/16 v4, 0x53

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 2359
    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2361
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2362
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2364
    iput-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mLiftFabAnimatorButton:Landroid/animation/Animator;

    .line 2365
    iput-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mLiftFabAnimatorDrawable:Landroid/animation/Animator;

    .line 2367
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2368
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2370
    new-instance v1, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v1}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2372
    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mLiftFabAnimator:Landroid/animation/Animator;

    goto/16 :goto_0

    .line 2357
    :array_0
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method

.method private getSelectedViewId()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1751
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getMainFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 1754
    instance-of v2, v0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    if-eqz v2, :cond_1

    .line 1756
    check-cast v0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->isTargetingGridMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1757
    sget v0, Lcom/android/calendar/R$id;->hourly_view:I

    .line 1772
    :goto_0
    return v0

    .line 1759
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->agenda_view:I

    goto :goto_0

    .line 1761
    :cond_1
    instance-of v2, v0, Lcom/android/calendar/timely/ListWeekFragment;

    if-eqz v2, :cond_2

    .line 1762
    sget v0, Lcom/android/calendar/R$id;->list_week_view_3days:I

    goto :goto_0

    .line 1763
    :cond_2
    instance-of v2, v0, Lcom/android/calendar/timely/gridviews/WeekFragment;

    if-eqz v2, :cond_3

    .line 1764
    sget v0, Lcom/android/calendar/R$id;->week_view:I

    goto :goto_0

    .line 1765
    :cond_3
    instance-of v2, v0, Lcom/android/calendar/timely/MonthFragment;

    if-eqz v2, :cond_4

    .line 1766
    sget v0, Lcom/android/calendar/R$id;->month_view:I

    goto :goto_0

    .line 1768
    :cond_4
    const-string v2, "AllInOneCalendarAct"

    const-string v3, "Selected fragment is of unknown type: "

    .line 1769
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v3, v1, [Ljava/lang/Object;

    .line 1768
    invoke-static {v2, v0, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    goto :goto_0

    .line 1769
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getSpeedDial()Lcom/android/calendar/SpeedDialLayout;
    .locals 1

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->getSpeedDial()Lcom/android/calendar/SpeedDialLayout;

    move-result-object v0

    return-object v0
.end method

.method private goToTimeWithEventId(J)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2585
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 2586
    if-eqz v3, :cond_0

    .line 2587
    new-instance v0, Lcom/android/calendar/AllInOneCalendarActivity$18;

    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/AllInOneCalendarActivity$18;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;Landroid/content/ContentResolver;)V

    .line 2601
    invoke-static {}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "dtstart"

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AllInOneCalendarActivity$18;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    :cond_0
    return-void
.end method

.method private goToToday()V
    .locals 4

    .prologue
    .line 1744
    new-instance v0, Lcom/android/calendar/time/Time;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 1746
    const-wide/16 v2, 0x8

    .line 1747
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/android/calendar/CalendarController;->goTo(Ljava/lang/Object;Lcom/android/calendar/time/Time;J)V

    .line 1748
    return-void
.end method

.method private initFragments(J)V
    .locals 3

    .prologue
    .line 1390
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1391
    invoke-direct {p0, v0, p1, p2}, Lcom/android/calendar/AllInOneCalendarActivity;->setMainPane(Landroid/app/FragmentTransaction;J)V

    .line 1392
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1394
    new-instance v0, Lcom/android/calendar/time/Time;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 1395
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/time/Time;->set(J)V

    .line 1396
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1, p0, v0}, Lcom/android/calendar/CalendarController;->goToDate(Ljava/lang/Object;Lcom/android/calendar/time/Time;)V

    .line 1397
    return-void
.end method

.method private initializeBackgroundImages()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 720
    iget-boolean v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsTabletConfig:Z

    if-nez v1, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    sget v1, Lcom/android/calendar/R$bool;->force_show_more_events:I

    .line 725
    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    .line 727
    if-nez v1, :cond_2

    const-string v1, "preference_showMoreEvents"

    .line 728
    invoke-static {p0, v1, v0}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 731
    :cond_2
    if-nez v0, :cond_3

    .line 733
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundImagesFrame:Lcom/android/calendar/timely/BackgroundImagesFrame;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundImagesFrame:Lcom/android/calendar/timely/BackgroundImagesFrame;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundImagesFrame:Lcom/android/calendar/timely/BackgroundImagesFrame;

    goto :goto_0

    .line 739
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundImagesFrame:Lcom/android/calendar/timely/BackgroundImagesFrame;

    if-nez v0, :cond_4

    .line 740
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->background_images_frame:I

    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 741
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/calendar/R$id;->background_images_frame:I

    .line 742
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/BackgroundImagesFrame;

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundImagesFrame:Lcom/android/calendar/timely/BackgroundImagesFrame;

    .line 743
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundImagesFrame:Lcom/android/calendar/timely/BackgroundImagesFrame;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->initialize(Landroid/app/Activity;)V

    .line 746
    :cond_4
    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundMonth:I

    invoke-direct {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->setBackgroundMonth(I)V

    goto :goto_0
.end method

.method private initiateLaunchScreen()V
    .locals 2

    .prologue
    .line 1404
    new-instance v0, Lcom/android/calendar/LaunchScreenManager;

    invoke-direct {v0, p0}, Lcom/android/calendar/LaunchScreenManager;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mLaunchScreenManager:Lcom/android/calendar/LaunchScreenManager;

    .line 1409
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->isInitialDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1418
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isClearTaskFlagSet(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1420
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mLaunchScreenManager:Lcom/android/calendar/LaunchScreenManager;

    invoke-virtual {v1, v0}, Lcom/android/calendar/LaunchScreenManager;->showLaunchScreen(Z)V

    .line 1422
    :cond_0
    return-void

    .line 1418
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInitialDataReady()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1429
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "data_factory"

    .line 1430
    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/DataFactory;

    .line 1432
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/calendar/timely/DataFactory;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 1437
    :goto_0
    return v0

    .line 1436
    :cond_1
    invoke-virtual {v0}, Lcom/android/calendar/timely/DataFactory;->getDataToday()Lcom/android/calendar/timely/MonthData;

    move-result-object v0

    .line 1437
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private launchFragmentsFromIntent()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 1952
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1953
    if-nez v1, :cond_1

    .line 2031
    :cond_0
    :goto_0
    return-void

    .line 1958
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 1959
    const/high16 v6, 0x100000

    and-int/2addr v3, v6

    if-nez v3, :cond_0

    .line 1963
    invoke-static {p0, v1}, Lcom/android/calendar/launch/LaunchIntentConstants;->isEditIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1964
    invoke-static {p0, v1}, Lcom/android/calendar/launch/LaunchIntentConstants;->isInsertIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1966
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->onLaunchInsertOrEdit(Landroid/os/Bundle;)V

    .line 1969
    const-string v0, "beginTime"

    .line 1970
    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "endTime"

    .line 1971
    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object v0, p0

    .line 1969
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/AllInOneCalendarActivity;->replaceLaunchIntent(Landroid/content/Intent;JJ)V

    goto :goto_0

    .line 1972
    :cond_3
    invoke-static {p0, v1}, Lcom/android/calendar/launch/LaunchIntentConstants;->isViewIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1974
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->readTimelineItemFromIntent(Landroid/content/Intent;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v4

    .line 1975
    if-nez v4, :cond_4

    .line 1976
    sget v0, Lcom/android/calendar/R$string;->event_not_found:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1980
    :cond_4
    instance-of v3, v4, Lcom/android/calendar/task/TimelineTaskBundle;

    if-eqz v3, :cond_7

    .line 1982
    new-instance v2, Lcom/android/calendar/timely/TaskBundleFragment;

    invoke-direct {v2}, Lcom/android/calendar/timely/TaskBundleFragment;-><init>()V

    move-object v0, v4

    .line 1983
    check-cast v0, Lcom/android/calendar/task/TimelineTaskBundle;

    const/4 v3, 0x0

    .line 1984
    invoke-static {v0, v3}, Lcom/android/calendar/timely/TaskBundleFragment;->createArguments(Lcom/android/calendar/task/TimelineTaskBundle;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Landroid/os/Bundle;

    move-result-object v0

    .line 1983
    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/TaskBundleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1985
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsTabletConfig:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mLaunchScreenManager:Lcom/android/calendar/LaunchScreenManager;

    .line 1986
    invoke-virtual {v0}, Lcom/android/calendar/LaunchScreenManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1989
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mLaunchScreenManager:Lcom/android/calendar/LaunchScreenManager;

    invoke-virtual {v0, v2}, Lcom/android/calendar/LaunchScreenManager;->setTaskBundleFragment(Lcom/android/calendar/timely/TaskBundleFragment;)V

    .line 2007
    :cond_5
    :goto_1
    invoke-interface {v4}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v2

    invoke-interface {v4}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/AllInOneCalendarActivity;->replaceLaunchIntent(Landroid/content/Intent;JJ)V

    goto :goto_0

    .line 1991
    :cond_6
    sget-object v0, Lcom/android/calendar/timely/TaskBundleFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/android/calendar/AllInOneCalendarActivity;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    goto :goto_1

    .line 1995
    :cond_7
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getEventInfoFragmentFactory()Lcom/android/calendar/event/EventInfoFragmentFactory;

    move-result-object v3

    invoke-interface {v3, p0, v4}, Lcom/android/calendar/event/EventInfoFragmentFactory;->newFragment(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Lcom/android/calendar/event/EventInfoFragment;

    move-result-object v3

    .line 1996
    invoke-static {v1}, Lcom/android/calendar/Utils;->isInternalSource(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_8

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/calendar/event/EventInfoFragment;->setOpenedFromExternalSource(Z)V

    .line 1997
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/calendar/AllInOneCalendarActivity;->commitOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    .line 1998
    invoke-static {v1}, Lcom/android/calendar/Utils;->isTargetAllInOne(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, v4, Lcom/android/calendar/timely/TimelineEvent;

    if-eqz v0, :cond_5

    move-object v0, v4

    check-cast v0, Lcom/android/calendar/timely/TimelineEvent;

    .line 1999
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineEvent;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_5

    move-object v0, v4

    .line 2002
    check-cast v0, Lcom/android/calendar/timely/TimelineEvent;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineEvent;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/calendar/AllInOneCalendarActivity;->goToTimeWithEventId(J)V

    goto :goto_1

    :cond_8
    move v0, v2

    .line 1996
    goto :goto_2

    .line 2008
    :cond_9
    invoke-static {p0, v1}, Lcom/android/calendar/launch/LaunchIntentConstants;->isTaskViewIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2010
    invoke-static {v1}, Lcom/android/calendar/Utils;->getLaunchTimelineItem(Landroid/content/Intent;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v3

    .line 2011
    if-nez v3, :cond_a

    .line 2012
    sget v0, Lcom/android/calendar/R$string;->task_not_found:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2017
    :cond_a
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getEventInfoFragmentFactory()Lcom/android/calendar/event/EventInfoFragmentFactory;

    move-result-object v6

    invoke-interface {v6, p0, v3}, Lcom/android/calendar/event/EventInfoFragmentFactory;->newFragment(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Lcom/android/calendar/event/EventInfoFragment;

    move-result-object v6

    .line 2018
    invoke-static {v1}, Lcom/android/calendar/Utils;->isInternalSource(Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_b

    :goto_3
    invoke-virtual {v6, v0}, Lcom/android/calendar/event/EventInfoFragment;->setOpenedFromExternalSource(Z)V

    .line 2019
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0, v6}, Lcom/android/calendar/AllInOneCalendarActivity;->commitOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    .line 2022
    invoke-interface {v3}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/AllInOneCalendarActivity;->replaceLaunchIntent(Landroid/content/Intent;JJ)V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 2018
    goto :goto_3

    .line 2023
    :cond_c
    invoke-static {p0, v1}, Lcom/android/calendar/launch/LaunchIntentConstants;->isInsertReminderIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2024
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->onLaunchInsertTask(Landroid/os/Bundle;)V

    .line 2027
    const-string v0, "beginTime"

    .line 2028
    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "endTime"

    .line 2029
    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object v0, p0

    .line 2027
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/AllInOneCalendarActivity;->replaceLaunchIntent(Landroid/content/Intent;JJ)V

    goto/16 :goto_0
.end method

.method private logMenuItemSelected(I)V
    .locals 3

    .prologue
    .line 1534
    sget v0, Lcom/android/calendar/R$id;->agenda_view:I

    if-ne p1, v0, :cond_0

    .line 1535
    const-string v0, "agenda"

    .line 1558
    :goto_0
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    .line 1559
    sget v2, Lcom/android/calendar/R$string;->analytics_category_menu_item:I

    .line 1560
    invoke-virtual {p0, v2}, Lcom/android/calendar/AllInOneCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1559
    invoke-interface {v1, p0, v2, v0}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    return-void

    .line 1536
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->hourly_view:I

    if-ne p1, v0, :cond_1

    .line 1537
    const-string v0, "day"

    goto :goto_0

    .line 1538
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->list_week_view_3days:I

    if-ne p1, v0, :cond_2

    .line 1539
    const-string v0, "nDay"

    goto :goto_0

    .line 1540
    :cond_2
    sget v0, Lcom/android/calendar/R$id;->search:I

    if-ne p1, v0, :cond_3

    .line 1541
    const-string v0, "search"

    goto :goto_0

    .line 1542
    :cond_3
    sget v0, Lcom/android/calendar/R$id;->action_refresh:I

    if-ne p1, v0, :cond_4

    .line 1543
    const-string v0, "refresh"

    goto :goto_0

    .line 1544
    :cond_4
    sget v0, Lcom/android/calendar/R$id;->action_today:I

    if-ne p1, v0, :cond_5

    .line 1545
    const-string v0, "today"

    goto :goto_0

    .line 1546
    :cond_5
    sget v0, Lcom/android/calendar/R$id;->week_view:I

    if-ne p1, v0, :cond_6

    .line 1547
    const-string v0, "week"

    goto :goto_0

    .line 1548
    :cond_6
    sget v0, Lcom/android/calendar/R$id;->month_view:I

    if-ne p1, v0, :cond_7

    .line 1549
    const-string v0, "month"

    goto :goto_0

    .line 1550
    :cond_7
    const v0, 0x102002c

    if-ne p1, v0, :cond_8

    .line 1551
    const-string v0, "home"

    goto :goto_0

    .line 1552
    :cond_8
    sget v0, Lcom/android/calendar/R$id;->overflow:I

    if-ne p1, v0, :cond_9

    .line 1553
    const-string v0, "overflow"

    goto :goto_0

    .line 1555
    :cond_9
    const-string v1, "0x"

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private maybeAddCreatePromos()V
    .locals 2

    .prologue
    .line 1089
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->shouldAddPromos()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1090
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getCreatePromos()[Lcom/android/calendar/timely/BottomPromo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromos:[Lcom/android/calendar/timely/BottomPromo;

    .line 1091
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromos:[Lcom/android/calendar/timely/BottomPromo;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1092
    new-instance v0, Lcom/android/calendar/AllInOneCalendarActivity$13;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneCalendarActivity$13;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;)V

    .line 1104
    iget-boolean v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mGlobalLayoutFinished:Z

    if-eqz v1, :cond_1

    .line 1105
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->runOnGlobalLayout(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1111
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromos:[Lcom/android/calendar/timely/BottomPromo;

    if-eqz v0, :cond_0

    .line 1114
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->maybeUpdatePromoStates()V

    goto :goto_0
.end method

.method private maybeUpdatePromoStates()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 1153
    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mShownPromoIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromoAcceptedMillis:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4

    .line 1154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromoAcceptedMillis:J

    sget-wide v4, Lcom/android/calendar/AllInOneCalendarActivity;->NEXT_PROMO_DELAY_AFTER_ACCEPT:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 1156
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromos:[Lcom/android/calendar/timely/BottomPromo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1157
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromos:[Lcom/android/calendar/timely/BottomPromo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/calendar/timely/BottomPromo;->updatePromoState()V

    .line 1158
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromos:[Lcom/android/calendar/timely/BottomPromo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/calendar/timely/BottomPromo;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1159
    iget v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mShownPromoIndex:I

    if-le v0, v1, :cond_1

    .line 1161
    iput-wide v6, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromoAcceptedMillis:J

    .line 1163
    :cond_1
    iput v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mShownPromoIndex:I

    .line 1164
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromos:[Lcom/android/calendar/timely/BottomPromo;

    aget-object v0, v1, v0

    new-instance v1, Lcom/android/calendar/AllInOneCalendarActivity$14;

    invoke-direct {v1, p0}, Lcom/android/calendar/AllInOneCalendarActivity$14;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/BottomPromo;->setListener(Lcom/android/calendar/timely/BottomPromo$OnPromoAcceptedListener;)V

    .line 1183
    :cond_2
    :goto_1
    return-void

    .line 1156
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1181
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromos:[Lcom/android/calendar/timely/BottomPromo;

    iget v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mShownPromoIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/calendar/timely/BottomPromo;->updatePromoState()V

    goto :goto_1
.end method

.method private removeFullScreenView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 3329
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3332
    invoke-static {p0}, Lcom/android/calendar/FullScreenManager;->getInstance(Landroid/app/Activity;)Lcom/android/calendar/FullScreenManager;

    move-result-object v0

    .line 3333
    invoke-virtual {v0, p1}, Lcom/android/calendar/FullScreenManager;->removeView(Landroid/view/View;)V

    .line 3335
    :cond_0
    return-void
.end method

.method private replaceLaunchIntent(Landroid/content/Intent;JJ)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 2043
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2044
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2047
    const-string v1, "intent_source"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2048
    if-eqz v1, :cond_0

    .line 2049
    const-string v2, "intent_source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2052
    :cond_0
    cmp-long v1, p2, v4

    if-lez v1, :cond_1

    .line 2053
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2055
    :cond_1
    cmp-long v1, p4, v4

    if-lez v1, :cond_2

    .line 2056
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2058
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->setIntent(Landroid/content/Intent;)V

    .line 2059
    return-void
.end method

.method private restoreOverlayFragmentTag(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 2262
    const-string v0, "overlay_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->setOverlayFragmentTag(Ljava/lang/String;)V

    .line 2263
    return-void
.end method

.method private runOnGlobalLayout(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 3312
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3313
    if-eqz v0, :cond_0

    .line 3314
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 3315
    if-eqz v1, :cond_0

    .line 3316
    new-instance v2, Lcom/android/calendar/AllInOneCalendarActivity$20;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/calendar/AllInOneCalendarActivity$20;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3326
    :cond_0
    return-void
.end method

.method private saveOverlayFragmentTag(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getOverlayFragmentTag()Ljava/lang/String;

    move-result-object v0

    .line 2267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2268
    const-string v1, "overlay_fragment"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    :cond_0
    return-void
.end method

.method private scheduleRoomServiceStatusRefresh()V
    .locals 0

    .prologue
    .line 708
    return-void
.end method

.method private setAlternateMonthLabel(II)V
    .locals 0

    .prologue
    .line 2572
    iput p1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mStartJulianDay:I

    .line 2573
    iput p2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mEndJulianDay:I

    .line 2575
    invoke-static {p0}, Lcom/android/calendar/Utils;->getAlternateCalendarPref(Landroid/content/Context;)I

    .line 2582
    return-void
.end method

.method private setBackgroundMonth(I)V
    .locals 3

    .prologue
    .line 752
    iput p1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundMonth:I

    .line 755
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundImagesFrame:Lcom/android/calendar/timely/BackgroundImagesFrame;

    if-nez v0, :cond_0

    .line 760
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundImagesFrame:Lcom/android/calendar/timely/BackgroundImagesFrame;

    iget v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundMonth:I

    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getSelectedViewId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/BackgroundImagesFrame;->setBackgroundMonth(II)V

    goto :goto_0
.end method

.method private setDatePickerArrow(ZF)V
    .locals 4

    .prologue
    .line 2636
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2639
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2640
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2641
    if-eqz p1, :cond_0

    .line 2642
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerArrow:Landroid/widget/ImageView;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43340000    # 180.0f

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 2644
    :cond_0
    return-void

    .line 2636
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setDatePickerContentDescription()V
    .locals 6

    .prologue
    .line 3231
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3232
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z

    if-eqz v0, :cond_0

    .line 3233
    sget v0, Lcom/android/calendar/R$string;->accessibility_hide_date_picker:I

    .line 3232
    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3231
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3235
    return-void

    .line 3234
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->accessibility_show_date_picker:I

    goto :goto_0
.end method

.method private setDatePickerState(Landroid/app/Fragment;)V
    .locals 4

    .prologue
    .line 2615
    instance-of v0, p1, Lcom/android/calendar/timely/CalendarFragment;

    if-nez v0, :cond_1

    .line 2616
    const-string v1, "AllInOneCalendarAct"

    const-string v2, "All fragments should be of base type CalendarFragment but this was not:"

    .line 2617
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    .line 2616
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2628
    :goto_1
    return-void

    .line 2617
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2621
    :cond_1
    check-cast p1, Lcom/android/calendar/timely/CalendarFragment;

    .line 2623
    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->isMinimonthToggleable(Landroid/content/Context;Lcom/android/calendar/timely/CalendarFragment;)Z

    move-result v0

    .line 2624
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2625
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->setDatePickerArrow(ZF)V

    .line 2627
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDragListener:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->isMinimonthDraggable(Landroid/content/Context;Lcom/android/calendar/timely/CalendarFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->setIsDraggable(Z)V

    goto :goto_1
.end method

.method private setMainPane(Landroid/app/FragmentTransaction;J)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1800
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOnSaveInstanceStateCalled:Z

    if-eqz v0, :cond_0

    .line 1909
    :goto_0
    return-void

    .line 1804
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    .line 1807
    sget v0, Lcom/android/calendar/R$id;->main_pane:I

    invoke-virtual {v7, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 1810
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsTabletConfig:Z

    invoke-static {p0, v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getLastUsedView(Landroid/content/Context;Z)I

    move-result v5

    .line 1811
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsTabletConfig:Z

    if-nez v0, :cond_a

    .line 1812
    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOrientation:I

    if-eq v0, v9, :cond_1

    sget v0, Lcom/android/calendar/R$id;->week_view:I

    if-ne v5, v0, :cond_4

    .line 1813
    :cond_1
    instance-of v0, v1, Lcom/android/calendar/timely/gridviews/WeekFragment;

    if-nez v0, :cond_15

    .line 1814
    new-instance v0, Lcom/android/calendar/timely/gridviews/WeekFragment;

    invoke-direct {v0}, Lcom/android/calendar/timely/gridviews/WeekFragment;-><init>()V

    .line 1815
    invoke-static {p2, p3}, Lcom/android/calendar/timely/gridviews/WeekFragment;->createArgs(J)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1817
    :goto_1
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v4

    .line 1818
    sget v6, Lcom/android/calendar/R$string;->analytics_week_view:I

    invoke-virtual {p0, v6}, Lcom/android/calendar/AllInOneCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1819
    invoke-interface {v4, p0, v6}, Lcom/android/calendar/AnalyticsLogger;->trackView(Landroid/content/Context;Ljava/lang/String;)V

    .line 1822
    sget v8, Lcom/android/calendar/R$id;->week_view:I

    if-eq v5, v8, :cond_2

    .line 1823
    sget v5, Lcom/android/calendar/R$string;->analytics_category_menu_item:I

    .line 1824
    invoke-virtual {p0, v5}, Lcom/android/calendar/AllInOneCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1823
    invoke-interface {v4, p0, v5, v6}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    :cond_2
    :goto_2
    if-eq v1, v0, :cond_12

    .line 1888
    if-nez p1, :cond_13

    .line 1890
    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    move v1, v2

    .line 1892
    :goto_3
    const/16 v4, 0x1003

    invoke-virtual {p1, v4}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1893
    sget v4, Lcom/android/calendar/R$id;->main_pane:I

    invoke-virtual {p1, v4, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1894
    if-eqz v1, :cond_3

    .line 1895
    const-string v1, "AllInOneCalendarAct"

    const-string v4, "setMainPane AllInOne=%s finishing:%b"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->isFinishing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1896
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 1908
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    sget v2, Lcom/android/calendar/R$id;->main_pane:I

    check-cast v0, Lcom/android/calendar/CalendarController$Command$Handler;

    invoke-virtual {v1, v2, v0}, Lcom/android/calendar/CalendarController;->registerHandler(ILcom/android/calendar/CalendarController$Command$Handler;)V

    goto :goto_0

    .line 1826
    :cond_4
    sget v0, Lcom/android/calendar/R$id;->month_view:I

    if-ne v5, v0, :cond_5

    .line 1827
    instance-of v0, v1, Lcom/android/calendar/timely/MonthFragment;

    if-nez v0, :cond_14

    .line 1828
    new-instance v0, Lcom/android/calendar/timely/MonthFragment;

    invoke-direct {v0}, Lcom/android/calendar/timely/MonthFragment;-><init>()V

    .line 1829
    invoke-static {p2, p3}, Lcom/android/calendar/timely/MonthFragment;->createArgs(J)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1831
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v4

    sget v5, Lcom/android/calendar/R$string;->analytics_month_view:I

    .line 1832
    invoke-virtual {p0, v5}, Lcom/android/calendar/AllInOneCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1831
    invoke-interface {v4, p0, v5}, Lcom/android/calendar/AnalyticsLogger;->trackView(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 1834
    :cond_5
    sget v0, Lcom/android/calendar/R$id;->agenda_view:I

    if-eq v5, v0, :cond_6

    sget v0, Lcom/android/calendar/R$id;->hourly_view:I

    if-ne v5, v0, :cond_9

    .line 1835
    :cond_6
    instance-of v0, v1, Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    if-nez v0, :cond_14

    .line 1836
    new-instance v6, Lcom/android/calendar/timely/DualTimelineGridFragment;

    invoke-direct {v6}, Lcom/android/calendar/timely/DualTimelineGridFragment;-><init>()V

    .line 1837
    sget v0, Lcom/android/calendar/R$id;->hourly_view:I

    if-ne v5, v0, :cond_7

    move v0, v2

    .line 1838
    :goto_5
    invoke-static {p2, p3, v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->createArgs(JZ)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1841
    if-eqz v0, :cond_8

    .line 1842
    sget v0, Lcom/android/calendar/R$string;->analytics_day_grid_view:I

    .line 1843
    :goto_6
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v4

    .line 1844
    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1843
    invoke-interface {v4, p0, v0}, Lcom/android/calendar/AnalyticsLogger;->trackView(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v6

    .line 1845
    goto/16 :goto_2

    :cond_7
    move v0, v3

    .line 1837
    goto :goto_5

    .line 1842
    :cond_8
    sget v0, Lcom/android/calendar/R$string;->analytics_agenda_view:I

    goto :goto_6

    .line 1846
    :cond_9
    instance-of v0, v1, Lcom/android/calendar/timely/ListWeekFragment;

    if-nez v0, :cond_14

    .line 1847
    new-instance v0, Lcom/android/calendar/timely/ListWeekFragment;

    invoke-direct {v0}, Lcom/android/calendar/timely/ListWeekFragment;-><init>()V

    .line 1848
    invoke-static {p2, p3}, Lcom/android/calendar/timely/ListWeekFragment;->createArgs(J)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1850
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v4

    sget v5, Lcom/android/calendar/R$string;->analytics_nday_view:I

    .line 1851
    invoke-virtual {p0, v5}, Lcom/android/calendar/AllInOneCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1850
    invoke-interface {v4, p0, v5}, Lcom/android/calendar/AnalyticsLogger;->trackView(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1853
    :cond_a
    if-nez v1, :cond_14

    .line 1856
    sget v0, Lcom/android/calendar/R$id;->agenda_view:I

    if-eq v5, v0, :cond_b

    sget v0, Lcom/android/calendar/R$id;->hourly_view:I

    if-ne v5, v0, :cond_f

    .line 1857
    :cond_b
    new-instance v6, Lcom/android/calendar/timely/DualTimelineGridFragment;

    invoke-direct {v6}, Lcom/android/calendar/timely/DualTimelineGridFragment;-><init>()V

    .line 1858
    sget v0, Lcom/android/calendar/R$id;->hourly_view:I

    if-ne v0, v5, :cond_d

    move v0, v2

    .line 1859
    :goto_7
    invoke-static {p2, p3, v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->createArgs(JZ)Landroid/os/Bundle;

    move-result-object v5

    .line 1860
    if-eqz v0, :cond_e

    .line 1861
    sget v0, Lcom/android/calendar/R$string;->analytics_day_grid_view:I

    .line 1876
    :goto_8
    invoke-virtual {v6, v5}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1878
    if-eq v0, v4, :cond_c

    .line 1880
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v4

    .line 1881
    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, p0, v0}, Lcom/android/calendar/AnalyticsLogger;->trackView(Landroid/content/Context;Ljava/lang/String;)V

    :cond_c
    move-object v0, v6

    goto/16 :goto_2

    :cond_d
    move v0, v3

    .line 1858
    goto :goto_7

    .line 1861
    :cond_e
    sget v0, Lcom/android/calendar/R$string;->analytics_agenda_view:I

    goto :goto_8

    .line 1862
    :cond_f
    sget v0, Lcom/android/calendar/R$id;->week_view:I

    if-ne v5, v0, :cond_10

    .line 1863
    new-instance v6, Lcom/android/calendar/timely/gridviews/WeekFragment;

    invoke-direct {v6}, Lcom/android/calendar/timely/gridviews/WeekFragment;-><init>()V

    .line 1864
    invoke-static {p2, p3}, Lcom/android/calendar/timely/gridviews/WeekFragment;->createArgs(J)Landroid/os/Bundle;

    move-result-object v5

    .line 1865
    sget v0, Lcom/android/calendar/R$string;->analytics_week_view:I

    goto :goto_8

    .line 1866
    :cond_10
    sget v0, Lcom/android/calendar/R$id;->month_view:I

    if-ne v5, v0, :cond_11

    .line 1867
    new-instance v6, Lcom/android/calendar/timely/MonthFragment;

    invoke-direct {v6}, Lcom/android/calendar/timely/MonthFragment;-><init>()V

    .line 1868
    invoke-static {p2, p3}, Lcom/android/calendar/timely/MonthFragment;->createArgs(J)Landroid/os/Bundle;

    move-result-object v5

    .line 1869
    sget v0, Lcom/android/calendar/R$string;->analytics_month_view:I

    goto :goto_8

    .line 1872
    :cond_11
    const-string v0, "AllInOneCalendarAct"

    const-string v5, "No default view available"

    invoke-static {v0, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    const/4 v0, 0x0

    move-object v5, v0

    move-object v6, v1

    move v0, v4

    .line 1874
    goto :goto_8

    .line 1903
    :cond_12
    iput-boolean v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z

    .line 1906
    invoke-direct {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->setDatePickerState(Landroid/app/Fragment;)V

    goto/16 :goto_4

    :cond_13
    move v1, v3

    goto/16 :goto_3

    :cond_14
    move-object v0, v1

    goto/16 :goto_2

    :cond_15
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private setOnSaveInstanceStateCalled(Z)V
    .locals 1

    .prologue
    .line 1084
    iput-boolean p1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOnSaveInstanceStateCalled:Z

    .line 1085
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZoneUpdateDialogLauncher:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;

    invoke-virtual {v0, p1}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->setOnSaveInstanceStateCalled(Z)V

    .line 1086
    return-void
.end method

.method private setTitleInActionBar(Lcom/android/calendar/CalendarController$Command;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 2526
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$Command;->type:J

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->actionBarIsNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2553
    :cond_0
    :goto_0
    return-void

    .line 2530
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2535
    iget-object v0, p1, Lcom/android/calendar/CalendarController$Command;->selectedTime:Lcom/android/calendar/time/Time;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/calendar/CalendarController$Command;->startTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->month:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->setBackgroundMonth(I)V

    .line 2538
    iget-object v0, p1, Lcom/android/calendar/CalendarController$Command;->startTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, v4}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    .line 2540
    iget-object v0, p1, Lcom/android/calendar/CalendarController$Command;->endTime:Lcom/android/calendar/time/Time;

    if-eqz v0, :cond_3

    .line 2541
    iget-object v0, p1, Lcom/android/calendar/CalendarController$Command;->endTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, v4}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v4

    .line 2546
    :goto_2
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v1

    iget-wide v6, p1, Lcom/android/calendar/CalendarController$Command;->extraLong:J

    long-to-int v6, v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/calendar/DateTimeFormatHelper;->getDateRangeText(JJI)Ljava/lang/String;

    move-result-object v0

    .line 2548
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2550
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 2551
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2552
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->setDatePickerContentDescription()V

    goto :goto_0

    .line 2536
    :cond_2
    iget-object v0, p1, Lcom/android/calendar/CalendarController$Command;->selectedTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->month:I

    goto :goto_1

    :cond_3
    move-wide v4, v2

    .line 2543
    goto :goto_2
.end method

.method private shouldAddPromos()Z
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromos:[Lcom/android/calendar/timely/BottomPromo;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTaskCreationSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    .line 1134
    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->getCreateFab()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    .line 1135
    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/calendar/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    .line 1136
    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->isSpeedDialExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1133
    :goto_0
    return v0

    .line 1136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showFeedback(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3338
    const-string v0, "feedbackMessage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3339
    const-string v0, "shortLength"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3340
    if-eqz v0, :cond_3

    const/4 v0, -0x1

    .line 3342
    :goto_0
    sget v2, Lcom/android/calendar/R$id;->coordinator_layout:I

    invoke-virtual {p0, v2}, Lcom/android/calendar/AllInOneCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3344
    if-nez v2, :cond_0

    .line 3345
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v4, 0x1020002

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3347
    :cond_0
    invoke-static {v2, v3, v0}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 3348
    invoke-static {}, Lcom/android/calendar/Utils;->isKitKatOrLater()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3349
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 3350
    new-instance v4, Lcom/android/calendar/A11yHelper$SnackbarA11yCallback;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lcom/android/calendar/A11yHelper$SnackbarA11yCallback;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/support/design/widget/Snackbar;->setCallback(Landroid/support/design/widget/Snackbar$Callback;)Landroid/support/design/widget/Snackbar;

    .line 3352
    :cond_1
    const-string v2, "eventId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3353
    const-string v2, "eventId"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3354
    sget v3, Lcom/android/calendar/R$color;->google_blue:I

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    .line 3355
    const-string v3, "eventAction"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3357
    packed-switch v1, :pswitch_data_0

    .line 3389
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 3390
    return-void

    :cond_3
    move v0, v1

    .line 3340
    goto :goto_0

    .line 3359
    :pswitch_0
    sget v1, Lcom/android/calendar/R$string;->action_delete:I

    new-instance v3, Lcom/android/calendar/AllInOneCalendarActivity$21;

    invoke-direct {v3, p0, v2}, Lcom/android/calendar/AllInOneCalendarActivity$21;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;Ljava/lang/Long;)V

    invoke-virtual {v0, v1, v3}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    goto :goto_1

    .line 3369
    :pswitch_1
    sget v1, Lcom/android/calendar/R$string;->action_view:I

    new-instance v3, Lcom/android/calendar/AllInOneCalendarActivity$22;

    invoke-direct {v3, p0, v2}, Lcom/android/calendar/AllInOneCalendarActivity$22;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;Ljava/lang/Long;)V

    invoke-virtual {v0, v1, v3}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    goto :goto_1

    .line 3357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateCalendarConfiguration(Lcom/android/calendar/timely/data/CalendarsCache;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCalendarConfigurationUpdateListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    if-eqz v0, :cond_0

    .line 2718
    :goto_0
    return-void

    .line 2706
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity;->checkForSpeedDialAccounts(Lcom/android/calendar/timely/data/CalendarsCache;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->speedDialSupported:Z

    .line 2707
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 2708
    new-instance v0, Lcom/android/calendar/AllInOneCalendarActivity$19;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity$19;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;Lcom/android/calendar/timely/data/CalendarsCache;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCalendarConfigurationUpdateListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    .line 2717
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCalendarConfigurationUpdateListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    invoke-virtual {p1, v0}, Lcom/android/calendar/timely/data/CalendarsCache;->addDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    goto :goto_0
.end method


# virtual methods
.method public beforeDeleteInitiated(Landroid/app/DialogFragment;)V
    .locals 1

    .prologue
    .line 2480
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getEventInfoFragment()Lcom/android/calendar/event/EventInfoFragment;

    move-result-object v0

    .line 2481
    if-eqz v0, :cond_0

    .line 2485
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->prepareForDismiss()V

    .line 2487
    :cond_0
    return-void
.end method

.method public dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V
    .locals 4

    .prologue
    .line 2210
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 2211
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mInfoFragmentDismiss:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mInfoFragmentDismiss:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 2213
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mInfoFragmentDismiss:Landroid/animation/Animator;

    .line 2216
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/calendar/AllInOneCalendarActivity;->getFirstBackStackEntry(Landroid/app/FragmentManager;Landroid/app/Fragment;)I

    move-result v2

    .line 2219
    const/4 v0, 0x1

    .line 2220
    if-lez v2, :cond_4

    .line 2221
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2222
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2223
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 2224
    instance-of v0, v0, Lcom/android/calendar/CreateFabFragment;

    move v1, v0

    .line 2227
    :goto_0
    if-eqz v1, :cond_2

    .line 2228
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->getShowAnimatorCreateFab()Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2232
    :goto_1
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 2233
    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mInfoFragmentDismiss:Landroid/animation/Animator;

    .line 2234
    new-instance v2, Lcom/android/calendar/AllInOneCalendarActivity$17;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/calendar/AllInOneCalendarActivity$17;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;Lcom/android/calendar/OverlayFragment;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2244
    :goto_2
    if-eqz v0, :cond_1

    .line 2245
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2247
    :cond_1
    return-void

    .line 2229
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    invoke-virtual {v0, p2}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->getHideAnimatorCreateFab(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_1

    .line 2242
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->finishDismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1914
    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPendingDrawerActionId:I

    sget v1, Lcom/android/calendar/R$id;->settings:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPendingDrawerActionId:I

    sget v1, Lcom/android/calendar/R$id;->google_logo:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPendingDrawerActionId:I

    sget v1, Lcom/android/calendar/R$id;->help:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPendingDrawerActionId:I

    sget v1, Lcom/android/calendar/R$id;->search:I

    if-ne v0, v1, :cond_1

    .line 1927
    :cond_0
    :goto_0
    return v4

    .line 1920
    :cond_1
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1921
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsTabletConfig:Z

    invoke-static {p0, v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getLastUsedView(Landroid/content/Context;Z)I

    move-result v0

    .line 1922
    sget-object v1, Lcom/android/calendar/AllInOneCalendarActivity;->VIEW_SWITCHER_ID_TO_NAME:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1923
    sget-object v1, Lcom/android/calendar/AllInOneCalendarActivity;->VIEW_SWITCHER_ID_TO_NAME:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1924
    sget v1, Lcom/android/calendar/R$string;->showing_view:I

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/AllInOneCalendarActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1925
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected finishDismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V
    .locals 1

    .prologue
    .line 2250
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOnSaveInstanceStateCalled:Z

    if-eqz v0, :cond_1

    .line 2259
    :cond_0
    :goto_0
    return-void

    .line 2254
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity;->finishDismissOverlay(Lcom/android/calendar/OverlayFragment;)V

    .line 2256
    if-eqz p2, :cond_0

    .line 2257
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->maybeAddCreatePromos()V

    goto :goto_0
.end method

.method public getChipRecycler()Lcom/android/calendar/timely/ChipRecycler;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    return-object v0
.end method

.method public getCreateFabStack()Lcom/android/calendar/CreateFabFragment$CreateFabStack;
    .locals 1

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    return-object v0
.end method

.method public getFloatingActionButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 2795
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->getCreateFab()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getSupportedCommands()J
    .locals 2

    .prologue
    .line 2507
    const-wide/16 v0, 0x1400

    return-wide v0
.end method

.method public getTroubleshootInfoBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getOverlayFragment()Lcom/android/calendar/OverlayFragment;

    move-result-object v0

    .line 337
    instance-of v1, v0, Lcom/android/calendar/Troubleshootable;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    check-cast v0, Lcom/android/calendar/Troubleshootable;

    invoke-interface {v0}, Lcom/android/calendar/Troubleshootable;->getTroubleshootInfoBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    .line 339
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleCommand(Lcom/android/calendar/CalendarController$Command;)V
    .locals 4

    .prologue
    .line 2513
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$Command;->type:J

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2514
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity;->setTitleInActionBar(Lcom/android/calendar/CalendarController$Command;)V

    .line 2523
    :cond_0
    :goto_0
    return-void

    .line 2515
    :cond_1
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$Command;->type:J

    const-wide/16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2516
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDragListener:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2517
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDragListener:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->toggleDatePicker()V
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->access$3300(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;)V

    goto :goto_0
.end method

.method protected launchInfoBubble(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)V
    .locals 1

    .prologue
    .line 2122
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->clearScreenBuilderTask()V

    .line 2124
    invoke-static {p0, p1, p2, p0}, Lcom/android/calendar/ViewScreenFactory;->createViewScreen(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/animations/EventInfoAnimationData;Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mViewScreenBuilderTask:Landroid/os/AsyncTask;

    .line 2125
    return-void
.end method

.method public newEventButtonClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2734
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->newEventButtonClicked(Ljava/lang/Integer;)V

    .line 2735
    return-void
.end method

.method public newEventButtonClicked(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 2681
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->speedDialSupported:Z

    if-eqz v0, :cond_0

    .line 2682
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getSpeedDial()Lcom/android/calendar/SpeedDialLayout;

    move-result-object v0

    .line 2683
    if-eqz v0, :cond_0

    .line 2684
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->restoreExpandedSpeedDialPulseId:Ljava/lang/Integer;

    .line 2685
    invoke-virtual {v0, p1}, Lcom/android/calendar/SpeedDialLayout;->show(Ljava/lang/Integer;)V

    .line 2690
    :goto_0
    return-void

    .line 2689
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->onCreateEventClicked()V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 1932
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 1937
    instance-of v0, p1, Lcom/android/calendar/timely/CalendarFragment;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOrientation:I

    if-eqz v0, :cond_0

    .line 1940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z

    .line 1943
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity;->setDatePickerState(Landroid/app/Fragment;)V

    .line 1945
    :cond_0
    return-void
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 349
    sparse-switch p1, :sswitch_data_0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 352
    :sswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZone:Ljava/lang/String;

    .line 353
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 356
    :sswitch_1
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->configureDatePickerTextViews()V

    .line 357
    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mStartJulianDay:I

    iget v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mEndJulianDay:I

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->setAlternateMonthLabel(II)V

    .line 359
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDragListener:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->setDatePickerVisible(ZIZZ)V
    invoke-static {v0, v2, v2, v3, v3}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->access$200(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;ZIZZ)V

    goto :goto_0

    .line 349
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 773
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 774
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 775
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 435
    const-string v0, "OnCreateActivity"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 437
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsTabletConfig:Z

    .line 438
    invoke-static {p0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsRtl:Z

    .line 439
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    const/4 p1, 0x0

    .line 447
    :cond_0
    sget v0, Lcom/android/calendar/R$style;->CalendarTheme_AllInOneActivity:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->setTheme(I)V

    .line 450
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 453
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->initiateLaunchScreen()V

    .line 456
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/CalendarUncaughtExceptionHandler;->installHandler(Landroid/content/Context;)V

    .line 458
    invoke-static {p0}, Lcom/android/calendar/Utils;->redirectIfMandatoryPermissionsNotGranted(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 704
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-static {p0}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mRobotoMedium:Landroid/graphics/Typeface;

    .line 464
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 466
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/PendingSyncTracker;->trackPendingSyncs(Landroid/content/Context;)V

    .line 469
    if-eqz p1, :cond_8

    const-string v0, "key_restore_speed_dial"

    .line 470
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    .line 472
    :goto_1
    if-eqz p1, :cond_2

    .line 473
    const-string v1, "key_shown_promo_index"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mShownPromoIndex:I

    .line 475
    const-string v1, "key_promo_accepted_millis"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromoAcceptedMillis:J

    .line 477
    const-string v1, "key_restore_speed_dial_pulse_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    const-string v1, "key_restore_speed_dial_pulse_id"

    .line 479
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->restoreExpandedSpeedDialPulseId:Ljava/lang/Integer;

    .line 483
    :cond_2
    new-instance v1, Lcom/android/calendar/AllInOneCalendarActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity$4;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;Z)V

    .line 502
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v2

    .line 503
    invoke-virtual {v2}, Lcom/android/calendar/timely/data/CalendarsCache;->hasLoaded()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 504
    invoke-direct {p0, v2, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->updateCalendarConfiguration(Lcom/android/calendar/timely/data/CalendarsCache;Ljava/lang/Runnable;)V

    .line 528
    :cond_3
    :goto_2
    invoke-static {p0}, Lcom/android/calendar/UpgradeReceiver;->tryUpgradesAndDisableReceivers(Landroid/content/Context;)V

    .line 530
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 538
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "data_factory"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/DataFactory;

    .line 539
    if-nez v0, :cond_a

    .line 540
    new-instance v0, Lcom/android/calendar/timely/DataFactory;

    invoke-direct {v0}, Lcom/android/calendar/timely/DataFactory;-><init>()V

    .line 541
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/DataFactory;->initialize(Landroid/content/Context;)V

    .line 542
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "data_factory"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 548
    :cond_4
    :goto_3
    new-instance v1, Lcom/android/calendar/AllInOneCalendarActivity$6;

    invoke-direct {v1, p0}, Lcom/android/calendar/AllInOneCalendarActivity$6;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/DataFactory;->registerOnAllEventsDataReadyListener(Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;)V

    .line 570
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.calendar.intent.action.ACTION_SHOW_FEEDBACK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mFeedbackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 574
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mLaunchScreenManager:Lcom/android/calendar/LaunchScreenManager;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/DataFactory;->setOnEventsAndTasksReadyListener(Lcom/android/calendar/timely/DataFactory$OnEventsAndTasksReadyListener;)V

    .line 578
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/app/Activity;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    .line 580
    invoke-static {p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZone:Ljava/lang/String;

    .line 581
    new-instance v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;

    invoke-direct {v0}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZoneUpdateDialogLauncher:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;

    .line 585
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 586
    if-eqz p1, :cond_b

    .line 587
    const-string v0, "key_restore_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    .line 592
    :goto_4
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsTabletConfig:Z

    if-nez v0, :cond_5

    .line 632
    :cond_5
    if-eqz p1, :cond_c

    if-eqz v6, :cond_c

    .line 633
    const-string v0, "AllInOneCalendarAct"

    const-string v1, "both, icicle:%s  intent:%s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object v6, v7, v4

    invoke-static {v0, v1, v7}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 638
    :goto_5
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOrientation:I

    .line 643
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    .line 644
    sget v6, Lcom/android/calendar/R$dimen;->timeline_frame_margin_right:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCardLeftMargin:I

    .line 648
    sget v0, Lcom/android/calendar/R$layout;->all_in_one:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->setContentView(I)V

    .line 650
    sget v0, Lcom/android/calendar/R$id;->background_layout:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundLayout:Landroid/widget/FrameLayout;

    .line 655
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->configureActionBar()V

    .line 660
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0, v5, p0}, Lcom/android/calendar/CalendarController;->registerFirstHandler(ILcom/android/calendar/CalendarController$Command$Handler;)V

    .line 662
    invoke-direct {p0, v2, v3}, Lcom/android/calendar/AllInOneCalendarActivity;->initFragments(J)V

    .line 665
    if-nez p1, :cond_6

    .line 666
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->launchFragmentsFromIntent()V

    .line 670
    :cond_6
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 671
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 674
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->configureDrawerLayout()V

    .line 677
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 678
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->configureTransparentStatusbar()V

    .line 682
    :cond_7
    invoke-static {p0}, Lcom/android/calendar/Utils;->schedulePeriodicSyncs(Landroid/content/Context;)V

    .line 684
    sget v0, Lcom/android/calendar/R$id;->swipe_refresh_layout:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 686
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setImportantForAccessibility(I)V

    .line 687
    invoke-virtual {v0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 688
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mRefreshUIManager:Lcom/android/calendar/RefreshUIManagerInterface;

    invoke-interface {v1, p0, v0}, Lcom/android/calendar/RefreshUIManagerInterface;->initialize(Landroid/content/Context;Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 690
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getExtensions()Lcom/android/calendar/UnifiedExtensions;

    move-result-object v0

    .line 691
    invoke-interface {v0}, Lcom/android/calendar/UnifiedExtensions;->getWhatsNew()Lcom/android/calendar/WhatsNewFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/calendar/WhatsNewFactory;->checkForAccountChanges(Landroid/app/Activity;)V

    .line 692
    invoke-interface {v0, p0}, Lcom/android/calendar/UnifiedExtensions;->showPreDialog(Landroid/app/Activity;)V

    .line 693
    if-eqz p1, :cond_d

    .line 694
    const-string v0, "AllInOneCalendarActivity.Recreated"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 702
    :goto_6
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->scheduleRoomServiceStatusRefresh()V

    .line 703
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto/16 :goto_0

    :cond_8
    move v0, v5

    .line 470
    goto/16 :goto_1

    .line 507
    :cond_9
    new-instance v3, Lcom/android/calendar/AllInOneCalendarActivity$5;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/calendar/AllInOneCalendarActivity$5;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;Lcom/android/calendar/timely/data/CalendarsCache;Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    .line 515
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    invoke-virtual {v2, v1}, Lcom/android/calendar/timely/data/CalendarsCache;->addDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    .line 520
    if-eqz v0, :cond_3

    .line 521
    const-string v0, "AllInOneCalendarAct"

    const-string v1, "Device was rotated and the Calendars Cache was emptied"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 543
    :cond_a
    invoke-virtual {v0}, Lcom/android/calendar/timely/DataFactory;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    .line 545
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/DataFactory;->initialize(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 589
    :cond_b
    invoke-static {v6}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v0

    move-wide v2, v0

    goto/16 :goto_4

    .line 635
    :cond_c
    const-string v0, "AllInOneCalendarAct"

    const-string v1, "not both, icicle:%s intent:%s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object v6, v7, v4

    invoke-static {v0, v1, v7}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_5

    .line 695
    :cond_d
    sget-boolean v0, Lcom/android/calendar/AllInOneCalendarActivity;->mHasBeenRestarted:Z

    if-eqz v0, :cond_e

    .line 696
    const-string v0, "AllInOneCalendarActivity.WarmStart"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    goto :goto_6

    .line 698
    :cond_e
    sput-boolean v4, Lcom/android/calendar/AllInOneCalendarActivity;->mHasBeenRestarted:Z

    .line 699
    const-string v0, "AllInOneCalendarActivity.ColdStart"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public onCreateEventClicked()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 2740
    invoke-static {}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getInstance()Lcom/android/calendar/NewEventTimeChangedListenerHolder;

    move-result-object v2

    .line 2742
    invoke-virtual {v2}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getCreateNewEventTime()J

    move-result-wide v0

    .line 2743
    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 2745
    invoke-virtual {v2, v4, v5}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->setCreateNewEventTime(J)V

    .line 2750
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getExtraEventBundle(JLjava/lang/Long;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 2751
    const-string v1, "createEditSource"

    const-string v2, "fab"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->onLaunchInsertOrEdit(Landroid/os/Bundle;)V

    .line 2753
    return-void

    .line 2748
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getCreateFabDay()Lcom/android/calendar/time/Time;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/calendar/event/EditHelper;->constructDefaultStartTime(Lcom/android/calendar/time/Time;Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public onCreateGrooveClicked()V
    .locals 4

    .prologue
    .line 2776
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_category_groove:I

    .line 2777
    invoke-virtual {p0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->analytics_action_fab_create_groove_pressed:I

    .line 2778
    invoke-virtual {p0, v2}, Lcom/android/calendar/AllInOneCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2776
    invoke-interface {v0, p0, v1, v2}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2783
    new-instance v1, Landroid/content/ComponentName;

    .line 2784
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.calendar.groove.CreateGrooveActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2786
    const/high16 v1, 0x20030000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2789
    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 2790
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1442
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1443
    sget v0, Lcom/android/calendar/R$id;->action_today:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTodayMenuItem:Landroid/view/MenuItem;

    .line 1444
    sget v0, Lcom/android/calendar/R$id;->overflow:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOverflowMenuItem:Landroid/view/MenuItem;

    .line 1445
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZone:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->createAllInOneMenu(Landroid/view/Menu;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCreateTaskClicked()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 2759
    invoke-static {}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getInstance()Lcom/android/calendar/NewEventTimeChangedListenerHolder;

    move-result-object v2

    .line 2761
    invoke-virtual {v2}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getCreateNewEventTime()J

    move-result-wide v0

    .line 2762
    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 2764
    invoke-virtual {v2, v4, v5}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->setCreateNewEventTime(J)V

    .line 2769
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getExtraEventBundle(JLjava/lang/Long;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 2770
    const-string v1, "createEditSource"

    const-string v2, "fab"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->onLaunchInsertTask(Landroid/os/Bundle;)V

    .line 2772
    return-void

    .line 2767
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getCreateFabDay()Lcom/android/calendar/time/Time;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/calendar/event/EditHelper;->constructDefaultStartTime(Lcom/android/calendar/time/Time;Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public onDeleteComplete(Landroid/app/DialogFragment;I)V
    .locals 2

    .prologue
    .line 2491
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getEventInfoFragment()Lcom/android/calendar/event/EventInfoFragment;

    move-result-object v0

    .line 2492
    if-eqz v0, :cond_1

    .line 2496
    :goto_0
    check-cast v0, Lcom/android/calendar/OverlayFragment;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    .line 2499
    sget v0, Lcom/android/calendar/R$id;->main_pane:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2500
    if-eqz v0, :cond_0

    .line 2501
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2503
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1271
    const-string v1, "AllInOneCalendarActivity.Destroyed"

    invoke-static {v1}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 1272
    invoke-super {p0}, Lcom/android/calendar/AbstractCalendarActivity;->onDestroy()V

    .line 1274
    invoke-static {}, Lcom/android/calendar/cache/VolleyQueueHolder;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1275
    invoke-static {}, Lcom/android/calendar/cache/VolleyQueueHolder;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    const-string v2, "calendar_volley_request"

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 1278
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1313
    :cond_1
    return-void

    .line 1282
    :cond_2
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1283
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1285
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v1

    .line 1286
    invoke-virtual {v1, v0, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 1291
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->deregisterAllHandlers()V

    .line 1292
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 1294
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    if-eqz v1, :cond_3

    .line 1295
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/data/CalendarsCache;->removeDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    .line 1296
    iput-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    .line 1298
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCalendarConfigurationUpdateListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    if-eqz v1, :cond_4

    .line 1299
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCalendarConfigurationUpdateListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/data/CalendarsCache;->removeDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    .line 1301
    iput-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCalendarConfigurationUpdateListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    .line 1304
    :cond_4
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mFeedbackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1307
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    invoke-virtual {v1}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->removeSpeedDial()V

    .line 1308
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromos:[Lcom/android/calendar/timely/BottomPromo;

    if-eqz v1, :cond_1

    .line 1309
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromos:[Lcom/android/calendar/timely/BottomPromo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1310
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromos:[Lcom/android/calendar/timely/BottomPromo;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->removeFullScreenView(Landroid/view/View;)V

    .line 1309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDrawerItemClicked(I)V
    .locals 1

    .prologue
    .line 1565
    iput p1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPendingDrawerActionId:I

    .line 1566
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 1569
    :cond_0
    return-void
.end method

.method public onEditCancel(Landroid/app/DialogFragment;)V
    .locals 1

    .prologue
    .line 2437
    check-cast p1, Lcom/android/calendar/OverlayFragment;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    .line 2438
    return-void
.end method

.method public onEditComplete(Landroid/app/DialogFragment;Lcom/android/calendar/event/CalendarEventModel;Z)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2443
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getEventInfoFragment()Lcom/android/calendar/event/EventInfoFragment;

    move-result-object v2

    .line 2444
    if-eqz v2, :cond_3

    .line 2445
    if-eqz p3, :cond_2

    .line 2446
    invoke-virtual {v2}, Lcom/android/calendar/event/EventInfoFragment;->prepareForDismiss()V

    .line 2447
    if-eqz p2, :cond_1

    iget-boolean v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    if-eqz v0, :cond_1

    .line 2451
    if-eq p1, v2, :cond_0

    .line 2452
    check-cast p1, Lcom/android/calendar/OverlayFragment;

    invoke-virtual {p0, p1, v4}, Lcom/android/calendar/AllInOneCalendarActivity;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    .line 2457
    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/calendar/event/EventInfoFragment;->doDismissScreen(Z)V

    .line 2476
    :goto_0
    return-void

    .line 2462
    :cond_1
    invoke-virtual {v2, p2}, Lcom/android/calendar/event/EventInfoFragment;->updateWithModel(Lcom/android/calendar/event/CalendarEventModel;)V

    move-object v1, v2

    :goto_1
    move-object v0, v1

    .line 2475
    check-cast v0, Lcom/android/calendar/OverlayFragment;

    if-eq v1, v2, :cond_4

    move v1, v3

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    goto :goto_0

    .line 2466
    :cond_2
    invoke-virtual {v2, p2}, Lcom/android/calendar/event/EventInfoFragment;->updateWithModel(Lcom/android/calendar/event/CalendarEventModel;)V

    :cond_3
    move-object v1, p1

    goto :goto_1

    :cond_4
    move v1, v4

    .line 2475
    goto :goto_2
.end method

.method public onInfoBack(Landroid/app/DialogFragment;Z)V
    .locals 0

    .prologue
    .line 2198
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->onBackPressed()V

    .line 2200
    check-cast p1, Lcom/android/calendar/OverlayFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/AllInOneCalendarActivity;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    .line 2201
    return-void
.end method

.method public onInfoCancel(Landroid/app/DialogFragment;Z)V
    .locals 0

    .prologue
    .line 2205
    check-cast p1, Lcom/android/calendar/OverlayFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/AllInOneCalendarActivity;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    .line 2206
    return-void
.end method

.method public onInfoDoEdit(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2431
    invoke-static {p1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->newInstance(Ljava/lang/Object;)Lcom/android/calendar/event/edit/EditDetailsFragment;

    move-result-object v0

    .line 2432
    sget-object v1, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    .line 2433
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1317
    sparse-switch p1, :sswitch_data_0

    .line 1384
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/calendar/AbstractCalendarActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 1319
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1320
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    invoke-virtual {v1}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->getCreateFab()Landroid/view/View;

    move-result-object v1

    .line 1321
    if-eqz v1, :cond_1

    .line 1322
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 1328
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1329
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->launchSettings(Landroid/app/Activity;)V

    goto :goto_0

    .line 1334
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1335
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_1

    .line 1336
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/calendar/AllInOneCalendarActivity$15;

    invoke-direct {v2, p0}, Lcom/android/calendar/AllInOneCalendarActivity$15;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1353
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1354
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getDrawerExtensions()Lcom/android/calendar/calendarlist/DrawerExtensionsInterface;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->default_help_context:I

    .line 1355
    invoke-virtual {p0, v2}, Lcom/android/calendar/AllInOneCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$id;->swipe_refresh_layout:I

    .line 1354
    invoke-interface {v1, p0, v2, v3}, Lcom/android/calendar/calendarlist/DrawerExtensionsInterface;->showHelp(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 1360
    :sswitch_4
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_2

    .line 1361
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1362
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 1366
    :cond_2
    iget-boolean v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z

    if-eqz v1, :cond_3

    .line 1367
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDragListener:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->toggleDatePicker()V
    invoke-static {v1}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->access$3300(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;)V

    goto :goto_0

    .line 1373
    :cond_3
    const-string v1, "preference_key_back_to_month"

    invoke-static {p0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1378
    sget v1, Lcom/android/calendar/R$id;->month_view:I

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/AllInOneCalendarActivity;->switchView(IZ)V

    goto :goto_0

    .line 1317
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x29 -> :sswitch_2
        0x2a -> :sswitch_0
        0x37 -> :sswitch_1
        0x4c -> :sswitch_3
    .end sparse-switch
.end method

.method public onLaunchDayDetails(III)V
    .locals 2

    .prologue
    .line 2181
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsTabletConfig:Z

    if-eqz v0, :cond_0

    .line 2182
    new-instance v0, Lcom/android/calendar/timely/MonthDayPopUpFragment;

    invoke-direct {v0}, Lcom/android/calendar/timely/MonthDayPopUpFragment;-><init>()V

    .line 2183
    invoke-static {p1, p2, p3}, Lcom/android/calendar/timely/MonthDayPopUpFragment;->createArguments(III)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/MonthDayPopUpFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2184
    sget-object v1, Lcom/android/calendar/timely/MonthDayPopUpFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    .line 2191
    :goto_0
    return-void

    .line 2187
    :cond_0
    const-string v0, "preference_key_grid_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 2189
    if-eqz v0, :cond_1

    sget v0, Lcom/android/calendar/R$id;->hourly_view:I

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->switchView(IZ)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/calendar/R$id;->agenda_view:I

    goto :goto_1
.end method

.method public onLaunchDetails(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 7

    .prologue
    .line 2095
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2118
    :goto_0
    return-void

    .line 2099
    :cond_0
    invoke-static {p1}, Lcom/android/calendar/Utils;->getLocationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 2100
    new-instance v0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 2101
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getCurrentJulianDay()I

    move-result v1

    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOrientation:I

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getViewType()I

    move-result v4

    .line 2102
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->shouldShowImages()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getTimelineInfo()Lcom/android/calendar/timely/TimelineInfo;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;-><init>(ILandroid/graphics/Rect;IIZLcom/android/calendar/timely/TimelineInfo;)V

    .line 2104
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->isReminderBundle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2106
    new-instance v2, Lcom/android/calendar/timely/TaskBundleFragment;

    invoke-direct {v2}, Lcom/android/calendar/timely/TaskBundleFragment;-><init>()V

    .line 2107
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/task/TimelineTaskBundle;

    .line 2109
    invoke-static {v1, v0}, Lcom/android/calendar/timely/TaskBundleFragment;->createArguments(Lcom/android/calendar/task/TimelineTaskBundle;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Landroid/os/Bundle;

    move-result-object v0

    .line 2108
    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/TaskBundleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2110
    sget-object v0, Lcom/android/calendar/timely/TaskBundleFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/android/calendar/AllInOneCalendarActivity;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    .line 2111
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    const-string v1, "view_event"

    const-string v2, "reminder_bundle"

    .line 2112
    invoke-interface {v0, p0, v1, v2}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2115
    :cond_1
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 2116
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->launchInfoBubble(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)V

    goto :goto_0
.end method

.method public onLaunchInsertOrEdit(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2069
    invoke-static {}, Lcom/android/calendar/event/edit/EditDetailsFragment;->newInstance()Lcom/android/calendar/event/edit/EditDetailsFragment;

    move-result-object v0

    .line 2070
    invoke-virtual {v0, p1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setInsertOrEditEventExtras(Landroid/os/Bundle;)V

    .line 2071
    sget-object v1, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    .line 2072
    return-void
.end method

.method public onLaunchInsertTask(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2082
    invoke-static {}, Lcom/android/calendar/event/edit/EditDetailsFragment;->newInstance()Lcom/android/calendar/event/edit/EditDetailsFragment;

    move-result-object v0

    .line 2083
    invoke-virtual {v0, p1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setInsertOrEditTaskExtras(Landroid/os/Bundle;)V

    .line 2084
    sget-object v1, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    .line 2085
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 411
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 412
    const-string v1, "AllInOneCalendarAct"

    const-string v2, "New intent received %s with action %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity;->setIntent(Landroid/content/Intent;)V

    .line 414
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->launchFragmentsFromIntent()V

    .line 417
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1, v4, p0}, Lcom/android/calendar/CalendarController;->registerFirstHandler(ILcom/android/calendar/CalendarController$Command$Handler;)V

    .line 420
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "KEY_HOME"

    .line 422
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    invoke-static {p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v0

    .line 424
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    if-eqz v2, :cond_0

    .line 425
    new-instance v2, Lcom/android/calendar/time/Time;

    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/time/Time;->set(J)V

    .line 427
    invoke-virtual {v2, v5}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 428
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0, p0, v2}, Lcom/android/calendar/CalendarController;->goToDate(Ljava/lang/Object;Lcom/android/calendar/time/Time;)V

    .line 431
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1468
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1469
    invoke-direct {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->logMenuItemSelected(I)V

    .line 1471
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return v2

    .line 1475
    :cond_1
    sget v1, Lcom/android/calendar/R$id;->action_refresh:I

    if-ne v0, v1, :cond_2

    .line 1476
    invoke-static {}, Lcom/android/calendar/timely/CreateNewEventView;->removeSelectedTime()V

    .line 1477
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->refreshCalendars()V

    goto :goto_0

    .line 1479
    :cond_2
    sget v1, Lcom/android/calendar/R$id;->action_today:I

    if-ne v0, v1, :cond_0

    .line 1486
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->goToToday()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1187
    invoke-super {p0}, Lcom/android/calendar/AbstractCalendarActivity;->onPause()V

    .line 1189
    invoke-static {p0}, Lcom/android/calendar/Utils;->isCalendarStorageEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mLaunchScreenManager:Lcom/android/calendar/LaunchScreenManager;

    invoke-virtual {v0}, Lcom/android/calendar/LaunchScreenManager;->hideLaunchScreen()V

    .line 1199
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarController;->deregisterHandler(Ljava/lang/Integer;)V

    .line 1200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPaused:Z

    .line 1201
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1202
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1204
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1205
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1207
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->resetMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1208
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCalIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->clearTimeChangesReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 1210
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsTabletConfig:Z

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 764
    const-string v0, "OnPostCreateActivity"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 765
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 767
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 768
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 769
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1451
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerList:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v3

    .line 1452
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1453
    iget-object v4, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerButton:Landroid/view/View;

    if-eqz v3, :cond_3

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTodayMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1456
    iget-object v4, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTodayMenuItem:Landroid/view/MenuItem;

    if-nez v3, :cond_4

    move v0, v2

    :goto_1
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1458
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOverflowMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 1459
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOverflowMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v3, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1460
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOverflowMenuItem:Landroid/view/MenuItem;

    if-nez v3, :cond_6

    :goto_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1463
    :cond_2
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_3
    move v0, v1

    .line 1453
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1456
    goto :goto_1

    .line 1459
    :cond_5
    const/16 v0, 0xff

    goto :goto_2

    :cond_6
    move v2, v1

    .line 1460
    goto :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1258
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1259
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity;->restoreOverlayFragmentTag(Landroid/os/Bundle;)V

    .line 1260
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 980
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 981
    invoke-super {p0}, Lcom/android/calendar/AbstractCalendarActivity;->onResume()V

    .line 983
    invoke-static {p0}, Lcom/android/calendar/Utils;->redirectIfCalendarStorageDisabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 1081
    :goto_0
    return-void

    .line 989
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getSelectedViewId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->agenda_view:I

    if-ne v0, v1, :cond_6

    move v0, v2

    .line 990
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mLaunchScreenManager:Lcom/android/calendar/LaunchScreenManager;

    invoke-virtual {v1, v0}, Lcom/android/calendar/LaunchScreenManager;->setLaunchScreenTimeout(Z)V

    .line 992
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->initializeBackgroundImages()V

    .line 997
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0, v3, p0}, Lcom/android/calendar/CalendarController;->registerFirstHandler(ILcom/android/calendar/CalendarController$Command$Handler;)V

    .line 999
    invoke-direct {p0, v3}, Lcom/android/calendar/AllInOneCalendarActivity;->setOnSaveInstanceStateCalled(Z)V

    .line 1001
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1003
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mUpdateOnResume:Z

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->initFragments(J)V

    .line 1005
    iput-boolean v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mUpdateOnResume:Z

    .line 1007
    :cond_1
    iput-boolean v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPaused:Z

    .line 1008
    iput-boolean v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mGlobalLayoutFinished:Z

    .line 1009
    new-instance v0, Lcom/android/calendar/AllInOneCalendarActivity$10;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneCalendarActivity$10;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;)V

    invoke-direct {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->runOnGlobalLayout(Ljava/lang/Runnable;)V

    .line 1016
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mNewIntentFragment:Landroid/util/Pair;

    if-eqz v0, :cond_2

    .line 1017
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mNewIntentFragment:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mNewIntentFragment:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/calendar/OverlayFragment;

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    .line 1018
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mNewIntentFragment:Landroid/util/Pair;

    .line 1021
    :cond_2
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsTabletConfig:Z

    if-nez v0, :cond_3

    .line 1025
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/android/calendar/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->invalidateOptionsMenu()V

    .line 1028
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->configureDrawerLayout()V

    .line 1030
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->setTimeChangesReceiver(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCalIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1041
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getOverlayFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1042
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getOverlayFragment()Lcom/android/calendar/OverlayFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/CreateFabFragment;

    if-nez v0, :cond_7

    .line 1044
    :goto_2
    if-eqz v2, :cond_8

    .line 1046
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->getCreateFab()Landroid/view/View;

    move-result-object v0

    .line 1047
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    .line 1048
    new-instance v0, Lcom/android/calendar/AllInOneCalendarActivity$11;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneCalendarActivity$11;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;)V

    invoke-direct {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->runOnGlobalLayout(Ljava/lang/Runnable;)V

    .line 1072
    :cond_4
    :goto_3
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->speedDialSupported:Z

    if-eqz v0, :cond_5

    .line 1073
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    sget v1, Lcom/android/calendar/R$string;->accessibility_compose:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->updateFabContentDescription(Ljava/lang/CharSequence;)V

    .line 1076
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZoneUpdateDialogLauncher:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;

    invoke-virtual {v0, p0}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->maybeLaunchDialog(Landroid/app/Activity;)V

    .line 1078
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 1080
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsTabletConfig:Z

    invoke-static {p0, v0, v1}, Lcom/android/calendar/AnalyticsUtils;->postAppOpenAnalytics(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v3

    .line 989
    goto/16 :goto_1

    :cond_7
    move v2, v3

    .line 1042
    goto :goto_2

    .line 1055
    :cond_8
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->restoreExpandedSpeedDial:Z

    if-eqz v0, :cond_9

    .line 1057
    iput-boolean v3, p0, Lcom/android/calendar/AllInOneCalendarActivity;->restoreExpandedSpeedDial:Z

    .line 1058
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->getCreateFab()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1059
    new-instance v0, Lcom/android/calendar/AllInOneCalendarActivity$12;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneCalendarActivity$12;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;)V

    invoke-direct {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->runOnGlobalLayout(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1070
    :cond_9
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->maybeAddCreatePromos()V

    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1238
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mInfoFragmentDismiss:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mInfoFragmentDismiss:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mInfoFragmentDismiss:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1241
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/calendar/AllInOneCalendarActivity;->setOnSaveInstanceStateCalled(Z)V

    .line 1242
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1243
    const-string v0, "key_restore_time"

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1244
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity;->saveOverlayFragmentTag(Landroid/os/Bundle;)V

    .line 1245
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->speedDialSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->isSpeedDialExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1246
    const-string v0, "key_restore_speed_dial"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1247
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->restoreExpandedSpeedDialPulseId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1248
    const-string v0, "key_restore_speed_dial_pulse_id"

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->restoreExpandedSpeedDialPulseId:Ljava/lang/Integer;

    .line 1249
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1248
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1252
    :cond_1
    const-string v0, "key_shown_promo_index"

    iget v1, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mShownPromoIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1253
    const-string v0, "key_promo_accepted_millis"

    iget-wide v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPromoAcceptedMillis:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1254
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 2664
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2665
    const-class v1, Lcom/android/calendar/SearchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2666
    const/high16 v1, 0x20030000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2669
    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 2670
    const/4 v0, 0x1

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1777
    const-string v0, "preferences_week_start_day"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1778
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPaused:Z

    if-eqz v0, :cond_2

    .line 1779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mUpdateOnResume:Z

    .line 1784
    :cond_0
    :goto_0
    const-string v0, "preference_key_last_view"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1785
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerFragment:Lcom/android/calendar/calendarlist/DrawerFragment;

    if-eqz v0, :cond_1

    .line 1786
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mDrawerFragment:Lcom/android/calendar/calendarlist/DrawerFragment;

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/DrawerFragment;->refreshViewSwitcherIcons()V

    .line 1789
    :cond_1
    return-void

    .line 1781
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->initFragments(J)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1264
    invoke-super {p0}, Lcom/android/calendar/AbstractCalendarActivity;->onStop()V

    .line 1266
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->clearScreenBuilderTask()V

    .line 1267
    return-void
.end method

.method public onSwipeGestureEnd(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 0

    .prologue
    .line 2404
    return-void
.end method

.method public onSwipeGestureStart(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 0

    .prologue
    .line 2399
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 2656
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2648
    const-string v0, "AllInOneCalendarAct"

    const-string v1, "TabSelected AllInOne=%s finishing:%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->isFinishing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2649
    if-eqz p1, :cond_0

    .line 2650
    const-string v0, "AllInOneCalendarAct"

    const-string v1, "TabSelected event from unknown tab: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2652
    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 2660
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 1229
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1234
    :goto_0
    return-void

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0, p0}, Lcom/android/calendar/CalendarController;->notifyHomePressed(Ljava/lang/Object;)V

    .line 1233
    invoke-super {p0}, Lcom/android/calendar/AbstractCalendarActivity;->onUserLeaveHint()V

    goto :goto_0
.end method

.method public onViewScreenCreationFailure()V
    .locals 2

    .prologue
    .line 2143
    sget v0, Lcom/android/calendar/R$string;->event_not_found:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2144
    return-void
.end method

.method public onViewScreenCreationSuccess(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;Lcom/android/calendar/timely/TimelineItem;)V
    .locals 0

    .prologue
    .line 2138
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/AllInOneCalendarActivity;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    .line 2139
    return-void
.end method

.method public onWeekDividerTap(Lcom/android/calendar/timely/TimelyDayView;)V
    .locals 3

    .prologue
    .line 2387
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getOrCreateLiftFabAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 2388
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2389
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFloatingActionButton()Landroid/widget/ImageButton;

    move-result-object v1

    .line 2390
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getLiftFabAnimatorForButton()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2391
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getLiftFabAnimatorForDrawable()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2392
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 2394
    :cond_0
    return-void
.end method

.method public performDelayedAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)V
    .locals 3

    .prologue
    .line 2301
    .line 2302
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getDelayedActionPerformer()Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;

    move-result-object v0

    .line 2303
    if-eqz v0, :cond_0

    .line 2304
    invoke-interface {v0, p1}, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;->performDelayedAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)V

    .line 2308
    :goto_0
    return-void

    .line 2306
    :cond_0
    const-string v0, "AllInOneCalendarAct"

    const-string v1, "Failing to perform delayed action due to performer not found"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public refreshCalendars()V
    .locals 2

    .prologue
    .line 1495
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1496
    new-instance v1, Lcom/android/calendar/AllInOneCalendarActivity$16;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/AllInOneCalendarActivity$16;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 1528
    invoke-virtual {v1, v0}, Lcom/android/calendar/AllInOneCalendarActivity$16;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1529
    return-void
.end method

.method public shouldDelayAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2278
    iget v1, p1, Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;->mActionId:I

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    instance-of v1, v1, Lcom/android/calendar/task/TimelineTask;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    instance-of v1, v1, Lcom/android/calendar/groove/TimelineGroove;

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p1, Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    .line 2282
    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->supportsSwipe()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2293
    :cond_1
    :goto_0
    return v0

    .line 2289
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getDelayedActionPerformer()Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;

    move-result-object v1

    .line 2290
    if-eqz v1, :cond_1

    .line 2291
    invoke-interface {v1, p1}, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;->shouldDelayAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)Z

    move-result v0

    goto :goto_0
.end method

.method protected showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V
    .locals 1

    .prologue
    .line 2163
    invoke-super {p0, p1, p2}, Lcom/android/calendar/AbstractCalendarActivity;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    .line 2165
    instance-of v0, p2, Lcom/android/calendar/CreateFabFragment;

    if-nez v0, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->startHideAnimatorCreateFab()V

    .line 2168
    :cond_0
    return-void
.end method

.method public switchView(IZ)V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 1578
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    .line 1579
    sget v2, Lcom/android/calendar/R$id;->main_pane:I

    invoke-virtual {v7, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    .line 1584
    :try_start_0
    iget-boolean v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsTabletConfig:Z

    if-nez v2, :cond_f

    .line 1587
    iget v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mOrientation:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_0

    .line 1592
    :cond_0
    sget v2, Lcom/android/calendar/R$id;->list_week_view_3days:I

    if-ne p1, v2, :cond_5

    .line 1593
    instance-of v2, v3, Lcom/android/calendar/timely/ListWeekFragment;

    if-eqz v2, :cond_2

    .line 1717
    :cond_1
    :goto_0
    return-void

    .line 1598
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    sget v3, Lcom/android/calendar/R$id;->main_pane:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/CalendarController;->deregisterHandler(Ljava/lang/Integer;)V

    .line 1600
    new-instance v3, Lcom/android/calendar/timely/ListWeekFragment;

    invoke-direct {v3}, Lcom/android/calendar/timely/ListWeekFragment;-><init>()V

    .line 1601
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/calendar/timely/ListWeekFragment;->createArgs(J)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1603
    sget v2, Lcom/android/calendar/R$string;->analytics_nday_view:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v2

    move-object v2, v3

    move v3, v10

    .line 1701
    :goto_1
    if-eqz v5, :cond_4

    .line 1702
    :try_start_1
    iget-boolean v5, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mPaused:Z

    if-nez v5, :cond_3

    .line 1703
    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    sget v6, Lcom/android/calendar/R$id;->main_pane:I

    invoke-virtual {v5, v6, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 1704
    iget-object v5, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    sget v6, Lcom/android/calendar/R$id;->main_pane:I

    check-cast v2, Lcom/android/calendar/CalendarController$Command$Handler;

    invoke-virtual {v5, v6, v2}, Lcom/android/calendar/CalendarController;->registerHandler(ILcom/android/calendar/CalendarController$Command$Handler;)V

    .line 1707
    :cond_3
    const-string v2, "preference_key_back_to_month"

    invoke-static {p0, v2, p2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1710
    :cond_4
    iget-boolean v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mIsTabletConfig:Z

    invoke-static {p0, v2, p1}, Lcom/android/calendar/timely/settings/PreferencesUtils;->setLastUsedView(Landroid/content/Context;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1712
    if-eq v3, v4, :cond_1

    .line 1713
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v2

    .line 1714
    invoke-virtual {p0, v3}, Lcom/android/calendar/AllInOneCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Lcom/android/calendar/AnalyticsLogger;->trackView(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1605
    :cond_5
    :try_start_2
    sget v2, Lcom/android/calendar/R$id;->month_view:I

    if-ne p1, v2, :cond_6

    .line 1606
    instance-of v2, v3, Lcom/android/calendar/timely/MonthFragment;

    if-nez v2, :cond_1

    .line 1611
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    sget v3, Lcom/android/calendar/R$id;->main_pane:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/CalendarController;->deregisterHandler(Ljava/lang/Integer;)V

    .line 1613
    new-instance v3, Lcom/android/calendar/timely/MonthFragment;

    invoke-direct {v3}, Lcom/android/calendar/timely/MonthFragment;-><init>()V

    .line 1614
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/calendar/timely/MonthFragment;->createArgs(J)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1615
    sget v2, Lcom/android/calendar/R$string;->analytics_month_view:I

    move v10, v2

    move-object v2, v3

    move v3, v10

    .line 1616
    goto :goto_1

    .line 1617
    :cond_6
    sget v2, Lcom/android/calendar/R$id;->week_view:I

    if-ne p1, v2, :cond_7

    .line 1618
    instance-of v2, v3, Lcom/android/calendar/timely/gridviews/WeekFragment;

    if-nez v2, :cond_1

    .line 1623
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    sget v3, Lcom/android/calendar/R$id;->main_pane:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/CalendarController;->deregisterHandler(Ljava/lang/Integer;)V

    .line 1625
    new-instance v3, Lcom/android/calendar/timely/gridviews/WeekFragment;

    invoke-direct {v3}, Lcom/android/calendar/timely/gridviews/WeekFragment;-><init>()V

    .line 1626
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/calendar/timely/gridviews/WeekFragment;->createArgs(J)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1627
    sget v2, Lcom/android/calendar/R$string;->analytics_week_view:I

    move v10, v2

    move-object v2, v3

    move v3, v10

    .line 1628
    goto/16 :goto_1

    .line 1629
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/calendar/AllInOneCalendarActivity;->canChangeMode(Landroid/app/Fragment;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1630
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    sget v3, Lcom/android/calendar/R$id;->main_pane:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/CalendarController;->deregisterHandler(Ljava/lang/Integer;)V

    .line 1632
    new-instance v3, Lcom/android/calendar/timely/DualTimelineGridFragment;

    invoke-direct {v3}, Lcom/android/calendar/timely/DualTimelineGridFragment;-><init>()V

    .line 1633
    sget v2, Lcom/android/calendar/R$id;->hourly_view:I

    if-ne p1, v2, :cond_8

    move v6, v5

    .line 1634
    :cond_8
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    .line 1635
    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v8

    .line 1634
    invoke-static {v8, v9, v6}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->createArgs(JZ)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1640
    if-eqz p2, :cond_9

    .line 1641
    move-object v0, v3

    check-cast v0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->forceShowInitialDay()V

    .line 1644
    :cond_9
    if-eqz v6, :cond_a

    .line 1645
    sget v2, Lcom/android/calendar/R$string;->analytics_day_grid_view:I

    :goto_2
    move v10, v2

    move-object v2, v3

    move v3, v10

    .line 1647
    goto/16 :goto_1

    .line 1645
    :cond_a
    sget v2, Lcom/android/calendar/R$string;->analytics_agenda_view:I

    goto :goto_2

    .line 1649
    :cond_b
    move-object v0, v3

    check-cast v0, Lcom/android/calendar/timely/DualTimelineGridFragment;

    move-object v2, v0

    .line 1650
    invoke-virtual {v2}, Lcom/android/calendar/timely/DualTimelineGridFragment;->inGridMode()Z

    move-result v5

    if-eqz v5, :cond_c

    sget v5, Lcom/android/calendar/R$id;->agenda_view:I

    if-eq p1, v5, :cond_d

    .line 1651
    :cond_c
    invoke-virtual {v2}, Lcom/android/calendar/timely/DualTimelineGridFragment;->inGridMode()Z

    move-result v5

    if-nez v5, :cond_1

    sget v5, Lcom/android/calendar/R$id;->hourly_view:I

    if-ne p1, v5, :cond_1

    .line 1652
    :cond_d
    invoke-virtual {v2}, Lcom/android/calendar/timely/DualTimelineGridFragment;->getMainPosition()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/calendar/timely/DualTimelineGridFragment;->onModeChanged(I)V

    .line 1653
    sget v2, Lcom/android/calendar/R$id;->hourly_view:I

    if-ne p1, v2, :cond_e

    .line 1654
    sget v2, Lcom/android/calendar/R$string;->analytics_day_grid_view:I

    :goto_3
    move v5, v6

    move v10, v2

    move-object v2, v3

    move v3, v10

    .line 1659
    goto/16 :goto_1

    .line 1654
    :cond_e
    sget v2, Lcom/android/calendar/R$string;->analytics_agenda_view:I

    goto :goto_3

    .line 1660
    :cond_f
    sget v2, Lcom/android/calendar/R$id;->week_view:I

    if-ne p1, v2, :cond_10

    .line 1661
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    sget v6, Lcom/android/calendar/R$id;->main_pane:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/calendar/CalendarController;->deregisterHandler(Ljava/lang/Integer;)V

    .line 1663
    instance-of v2, v3, Lcom/android/calendar/timely/gridviews/WeekFragment;

    if-nez v2, :cond_1

    .line 1668
    new-instance v3, Lcom/android/calendar/timely/gridviews/WeekFragment;

    invoke-direct {v3}, Lcom/android/calendar/timely/gridviews/WeekFragment;-><init>()V

    .line 1669
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/calendar/timely/gridviews/WeekFragment;->createArgs(J)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1670
    sget v2, Lcom/android/calendar/R$string;->analytics_week_view:I

    move v10, v2

    move-object v2, v3

    move v3, v10

    .line 1671
    goto/16 :goto_1

    .line 1672
    :cond_10
    sget v2, Lcom/android/calendar/R$id;->month_view:I

    if-ne p1, v2, :cond_11

    .line 1673
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    sget v6, Lcom/android/calendar/R$id;->main_pane:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/calendar/CalendarController;->deregisterHandler(Ljava/lang/Integer;)V

    .line 1675
    instance-of v2, v3, Lcom/android/calendar/timely/MonthFragment;

    if-nez v2, :cond_1

    .line 1680
    new-instance v3, Lcom/android/calendar/timely/MonthFragment;

    invoke-direct {v3}, Lcom/android/calendar/timely/MonthFragment;-><init>()V

    .line 1681
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/calendar/timely/MonthFragment;->createArgs(J)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1682
    sget v2, Lcom/android/calendar/R$string;->analytics_month_view:I

    move v10, v2

    move-object v2, v3

    move v3, v10

    .line 1683
    goto/16 :goto_1

    .line 1685
    :cond_11
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    sget v8, Lcom/android/calendar/R$id;->main_pane:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/calendar/CalendarController;->deregisterHandler(Ljava/lang/Integer;)V

    .line 1686
    sget v2, Lcom/android/calendar/R$id;->hourly_view:I

    if-ne p1, v2, :cond_12

    move v6, v5

    .line 1687
    :cond_12
    instance-of v2, v3, Lcom/android/calendar/timely/DualTimelineGridFragment;

    if-eqz v2, :cond_13

    .line 1688
    check-cast v3, Lcom/android/calendar/timely/DualTimelineGridFragment;

    invoke-virtual {v3}, Lcom/android/calendar/timely/DualTimelineGridFragment;->inGridMode()Z

    move-result v2

    if-eq v2, v6, :cond_1

    .line 1693
    :cond_13
    new-instance v3, Lcom/android/calendar/timely/DualTimelineGridFragment;

    invoke-direct {v3}, Lcom/android/calendar/timely/DualTimelineGridFragment;-><init>()V

    .line 1694
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;

    .line 1695
    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v8

    .line 1694
    invoke-static {v8, v9, v6}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->createArgs(JZ)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1696
    if-eqz v6, :cond_14

    .line 1697
    sget v2, Lcom/android/calendar/R$string;->analytics_day_grid_view:I

    :goto_4
    move v10, v2

    move-object v2, v3

    move v3, v10

    .line 1698
    goto/16 :goto_1

    .line 1697
    :cond_14
    sget v2, Lcom/android/calendar/R$string;->analytics_agenda_view:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 1712
    :catchall_0
    move-exception v2

    move v3, v4

    :goto_5
    if-eq v3, v4, :cond_15

    .line 1713
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v4

    .line 1714
    invoke-virtual {p0, v3}, Lcom/android/calendar/AllInOneCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, p0, v3}, Lcom/android/calendar/AnalyticsLogger;->trackView(Landroid/content/Context;Ljava/lang/String;)V

    .line 1715
    :cond_15
    throw v2

    .line 1712
    :catchall_1
    move-exception v2

    goto :goto_5
.end method
