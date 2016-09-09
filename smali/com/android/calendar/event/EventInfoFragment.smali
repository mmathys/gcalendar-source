.class public Lcom/android/calendar/event/EventInfoFragment;
.super Lcom/android/calendar/event/DetailsDialogFragment;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;
.implements Lcom/android/calendar/CalendarController$Command$Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;,
        Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;,
        Lcom/android/calendar/event/EventInfoFragment$CommandBar;,
        Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;,
        Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;,
        Lcom/android/calendar/event/EventInfoFragment$Screen;,
        Lcom/android/calendar/event/EventInfoFragment$ExceptionResponseAsyncQueryService;,
        Lcom/android/calendar/event/EventInfoFragment$SetUpForAnimation;,
        Lcom/android/calendar/event/EventInfoFragment$ShowDataView;,
        Lcom/android/calendar/event/EventInfoFragment$HideLoadingView;,
        Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;,
        Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;,
        Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;,
        Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;,
        Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;,
        Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/DetailsDialogFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/content/DialogInterface$OnKeyListener;",
        "Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;",
        "Lcom/android/calendar/CalendarController$Command$Handler;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COMMAND_BAR_ID:I

.field private static final COMMAND_GROUP_ID:I

.field public static final INITIAL_EVENT_TIME_PERIOD:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

.field static final PROPOSE_NEW_TIME_EXTENDED_PROPERTIES:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field private static final mResponseIds:[I

.field private static sIsRsvpCommentSupportedByExchange:Ljava/lang/Boolean;


# instance fields
.field private mAddNoteButton:Landroid/view/View;

.field private mAllDataLoaded:Z

.field private mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

.field private mCheckedResponseColor:I

.field private mCheckedResponseId:I

.field private mController:Lcom/android/calendar/CalendarController;

.field protected mDelayedActionDescription:Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;

.field protected mDismissInProgress:Z

.field private mDisplayedFollowUpButton:Landroid/view/View;

.field private mEditButton:Landroid/widget/ImageView;

.field private mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

.field private mErrorMsgView:Landroid/view/View;

.field protected mEventInfoView:Landroid/view/ViewGroup;

.field protected mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

.field private mGrooveCallback:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
            "<",
            "Lcom/android/calendar/groove/TimelineGroove;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsFragmentRestored:Z

.field private mIsPaused:Z

.field mIsProposeTimeSupported:Z

.field private mIsResponseFollowUpShown:Ljava/lang/Boolean;

.field protected mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mLoaderManager:Landroid/app/LoaderManager;

.field private mLoadingMsgView:Landroid/view/View;

.field private mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

.field mMeetingResponseComment:Ljava/lang/String;

.field protected mModel:Lcom/android/calendar/event/CalendarEventModel;

.field private mMoreOptionsButton:Landroid/view/View;

.field private mOnMenuItemClickListener:Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;

.field protected mOriginalAttendeeResponse:I

.field private mOverlayView:Landroid/view/ViewGroup;

.field private mProposeTimeButton:Landroid/view/View;

.field mProposedEndTime:J

.field mProposedStartTime:J

.field protected mQueriesCompleted:I

.field protected mQueriesRequested:I

.field private mResponseBarView:Landroid/view/ViewGroup;

.field private mResponseColor:I

.field private mResponseHeight:I

.field private mSaveResponseRunnable:Ljava/lang/Runnable;

.field protected mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

.field private mShouldSaveResponseOnPause:Z

.field private mShowAnimation:Z

.field private mTentativeUserSetResponse:I

.field private final mTimezoneUpdater:Ljava/lang/Runnable;

.field private mView:Landroid/view/ViewGroup;

.field private mViewLogged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    const-class v0, Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/calendar/event/EventInfoFragment;->$assertionsDisabled:Z

    .line 421
    const-class v0, Lcom/android/calendar/event/EventInfoFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    .line 439
    sget v0, Lcom/android/calendar/R$id;->event_info_actions:I

    sput v0, Lcom/android/calendar/event/EventInfoFragment;->COMMAND_BAR_ID:I

    .line 440
    sget v0, Lcom/android/calendar/R$id;->event_info_commands:I

    sput v0, Lcom/android/calendar/event/EventInfoFragment;->COMMAND_GROUP_ID:I

    .line 448
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "proposedStartTime"

    aput-object v3, v0, v2

    const-string v3, "proposedEndTime"

    aput-object v3, v0, v1

    const-string v3, "meetingRequestComment"

    aput-object v3, v0, v4

    sput-object v0, Lcom/android/calendar/event/EventInfoFragment;->PROPOSE_NEW_TIME_EXTENDED_PROPERTIES:[Ljava/lang/String;

    .line 477
    new-array v0, v5, [I

    sget v3, Lcom/android/calendar/R$id;->response_yes:I

    aput v3, v0, v2

    sget v2, Lcom/android/calendar/R$id;->response_no:I

    aput v2, v0, v1

    sget v1, Lcom/android/calendar/R$id;->response_maybe:I

    aput v1, v0, v4

    sput-object v0, Lcom/android/calendar/event/EventInfoFragment;->mResponseIds:[I

    .line 506
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/event/EventInfoFragment;->sIsRsvpCommentSupportedByExchange:Ljava/lang/Boolean;

    .line 586
    new-instance v0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    invoke-direct {v0}, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;-><init>()V

    sput-object v0, Lcom/android/calendar/event/EventInfoFragment;->INITIAL_EVENT_TIME_PERIOD:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    return-void

    :cond_0
    move v0, v2

    .line 186
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1067
    invoke-direct {p0}, Lcom/android/calendar/event/DetailsDialogFragment;-><init>()V

    .line 473
    iput v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    .line 481
    iput-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsResponseFollowUpShown:Ljava/lang/Boolean;

    .line 483
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mCheckedResponseId:I

    .line 488
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mHandler:Landroid/os/Handler;

    .line 495
    iput-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;

    .line 497
    iput-wide v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mProposedStartTime:J

    .line 498
    iput-wide v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mProposedEndTime:J

    .line 499
    iput-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mMeetingResponseComment:Ljava/lang/String;

    .line 522
    iput-boolean v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mViewLogged:Z

    .line 527
    iput-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

    .line 529
    iput-boolean v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsPaused:Z

    .line 530
    iput-boolean v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mShouldSaveResponseOnPause:Z

    .line 581
    iput v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesCompleted:I

    .line 587
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->INITIAL_EVENT_TIME_PERIOD:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    .line 731
    new-instance v0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;-><init>(Lcom/android/calendar/event/EventInfoFragment;Lcom/android/calendar/event/EventInfoFragment$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mOnMenuItemClickListener:Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;

    .line 2593
    new-instance v0, Lcom/android/calendar/event/EventInfoFragment$21;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/EventInfoFragment$21;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mTimezoneUpdater:Ljava/lang/Runnable;

    .line 1068
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/EventInfoFragment;Lcom/android/calendar/timely/TimelineItem;)I
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->getDeleteAccessibilityStringId(Lcom/android/calendar/timely/TimelineItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->deleteTask()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/calendar/event/EventInfoFragment;)Lcom/android/calendar/EditResponseHelper;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/event/EventInfoFragment;)I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/calendar/event/EventInfoFragment;I)I
    .locals 0

    .prologue
    .line 186
    iput p1, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/calendar/event/EventInfoFragment;I)Z
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->canFollowUpOnResponse(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/event/EventInfoFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getSaveResponseRunnable()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/event/EventInfoFragment;)J
    .locals 2

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getSaveResponseTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/event/EventInfoFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/event/EventInfoFragment;I)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->updateResponseId(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->updateResponseButtons(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/EventInfoFragment;->enableResponseButtons(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/calendar/event/EventInfoFragment;I)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->updateResponseListeners(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/calendar/event/EventInfoFragment;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsResponseFollowUpShown:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/ViewGroup;IZZ)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/event/EventInfoFragment;->setResponseFollowUpVisible(Landroid/view/ViewGroup;IZZ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/calendar/event/EventInfoFragment;)Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/calendar/event/EventInfoFragment;)Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mAllDataLoaded:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/calendar/event/EventInfoFragment;)Lcom/android/calendar/timely/LoadingStateManager;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->onViewUpdated()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->launchProposeTime()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/calendar/event/EventInfoFragment;)Z
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->isRsvpCommentingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/calendar/event/EventInfoFragment;)Z
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->saveResponse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/calendar/event/EventInfoFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->showEventView(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/calendar/event/EventInfoFragment;)I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mCheckedResponseId:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/calendar/event/EventInfoFragment;I)I
    .locals 0

    .prologue
    .line 186
    iput p1, p0, Lcom/android/calendar/event/EventInfoFragment;->mCheckedResponseId:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/calendar/event/EventInfoFragment;I)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->onResponseChanged(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->timezoneUpdate()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->doEdit()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/calendar/event/EventInfoFragment;)Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mOverlayBackground:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->onEventsChanged()V

    return-void
.end method

.method static synthetic access$4600()[I
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->mResponseIds:[I

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mProposeTimeButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment;->mProposeTimeButton:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mAddNoteButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mMoreOptionsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/event/EventInfoFragment;)Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mShowAnimation:Z

    return v0
.end method

.method static synthetic access$5000()I
    .locals 1

    .prologue
    .line 186
    sget v0, Lcom/android/calendar/event/EventInfoFragment;->COMMAND_BAR_ID:I

    return v0
.end method

.method static synthetic access$5100()I
    .locals 1

    .prologue
    .line 186
    sget v0, Lcom/android/calendar/event/EventInfoFragment;->COMMAND_GROUP_ID:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/event/EventInfoFragment;)Lcom/android/calendar/timely/animations/EventInfoAnimationView;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/event/EventInfoFragment;)I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseHeight:I

    return v0
.end method

.method private canAddComment()Z
    .locals 2

    .prologue
    .line 1190
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->isRsvpCommentingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.gm.exchange"

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    .line 1191
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 1192
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel;->isEventCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1190
    :goto_0
    return v0

    .line 1192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canFollowUpOnResponse(I)Z
    .locals 1

    .prologue
    .line 1168
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->canProposeTime(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->canAddComment()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canProposeTime(I)Z
    .locals 4

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->isRsvpCommentingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const-string v0, "com.google.android.gm.exchange"

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    .line 1178
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 1183
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel;->isEventCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1175
    :goto_0
    return v0

    .line 1183
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkRsvpCommentSupport()V
    .locals 0

    .prologue
    .line 1825
    return-void
.end method

.method public static createArguments(Lcom/android/calendar/timely/TimelineItem;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1087
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1088
    const-string v1, "timeline_item"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1089
    const-string v1, "initial_timeline_item"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1090
    return-object v0
.end method

.method public static createArguments(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1100
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1101
    const-string v1, "timeline_item"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1102
    const-string v1, "initial_timeline_item"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1103
    const-string v1, "animation_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1104
    return-object v0
.end method

.method private createExceptionResponse(JI)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2238
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2239
    const-string v1, "originalInstanceTime"

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2240
    const-string v1, "selfAttendeeStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2241
    const-string v1, "eventStatus"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2243
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    .line 2244
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 2243
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2247
    iput-boolean v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mDismissInProgress:Z

    .line 2249
    invoke-direct {p0, p3, v1, v0}, Lcom/android/calendar/event/EventInfoFragment;->insertExceptionResponse(ILandroid/net/Uri;Landroid/content/ContentValues;)V

    .line 2251
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getActivationLogger(Landroid/content/Context;)Lcom/android/calendar/ActivationLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/calendar/ActivationLogger;->userRespondedToInvite(Ljava/lang/String;)V

    .line 2253
    return-void
.end method

.method private deleteTask()V
    .locals 4

    .prologue
    .line 697
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/task/BaseTaskDataFactory;->getTaskEditManagerFactory()Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;

    move-result-object v0

    .line 698
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;->loadTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/CalendarEventModel;)Lcom/android/calendar/event/data/AbstractTaskEditManager;

    move-result-object v0

    .line 699
    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/event/EventInfoFragment$1;-><init>(Lcom/android/calendar/event/EventInfoFragment;Lcom/android/calendar/event/data/AbstractEditManager;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/data/AbstractEditManager;->delete(Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;)V

    .line 729
    return-void
.end method

.method private doEdit()V
    .locals 3

    .prologue
    .line 2505
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2506
    instance-of v0, v1, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 2507
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    .line 2508
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v2

    instance-of v2, v2, Lcom/android/calendar/groove/TimelineGroove;

    if-eqz v2, :cond_0

    .line 2509
    sget v2, Lcom/android/calendar/R$string;->analytics_action_edit_button_pressed:I

    invoke-static {v1, v2}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 2511
    :cond_0
    iget v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesCompleted:I

    iget v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesRequested:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;->onInfoDoEdit(Ljava/lang/Object;)V

    .line 2513
    :cond_1
    return-void

    .line 2511
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    goto :goto_0
.end method

.method private enableResponseButtons(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    .line 2482
    if-nez p1, :cond_1

    .line 2493
    :cond_0
    return-void

    .line 2487
    :cond_1
    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->mResponseIds:[I

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 2488
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2489
    if-eqz v3, :cond_2

    .line 2490
    invoke-virtual {v3, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 2487
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static findButtonIdForResponse(I)I
    .locals 1

    .prologue
    .line 2344
    packed-switch p0, :pswitch_data_0

    .line 2355
    :pswitch_0
    const/4 v0, -0x1

    .line 2357
    :goto_0
    return v0

    .line 2346
    :pswitch_1
    sget v0, Lcom/android/calendar/R$id;->response_yes:I

    goto :goto_0

    .line 2349
    :pswitch_2
    sget v0, Lcom/android/calendar/R$id;->response_maybe:I

    goto :goto_0

    .line 2352
    :pswitch_3
    sget v0, Lcom/android/calendar/R$id;->response_no:I

    goto :goto_0

    .line 2344
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getAccessibilityPrefixId(Lcom/android/calendar/timely/TimelineItem;)I
    .locals 1

    .prologue
    .line 4014
    invoke-static {p1}, Lcom/android/calendar/timely/TimelineItemUtil;->isAnyReminder(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4015
    sget v0, Lcom/android/calendar/R$string;->reminder_info_title:I

    .line 4020
    :goto_0
    return v0

    .line 4017
    :cond_0
    invoke-static {p1}, Lcom/android/calendar/timely/TimelineItemUtil;->isGroove(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4018
    sget v0, Lcom/android/calendar/R$string;->groove_info_title:I

    goto :goto_0

    .line 4020
    :cond_1
    sget v0, Lcom/android/calendar/R$string;->event_info_title:I

    goto :goto_0
.end method

.method private getAnimationData()Lcom/android/calendar/timely/animations/EventInfoAnimationData;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3547
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "animation_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsFragmentRestored:Z

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 3563
    :cond_1
    :goto_0
    return-object v0

    .line 3551
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->hasTimeChanges()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 3552
    goto :goto_0

    .line 3555
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "animation_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 3559
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->getOrientation()I

    move-result v3

    if-eq v2, v3, :cond_1

    move-object v0, v1

    .line 3560
    goto :goto_0
.end method

.method private getCounterProposalOperations(J)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/16 v10, 0x0

    .line 2185
    sget-object v0, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/android/calendar/event/EditHelper;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2189
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2194
    sget-object v4, Lcom/android/calendar/event/EventInfoFragment;->PROPOSE_NEW_TIME_EXTENDED_PROPERTIES:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 2196
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x1

    aput-object v6, v7, v8

    .line 2197
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v8, "event_id=? AND name=?"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 2198
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2201
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2202
    iget-wide v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mProposedStartTime:J

    cmp-long v1, v4, v10

    if-eqz v1, :cond_1

    .line 2203
    const-string v1, "proposedStartTime"

    iget-wide v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mProposedStartTime:J

    .line 2204
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 2203
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2205
    iput-wide v10, p0, Lcom/android/calendar/event/EventInfoFragment;->mProposedStartTime:J

    .line 2207
    :cond_1
    iget-wide v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mProposedEndTime:J

    cmp-long v1, v4, v10

    if-eqz v1, :cond_2

    .line 2208
    const-string v1, "proposedEndTime"

    iget-wide v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mProposedEndTime:J

    .line 2209
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 2208
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    iput-wide v10, p0, Lcom/android/calendar/event/EventInfoFragment;->mProposedEndTime:J

    .line 2212
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mMeetingResponseComment:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2213
    const-string v1, "meetingRequestComment"

    iget-object v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mMeetingResponseComment:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mMeetingResponseComment:Ljava/lang/String;

    .line 2217
    :cond_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2218
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2219
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 2220
    const-string v1, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2221
    const-string v6, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    const-string v1, "value"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2224
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2226
    :cond_4
    return-object v3
.end method

.method private getDeleteAccessibilityStringId(Lcom/android/calendar/timely/TimelineItem;)I
    .locals 1

    .prologue
    .line 4000
    invoke-static {p1}, Lcom/android/calendar/timely/TimelineItemUtil;->isAnyReminder(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4001
    sget v0, Lcom/android/calendar/R$string;->task_deleted_accessibility:I

    .line 4006
    :goto_0
    return v0

    .line 4003
    :cond_0
    invoke-static {p1}, Lcom/android/calendar/timely/TimelineItemUtil;->isGroove(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4004
    sget v0, Lcom/android/calendar/R$string;->groove_deleted:I

    goto :goto_0

    .line 4006
    :cond_1
    sget v0, Lcom/android/calendar/R$string;->event_deleted_accessibility:I

    goto :goto_0
.end method

.method private getGrooveCallback()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
            "<",
            "Lcom/android/calendar/groove/TimelineGroove;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4646
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mGrooveCallback:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    if-nez v0, :cond_0

    .line 4647
    new-instance v0, Lcom/android/calendar/event/EventInfoFragment$33;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/EventInfoFragment$33;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mGrooveCallback:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    .line 4664
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mGrooveCallback:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    return-object v0
.end method

.method private getLabelForResponsePrompt(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 2442
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2443
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2444
    :cond_0
    const/4 v0, 0x0

    .line 2456
    :cond_1
    :goto_0
    return-object v0

    .line 2446
    :cond_2
    sget v1, Lcom/android/calendar/R$string;->response_prompt:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2447
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 2452
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->getLabelForResponseView(I)Ljava/lang/String;

    move-result-object v1

    .line 2453
    if-eqz v1, :cond_1

    .line 2456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getLabelForResponseView(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2460
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2461
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2472
    :cond_0
    :goto_0
    return-object v0

    .line 2464
    :cond_1
    sget v1, Lcom/android/calendar/R$id;->response_yes:I

    if-ne p1, v1, :cond_2

    .line 2465
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->rsvp_accepted:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2466
    :cond_2
    sget v1, Lcom/android/calendar/R$id;->response_maybe:I

    if-ne p1, v1, :cond_3

    .line 2467
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->rsvp_tentative:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2468
    :cond_3
    sget v1, Lcom/android/calendar/R$id;->response_no:I

    if-ne p1, v1, :cond_4

    .line 2469
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->rsvp_declined:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2471
    :cond_4
    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected response id: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static getModelIdSelectionArgs(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 3442
    const-string v0, "modelId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3443
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    return-object v2
.end method

.method private getResponseFollowUpButton(I)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1209
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->isRsvpCommentingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1212
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->canProposeTime(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mMoreOptionsButton:Landroid/view/View;

    .line 1223
    :cond_0
    :goto_0
    return-object v0

    .line 1214
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->canAddComment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mAddNoteButton:Landroid/view/View;

    goto :goto_0

    .line 1220
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->canProposeTime(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mProposeTimeButton:Landroid/view/View;

    goto :goto_0
.end method

.method public static getResponseFromButtonId(I)I
    .locals 1

    .prologue
    .line 2330
    sget v0, Lcom/android/calendar/R$id;->response_yes:I

    if-ne p0, v0, :cond_0

    .line 2331
    const/4 v0, 0x1

    .line 2339
    :goto_0
    return v0

    .line 2332
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->response_maybe:I

    if-ne p0, v0, :cond_1

    .line 2333
    const/4 v0, 0x4

    goto :goto_0

    .line 2334
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->response_no:I

    if-ne p0, v0, :cond_2

    .line 2335
    const/4 v0, 0x2

    goto :goto_0

    .line 2337
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getResponseId(I)I
    .locals 1

    .prologue
    .line 2645
    sparse-switch p1, :sswitch_data_0

    .line 2653
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2647
    :sswitch_0
    sget v0, Lcom/android/calendar/R$id;->response_yes:I

    goto :goto_0

    .line 2649
    :sswitch_1
    sget v0, Lcom/android/calendar/R$id;->response_no:I

    goto :goto_0

    .line 2651
    :sswitch_2
    sget v0, Lcom/android/calendar/R$id;->response_maybe:I

    goto :goto_0

    .line 2645
    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_2
        0x2a -> :sswitch_1
        0x35 -> :sswitch_0
    .end sparse-switch
.end method

.method private getSaveResponseRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2039
    new-instance v0, Lcom/android/calendar/event/EventInfoFragment$18;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/EventInfoFragment$18;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;

    .line 2064
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getSaveResponseTimeout()J
    .locals 2

    .prologue
    .line 2069
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public static getStateListDrawable(Landroid/content/res/Resources;ILandroid/graphics/ColorFilter;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2752
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 2755
    sget v0, Lcom/android/calendar/R$dimen;->info_edit_fill_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2756
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 2757
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 2758
    invoke-virtual {v3, p2}, Landroid/graphics/drawable/ShapeDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2760
    sget v0, Lcom/android/calendar/R$dimen;->info_edit_fill_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    .line 2761
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/graphics/drawable/ShapeDrawable;

    aput-object v3, v4, v1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move v3, v2

    move v4, v2

    move v5, v2

    .line 2762
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 2764
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2766
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    const v2, 0x3f59999a    # 0.85f

    .line 2767
    invoke-static {p1, v2}, Lcom/android/calendar/Utils;->adjustColorLightness(IF)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 2772
    :cond_0
    return-object v0
.end method

.method private getStatusbarAnimator()Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;
    .locals 1

    .prologue
    .line 4038
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4039
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->createInstance(Landroid/view/Window;)Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v0

    .line 4042
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasTimeChanges()Z
    .locals 6

    .prologue
    .line 3567
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getInitialItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    .line 3568
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    .line 3571
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3572
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3573
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3574
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v0

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3571
    :goto_0
    return v0

    .line 3574
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideEventView()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x4b

    const/4 v2, 0x0

    .line 971
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v1}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 973
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$4;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EventInfoFragment$4;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 982
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/calendar/R$id;->info_action_edit:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 983
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 984
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v1}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 985
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 987
    :cond_0
    return-void
.end method

.method private insertExceptionResponse(ILandroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 9

    .prologue
    .line 2256
    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$ExceptionResponseAsyncQueryService;

    .line 2257
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/event/EventInfoFragment$ExceptionResponseAsyncQueryService;-><init>(Lcom/android/calendar/event/EventInfoFragment;Landroid/content/Context;)V

    .line 2260
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->isRsvpCommentingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mMeetingResponseComment:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2261
    :cond_0
    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v6, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/calendar/event/EventInfoFragment$ExceptionResponseAsyncQueryService;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;J)V

    .line 2293
    :goto_0
    return-void

    .line 2268
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2270
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2271
    invoke-virtual {v0, p3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2269
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2273
    sget-object v0, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/android/calendar/event/EditHelper;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2278
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "event_id"

    const/4 v3, 0x0

    .line 2279
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "name"

    const-string v3, "meetingRequestComment"

    .line 2281
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "value"

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mMeetingResponseComment:Ljava/lang/String;

    .line 2283
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2285
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2277
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2287
    const/4 v2, 0x0

    .line 2288
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "com.android.calendar"

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    .line 2287
    invoke-virtual/range {v1 .. v8}, Lcom/android/calendar/event/EventInfoFragment$ExceptionResponseAsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;J)V

    goto :goto_0
.end method

.method private isExternalGrooveInstance(Landroid/database/Cursor;)Z
    .locals 2

    .prologue
    .line 3674
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;

    if-eqz v0, :cond_0

    .line 3677
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    sget-object v1, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_PROJECTION_FOR_EXTERNAL_INTENT:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_INDEX_HABIT_ID_AND_TYPE:I

    .line 3678
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google"

    sget v1, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_INDEX_ACCOUNT_TYPE:I

    .line 3679
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3674
    :goto_0
    return v0

    .line 3679
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRsvpCommentingEnabled()Z
    .locals 1

    .prologue
    .line 1196
    const/4 v0, 0x0

    return v0
.end method

.method private launchProposeTime()V
    .locals 7

    .prologue
    .line 1417
    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsProposeTimeSupported:Z

    if-nez v0, :cond_0

    .line 1448
    :goto_0
    return-void

    .line 1420
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1421
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/calendar/event/ProposeTimeActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1422
    const-string v2, "start_millis"

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v3, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1423
    const-string v2, "end_millis"

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v3, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1425
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/identity/accounts/api/AccountData;->forAccount(Ljava/lang/String;)Lcom/google/android/gms/identity/accounts/api/AccountData;

    move-result-object v2

    .line 1426
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/identity/accounts/api/AccountDataUtil;->addAccountData(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/identity/accounts/api/AccountData;)Z

    .line 1428
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1429
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1431
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 1434
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v5

    .line 1435
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1436
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1437
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1440
    :cond_2
    const-string v0, "attendees"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1441
    const-string v0, "attendee_display_names"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1444
    const-string v0, "event_color"

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v2}, Lcom/android/calendar/event/CalendarEventModel;->getEventColor()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mShouldSaveResponseOnPause:Z

    .line 1447
    const/16 v0, 0x3ee

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/EventInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method private logSendCommentToAnalytics()V
    .locals 5

    .prologue
    .line 3930
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    .line 3931
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3932
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_category_rsvp_commenting:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3933
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_action_rsvp_commenting_send_note:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3931
    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3935
    return-void
.end method

.method private logViewToAnalytics()V
    .locals 4

    .prologue
    .line 3866
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    .line 3867
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 3868
    :goto_0
    const-string v2, "com.google.android.apps.plus"

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/event/CalendarEventModel;->mCustomAppPackage:Ljava/lang/String;

    .line 3869
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3871
    if-eqz v2, :cond_1

    const-string v0, "google-plus"

    .line 3880
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    .line 3881
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "view_event"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3882
    return-void

    .line 3867
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3872
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mHasSmartMail:Z

    if-eqz v2, :cond_2

    const-string v0, "smart-mail"

    goto :goto_1

    .line 3873
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "invitation"

    goto :goto_1

    .line 3874
    :cond_4
    instance-of v0, v1, Lcom/android/calendar/timely/TimelineBirthday;

    if-eqz v0, :cond_5

    const-string v0, "birthday"

    goto :goto_1

    .line 3875
    :cond_5
    instance-of v0, v1, Lcom/android/calendar/task/TimelineTaskType;

    if-eqz v0, :cond_6

    const-string v0, "reminder"

    goto :goto_1

    .line 3876
    :cond_6
    instance-of v0, v1, Lcom/android/calendar/timely/TimelineHoliday;

    if-eqz v0, :cond_7

    const-string v0, "holiday"

    goto :goto_1

    .line 3877
    :cond_7
    instance-of v0, v1, Lcom/android/calendar/groove/TimelineGroove;

    if-eqz v0, :cond_8

    const-string v0, "groove"

    goto :goto_1

    .line 3878
    :cond_8
    const-string v0, "event"

    goto :goto_1
.end method

.method private onEventsChanged()V
    .locals 2

    .prologue
    .line 3249
    monitor-enter p0

    .line 3250
    :try_start_0
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesCompleted:I

    iget v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesRequested:I

    if-ne v0, v1, :cond_0

    .line 3251
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->reloadEvents()V

    .line 3255
    :cond_0
    monitor-exit p0

    .line 3256
    return-void

    .line 3255
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onResponseChanged(I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 1116
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    if-eqz v0, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    invoke-static {p1}, Lcom/android/calendar/event/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v2

    .line 1121
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getCurrentResponse()I

    move-result v0

    if-ne v2, v0, :cond_3

    move v0, v1

    .line 1123
    :goto_1
    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v3, v3, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    if-eqz v3, :cond_4

    .line 1124
    if-nez v0, :cond_2

    .line 1128
    iput v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    .line 1129
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->updateResponseButtons(Landroid/view/ViewGroup;)V

    .line 1130
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->updateResponseListeners(I)V

    .line 1131
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/calendar/EditResponseHelper;->showDialog(I)V

    .line 1134
    :cond_2
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->canFollowUpOnResponse(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/android/calendar/event/EventInfoFragment;->setResponseFollowUpVisible(Landroid/view/ViewGroup;IZZ)V

    goto :goto_0

    .line 1121
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1140
    :cond_4
    if-nez v0, :cond_5

    .line 1141
    iput v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    .line 1142
    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsProposeTimeSupported:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, v2}, Lcom/android/calendar/event/EventInfoFragment;->canFollowUpOnResponse(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1143
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getSaveResponseRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getSaveResponseTimeout()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1149
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsProposeTimeSupported:Z

    if-eqz v0, :cond_8

    .line 1150
    invoke-direct {p0, v2}, Lcom/android/calendar/event/EventInfoFragment;->canFollowUpOnResponse(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1151
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/android/calendar/event/EventInfoFragment;->setResponseFollowUpVisible(Landroid/view/ViewGroup;IZZ)V

    goto :goto_0

    .line 1145
    :cond_6
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getSaveResponseRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 1155
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->updateResponseButtons(Landroid/view/ViewGroup;)V

    .line 1156
    invoke-direct {p0, v2}, Lcom/android/calendar/event/EventInfoFragment;->updateResponseListeners(I)V

    goto :goto_0

    .line 1159
    :cond_8
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->doDismissScreen()V

    goto :goto_0
.end method

.method private onViewUpdated()V
    .locals 3

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 870
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mOverlayBackground:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    sget-object v2, Lcom/android/calendar/OverlayFragment$OverlayBackground;->Unknown:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    if-ne v1, v2, :cond_2

    .line 873
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getLoadingBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->setToCard(Lcom/android/calendar/OverlayFragment;)Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 874
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 876
    if-eqz v0, :cond_1

    .line 877
    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EventInfoFragment$3;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 890
    :cond_1
    :goto_0
    return-void

    .line 886
    :cond_2
    if-eqz v0, :cond_1

    .line 887
    new-instance v1, Lcom/android/calendar/OverlayFragment$PreDrawListener;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/OverlayFragment$PreDrawListener;-><init>(Lcom/android/calendar/OverlayFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public static readTimelineItemFromIntent(Landroid/content/Intent;)Lcom/android/calendar/timely/TimelineItem;
    .locals 14

    .prologue
    .line 1951
    if-nez p0, :cond_1

    .line 1952
    const/4 v1, 0x0

    .line 2007
    :cond_0
    :goto_0
    return-object v1

    .line 1956
    :cond_1
    invoke-static {p0}, Lcom/android/calendar/Utils;->getLaunchTimelineItem(Landroid/content/Intent;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    .line 1957
    if-nez v1, :cond_0

    .line 1964
    const-string v0, "beginTime"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1965
    const-string v0, "endTime"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1966
    const-string v0, "attendeeStatus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1970
    const-wide/16 v2, -0x1

    .line 1971
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1972
    if-eqz v0, :cond_6

    .line 1974
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 1975
    if-eqz v1, :cond_3

    .line 1976
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    .line 1977
    const/4 v10, 0x2

    if-le v9, v10, :cond_2

    const-string v10, "EventTime"

    const/4 v11, 0x2

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1981
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1982
    const/4 v0, 0x4

    if-le v9, v0, :cond_7

    .line 1983
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1984
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v4, v6

    move-wide v12, v0

    move-wide v0, v2

    move-wide v2, v12

    :goto_1
    move-wide v6, v2

    move-wide v2, v0

    .line 2002
    :goto_2
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_5

    .line 2004
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    const-string v1, "No item id"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2005
    const/4 v1, 0x0

    goto :goto_0

    .line 1987
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v4

    move-wide v4, v6

    goto :goto_1

    .line 1990
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    move-wide v2, v4

    move-wide v4, v6

    goto :goto_1

    .line 1992
    :catch_0
    move-exception v0

    .line 1993
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_6

    .line 1996
    :cond_4
    const-wide/16 v6, 0x0

    .line 1997
    const-wide/16 v4, 0x0

    move-wide v12, v4

    move-wide v4, v6

    move-wide v6, v12

    goto :goto_2

    .line 2007
    :cond_5
    new-instance v1, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;

    invoke-direct/range {v1 .. v8}, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;-><init>(JJJI)V

    goto/16 :goto_0

    :cond_6
    move-wide v12, v4

    move-wide v4, v6

    move-wide v6, v12

    goto :goto_2

    :cond_7
    move-wide v0, v2

    move-wide v2, v4

    move-wide v4, v6

    goto :goto_1
.end method

.method private saveResponse()Z
    .locals 2

    .prologue
    .line 2077
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mCheckedResponseId:I

    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->getResponseFromButtonId(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->saveResponse(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private setResponseFollowUpVisible(Landroid/view/ViewGroup;IZZ)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1230
    if-nez p1, :cond_0

    .line 1315
    :goto_0
    return-void

    .line 1234
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->response_hint:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1235
    if-eqz v0, :cond_1

    .line 1236
    if-eqz p3, :cond_1

    .line 1238
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move-object v3, v4

    .line 1249
    :goto_1
    if-eqz v3, :cond_1

    .line 1250
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/calendar/event/EventInfoFragment;->getResponseFollowUpButton(I)Landroid/view/View;

    move-result-object v3

    .line 1256
    if-eqz p4, :cond_5

    .line 1257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1258
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1259
    if-eqz p3, :cond_3

    .line 1260
    new-array v4, v1, [I

    sget v6, Lcom/android/calendar/R$id;->response_prompt:I

    aput v6, v4, v2

    .line 1261
    invoke-static {p1, v2, v4}, Lcom/android/calendar/Utils;->setFadeAnimations(Landroid/view/ViewGroup;Z[I)Ljava/util/List;

    move-result-object v4

    .line 1260
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1262
    sget-object v4, Lcom/android/calendar/event/EventInfoFragment;->mResponseIds:[I

    invoke-static {p1, v2, v4}, Lcom/android/calendar/Utils;->setFadeAnimations(Landroid/view/ViewGroup;Z[I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1263
    new-array v4, v1, [I

    sget v6, Lcom/android/calendar/R$id;->response_hint:I

    aput v6, v4, v2

    .line 1264
    invoke-static {p1, v1, v4}, Lcom/android/calendar/Utils;->setFadeAnimations(Landroid/view/ViewGroup;Z[I)Ljava/util/List;

    move-result-object v4

    .line 1263
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1265
    if-eqz v3, :cond_2

    .line 1266
    new-array v4, v1, [Landroid/view/View;

    aput-object v3, v4, v2

    .line 1267
    invoke-static {v1, v4}, Lcom/android/calendar/Utils;->setFadeAnimations(Z[Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 1266
    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1269
    :cond_2
    iput-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mDisplayedFollowUpButton:Landroid/view/View;

    .line 1284
    :goto_2
    new-instance v1, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>(I)V

    .line 1286
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1287
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1288
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1290
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1291
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1292
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1294
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1295
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1296
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1314
    :goto_3
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsResponseFollowUpShown:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1240
    :pswitch_1
    sget v3, Lcom/android/calendar/R$string;->response_yes:I

    invoke-virtual {p0, v3}, Lcom/android/calendar/event/EventInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_1

    .line 1243
    :pswitch_2
    sget v3, Lcom/android/calendar/R$string;->response_maybe:I

    invoke-virtual {p0, v3}, Lcom/android/calendar/event/EventInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_1

    .line 1246
    :pswitch_3
    sget v3, Lcom/android/calendar/R$string;->response_no:I

    invoke-virtual {p0, v3}, Lcom/android/calendar/event/EventInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_1

    .line 1272
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mDisplayedFollowUpButton:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 1273
    new-array v3, v1, [Landroid/view/View;

    iget-object v6, p0, Lcom/android/calendar/event/EventInfoFragment;->mDisplayedFollowUpButton:Landroid/view/View;

    aput-object v6, v3, v2

    .line 1274
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->setFadeAnimations(Z[Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 1273
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1275
    iput-object v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mDisplayedFollowUpButton:Landroid/view/View;

    .line 1277
    :cond_4
    new-array v3, v1, [I

    sget v4, Lcom/android/calendar/R$id;->response_hint:I

    aput v4, v3, v2

    .line 1278
    invoke-static {p1, v2, v3}, Lcom/android/calendar/Utils;->setFadeAnimations(Landroid/view/ViewGroup;Z[I)Ljava/util/List;

    move-result-object v3

    .line 1277
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1279
    new-array v3, v1, [I

    sget v4, Lcom/android/calendar/R$id;->response_prompt:I

    aput v4, v3, v2

    .line 1280
    invoke-static {p1, v1, v3}, Lcom/android/calendar/Utils;->setFadeAnimations(Landroid/view/ViewGroup;Z[I)Ljava/util/List;

    move-result-object v2

    .line 1279
    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1281
    sget-object v2, Lcom/android/calendar/event/EventInfoFragment;->mResponseIds:[I

    invoke-static {p1, v1, v2}, Lcom/android/calendar/Utils;->setFadeAnimations(Landroid/view/ViewGroup;Z[I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1298
    :cond_5
    if-nez p3, :cond_8

    move v0, v1

    :goto_4
    new-array v5, v1, [I

    sget v6, Lcom/android/calendar/R$id;->response_prompt:I

    aput v6, v5, v2

    invoke-static {v0, p1, v5}, Lcom/android/calendar/Utils;->setVisibilities(ZLandroid/view/ViewGroup;[I)V

    .line 1299
    if-nez p3, :cond_9

    move v0, v1

    :goto_5
    sget-object v5, Lcom/android/calendar/event/EventInfoFragment;->mResponseIds:[I

    invoke-static {v0, p1, v5}, Lcom/android/calendar/Utils;->setVisibilities(ZLandroid/view/ViewGroup;[I)V

    .line 1300
    new-array v0, v1, [I

    sget v5, Lcom/android/calendar/R$id;->response_hint:I

    aput v5, v0, v2

    invoke-static {p3, p1, v0}, Lcom/android/calendar/Utils;->setVisibilities(ZLandroid/view/ViewGroup;[I)V

    .line 1301
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mDisplayedFollowUpButton:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1302
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mDisplayedFollowUpButton:Landroid/view/View;

    if-nez p3, :cond_a

    :goto_6
    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 1304
    :cond_6
    if-eqz v3, :cond_7

    .line 1305
    invoke-static {v3, p3}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 1308
    :cond_7
    if-eqz p3, :cond_b

    .line 1309
    iput-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mDisplayedFollowUpButton:Landroid/view/View;

    goto/16 :goto_3

    :cond_8
    move v0, v2

    .line 1298
    goto :goto_4

    :cond_9
    move v0, v2

    .line 1299
    goto :goto_5

    :cond_a
    move v1, v2

    .line 1302
    goto :goto_6

    .line 1311
    :cond_b
    iput-object v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mDisplayedFollowUpButton:Landroid/view/View;

    goto/16 :goto_3

    .line 1238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showEventView(Ljava/lang/Runnable;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x96

    const/4 v7, 0x2

    .line 999
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    :goto_0
    return-void

    .line 1003
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1004
    if-nez p1, :cond_1

    new-instance p1, Lcom/android/calendar/event/EventInfoFragment$5;

    invoke-direct {p1, p0}, Lcom/android/calendar/event/EventInfoFragment$5;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    const-string v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    .line 1016
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x4b

    .line 1017
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1015
    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->withHardwareLayer(Landroid/view/View;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1018
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1021
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    sget v3, Lcom/android/calendar/R$id;->info_action_edit:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1022
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 1023
    const-string v3, "scaleX"

    new-array v4, v7, [F

    fill-array-data v4, :array_1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1024
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1023
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1025
    const-string v3, "scaleY"

    new-array v4, v7, [F

    fill-array-data v4, :array_2

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1026
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1025
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1030
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    sget v3, Lcom/android/calendar/event/EventInfoFragment;->COMMAND_BAR_ID:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1032
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1033
    new-instance v0, Lcom/android/calendar/event/CommandBarAnimatorListener;

    .line 1034
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    sget v5, Lcom/android/calendar/event/EventInfoFragment;->COMMAND_BAR_ID:I

    .line 1035
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    sget v6, Lcom/android/calendar/R$id;->event_info:I

    .line 1036
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/android/calendar/event/CommandBarAnimatorListener;-><init>(Landroid/content/res/Resources;Landroid/view/View;Landroid/view/View;)V

    .line 1037
    new-array v3, v7, [I

    aput v10, v3, v10

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseHeight:I

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 1038
    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 1039
    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1040
    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1041
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1046
    :goto_1
    new-instance v2, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v2}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1047
    new-instance v2, Lcom/android/calendar/event/EventInfoFragment$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/calendar/event/EventInfoFragment$6;-><init>(Lcom/android/calendar/event/EventInfoFragment;Lcom/android/calendar/event/CommandBarAnimatorListener;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1063
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1043
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1015
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1023
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1025
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private timezoneUpdate()V
    .locals 2

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2607
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2608
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mTimezoneUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    .line 2610
    :cond_0
    return-void
.end method

.method private updateButtons(Landroid/view/View;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p2}, Lcom/android/calendar/event/CalendarEventModel;->getEventColor()I

    move-result v0

    .line 2664
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/event/EventInfoFragment;->updateEditButton(Landroid/view/View;I)V

    .line 2665
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->updateCloseButton(Landroid/view/View;)V

    .line 2666
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/EventInfoFragment;->updateOverflow(Landroid/view/View;Lcom/android/calendar/event/CalendarEventModel;)V

    .line 2667
    return-void
.end method

.method private updateResponse(Landroid/content/Context;JJI)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2143
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2145
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2146
    const-string v1, "attendeeEmail"

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    :cond_0
    const-string v1, "attendeeStatus"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2149
    const-string v1, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2150
    sget-object v1, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2152
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2153
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2154
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2156
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getAsyncQueryService()Lcom/android/calendar/AsyncQueryService;

    move-result-object v0

    .line 2157
    if-eqz v0, :cond_2

    .line 2158
    iget-boolean v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsProposeTimeSupported:Z

    if-eqz v1, :cond_1

    .line 2160
    invoke-direct {p0, p2, p3}, Lcom/android/calendar/event/EventInfoFragment;->getCounterProposalOperations(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 2161
    if-eqz v1, :cond_1

    .line 2162
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2165
    :cond_1
    invoke-static {}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const-string v3, "com.android.calendar"

    const-wide/16 v6, 0x0

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;J)V

    .line 2173
    :cond_2
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getActivationLogger(Landroid/content/Context;)Lcom/android/calendar/ActivationLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/calendar/ActivationLogger;->userRespondedToInvite(Ljava/lang/String;)V

    .line 2175
    return-void
.end method

.method private updateResponseButtons(Landroid/view/ViewGroup;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2377
    if-nez p1, :cond_1

    .line 2439
    :cond_0
    return-void

    .line 2380
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->response_prompt:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2381
    iget v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mCheckedResponseId:I

    invoke-direct {p0, v1}, Lcom/android/calendar/event/EventInfoFragment;->getLabelForResponsePrompt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2383
    sget-object v6, Lcom/android/calendar/event/EventInfoFragment;->mResponseIds:[I

    array-length v7, v6

    move v5, v3

    :goto_0
    if-ge v5, v7, :cond_0

    aget v8, v6, v5

    .line 2384
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2385
    iget v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mCheckedResponseId:I

    if-eq v8, v1, :cond_2

    move v1, v2

    .line 2387
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 2390
    if-eqz v1, :cond_3

    iget v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseColor:I

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2393
    sget v4, Lcom/android/calendar/R$id;->response_yes:I

    if-ne v8, v4, :cond_4

    .line 2394
    const-string v4, "tap_rsvp_yes"

    .line 2404
    :goto_3
    if-eqz v1, :cond_7

    .line 2405
    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$19;

    invoke-direct {v1, p0, v4}, Lcom/android/calendar/event/EventInfoFragment$19;-><init>(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2417
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2383
    :goto_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 2385
    goto :goto_1

    .line 2390
    :cond_3
    iget v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mCheckedResponseColor:I

    goto :goto_2

    .line 2395
    :cond_4
    sget v4, Lcom/android/calendar/R$id;->response_no:I

    if-ne v8, v4, :cond_5

    .line 2396
    const-string v4, "tap_rsvp_no"

    goto :goto_3

    .line 2397
    :cond_5
    sget v4, Lcom/android/calendar/R$id;->response_maybe:I

    if-ne v8, v4, :cond_6

    .line 2398
    const-string v4, "tap_rsvp_maybe"

    goto :goto_3

    .line 2400
    :cond_6
    const-string v4, "tap_rsvp"

    goto :goto_3

    .line 2419
    :cond_7
    iget v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mCheckedResponseId:I

    sget v8, Lcom/android/calendar/R$id;->response_yes:I

    if-eq v1, v8, :cond_8

    iget-boolean v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsProposeTimeSupported:Z

    if-nez v1, :cond_9

    .line 2421
    :cond_8
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2436
    :goto_5
    iget v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mCheckedResponseId:I

    invoke-direct {p0, v1}, Lcom/android/calendar/event/EventInfoFragment;->getLabelForResponseView(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2423
    :cond_9
    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$20;

    invoke-direct {v1, p0, v4}, Lcom/android/calendar/event/EventInfoFragment$20;-><init>(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method

.method private updateResponseId(I)V
    .locals 1

    .prologue
    .line 2501
    invoke-static {p1}, Lcom/android/calendar/event/EventInfoFragment;->findButtonIdForResponse(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mCheckedResponseId:I

    .line 2502
    return-void
.end method

.method private updateResponseListeners(I)V
    .locals 4

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getCurrentResponse()I

    move-result v1

    .line 1499
    if-eq v1, p1, :cond_2

    .line 1500
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

    instance-of v0, v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$OnResponseListener;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$OnResponseListener;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 1502
    invoke-interface {v0, v2, v1, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout$OnResponseListener;->onUpdateAccountResponse(Ljava/lang/String;II)V

    .line 1506
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout;

    .line 1508
    instance-of v3, v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$OnResponseListener;

    if-eqz v3, :cond_1

    .line 1509
    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$OnResponseListener;

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 1510
    invoke-interface {v0, v3, v1, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout$OnResponseListener;->onUpdateAccountResponse(Ljava/lang/String;II)V

    goto :goto_0

    .line 1515
    :cond_2
    return-void
.end method


# virtual methods
.method protected bodyLayoutReport(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2940
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2941
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2942
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 2943
    :cond_0
    const-string v0, "Unable to make bodyLayoutReport"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3149
    :goto_0
    return-void

    .line 2947
    :cond_1
    new-instance v2, Lcom/android/calendar/event/EventInfoFragment$27;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/android/calendar/event/EventInfoFragment$27;-><init>(Lcom/android/calendar/event/EventInfoFragment;Landroid/content/res/Resources;Landroid/view/ViewGroup;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public clickEditButton()Z
    .locals 1

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected displayEventNotFound()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2588
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mErrorMsgView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2589
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2590
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2591
    return-void
.end method

.method public doDismissScreen()V
    .locals 1

    .prologue
    .line 2517
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->doDismissScreen(Z)V

    .line 2518
    return-void
.end method

.method public doDismissScreen(Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2528
    iput-boolean v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mDismissInProgress:Z

    .line 2529
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2530
    instance-of v3, v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    if-eqz v3, :cond_6

    .line 2531
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    .line 2532
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    .line 2533
    invoke-virtual {v3}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->canAnimate()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->hasTimeChanges()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    .line 2534
    :goto_0
    if-eqz v3, :cond_1

    .line 2536
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/event/EventInfoFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2538
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2539
    iget-object v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mOverlayBackground:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    invoke-virtual {v4, p0, v1}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->startRectAnimation(Lcom/android/calendar/OverlayFragment;Landroid/graphics/Rect;)V

    .line 2541
    iget-object v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2542
    iget-object v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 2546
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/event/EventInfoFragment;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-virtual {v5}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2547
    iget-object v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getAnimationHeadline()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->reset(Lcom/android/calendar/timely/TimelineItem;Landroid/view/View;)V

    .line 2550
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    .line 2551
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getHeadlineHeight()I

    move-result v5

    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getStatusbarAnimator()Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v6

    .line 2550
    invoke-virtual {v4, v1, v5, v2, v6}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->startCloseAnimation(Landroid/graphics/Rect;ILandroid/animation/Animator$AnimatorListener;Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;)V

    .line 2552
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->hideEventView()V

    .line 2554
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getOpenedFromExternalSource()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2555
    invoke-interface {v0, p0, v3}, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;->onInfoBack(Landroid/app/DialogFragment;Z)V

    .line 2562
    :cond_2
    :goto_2
    return-void

    .line 2533
    :cond_3
    const/4 v1, 0x0

    move v3, v1

    goto :goto_0

    .line 2544
    :cond_4
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;

    const v4, 0x106000d

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    move-object v1, v2

    goto :goto_1

    .line 2557
    :cond_5
    invoke-interface {v0, p0, v3}, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;->onInfoCancel(Landroid/app/DialogFragment;Z)V

    goto :goto_2

    .line 2559
    :cond_6
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2560
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->dismiss()V

    goto :goto_2
.end method

.method protected getAnimationHeadline()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1940
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1941
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1943
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1944
    return-object v0
.end method

.method protected getAsyncQueryService()Lcom/android/calendar/AsyncQueryService;
    .locals 3

    .prologue
    .line 2133
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/AbstractCalendarActivity;

    if-eqz v0, :cond_0

    .line 2134
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AbstractCalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AbstractCalendarActivity;->getAsyncQueryService()Lcom/android/calendar/AsyncQueryService;

    move-result-object v0

    .line 2137
    :goto_0
    return-object v0

    .line 2136
    :cond_0
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    const-string v1, "Could not get AsyncQueryService"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCalendarsProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3390
    sget-object v0, Lcom/android/calendar/event/LoadDetailsConstants;->CALENDARS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 2873
    sget v0, Lcom/android/calendar/R$id;->event_info:I

    return v0
.end method

.method public getCurrentResponse()I
    .locals 1

    .prologue
    .line 2362
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    if-eqz v0, :cond_0

    .line 2363
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    .line 2367
    :goto_0
    return v0

    .line 2365
    :cond_0
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mOriginalAttendeeResponse:I

    goto :goto_0
.end method

.method public getHeadlineHeight()I
    .locals 2

    .prologue
    .line 3332
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->info_headline_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getInitialItem()Lcom/android/calendar/timely/TimelineItem;
    .locals 2

    .prologue
    .line 3540
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "initial_timeline_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    return-object v0
.end method

.method protected getItem()Lcom/android/calendar/timely/TimelineItem;
    .locals 2

    .prologue
    .line 3536
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "timeline_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    return-object v0
.end method

.method public getLoadingBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 1

    .prologue
    .line 2878
    sget-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->Floating:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    return-object v0
.end method

.method protected getNewScreen()Lcom/android/calendar/event/EventInfoFragment$Screen;
    .locals 1

    .prologue
    .line 764
    new-instance v0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    return-object v0
.end method

.method protected getOpenedFromExternalSource()Z
    .locals 2

    .prologue
    .line 3578
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "external_event_view"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3579
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "external_event_view"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3578
    :goto_0
    return v0

    .line 3579
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOverlayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2910
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getPorterDuffColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 3

    .prologue
    .line 2779
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, 0x3f933333    # 1.15f

    .line 2780
    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->adjustColorLightness(IF)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2779
    return-object v0
.end method

.method protected getPrimesLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 692
    const-string v0, "ViewEventDetails"

    return-object v0
.end method

.method protected getSegments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/segment/InfoSegmentLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3340
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 3341
    if-eqz v0, :cond_0

    .line 3342
    sget v1, Lcom/android/calendar/R$id;->event_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentGroup;

    invoke-virtual {v0}, Lcom/android/calendar/event/segment/InfoSegmentGroup;->getSegments()Ljava/util/List;

    move-result-object v0

    .line 3344
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0
.end method

.method public getShortBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 1

    .prologue
    .line 2883
    sget-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->Floating:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    return-object v0
.end method

.method public getSupportedCommands()J
    .locals 2

    .prologue
    .line 3157
    const-wide/16 v0, 0x80

    return-wide v0
.end method

.method public getTallBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 1

    .prologue
    .line 2888
    sget-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->BottomDocked:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1923
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    .line 1924
    if-nez v1, :cond_1

    .line 1925
    const/4 v0, 0x0

    .line 1933
    :cond_0
    :goto_0
    return-object v0

    .line 1927
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/android/calendar/event/EventInfoFragment;->getAccessibilityPrefixId(Lcom/android/calendar/timely/TimelineItem;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1929
    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 1930
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTroubleshootInfoBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1073
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1074
    :cond_0
    const/4 v0, 0x0

    .line 1076
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/android/calendar/event/EventTroubleshootInfoProvider;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v1, v0, v2}, Lcom/android/calendar/event/EventTroubleshootInfoProvider;-><init>(Landroid/app/Activity;Lcom/android/calendar/event/CalendarEventModel;)V

    .line 1077
    invoke-virtual {v1}, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->getTroubleshootInfoBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected getWindowHeight([I)Z
    .locals 2

    .prologue
    .line 2901
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getLoadingBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->getHeight()I

    move-result v1

    aput v1, p1, v0

    .line 2902
    const/4 v0, 0x1

    return v0
.end method

.method public handleCommand(Lcom/android/calendar/CalendarController$Command;)V
    .locals 1

    .prologue
    .line 3166
    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mDismissInProgress:Z

    if-nez v0, :cond_0

    .line 3167
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->onEventsChanged()V

    .line 3169
    :cond_0
    return-void
.end method

.method protected initSecondaryLoaders()V
    .locals 8

    .prologue
    const/high16 v3, 0x10000

    const/16 v7, 0x10

    const/16 v6, 0x8

    const/16 v5, 0x1000

    const/16 v4, 0x100

    .line 3683
    invoke-virtual {p0, v3}, Lcom/android/calendar/event/EventInfoFragment;->requestedQuery(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3684
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    .line 3685
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 3686
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mExtrasBitmask:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/TimelineGroove;->setEventExtrasFlags(Ljava/lang/String;)V

    .line 3687
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0}, Lcom/android/calendar/groove/TimelineGroove;->getOwnerAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 3688
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 3689
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->load(I)V

    .line 3690
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getGrooveCallback()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 3693
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/calendar/event/EventInfoFragment;->requestedQuery(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3694
    const-string v0, "calendarId"

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    invoke-virtual {p0, v7, v0, v2, v3}, Lcom/android/calendar/event/EventInfoFragment;->load(ILjava/lang/String;J)V

    .line 3698
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/calendar/event/EventInfoFragment;->requestedQuery(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3699
    const-string v0, "modelId"

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-virtual {p0, v6, v0, v2, v3}, Lcom/android/calendar/event/EventInfoFragment;->load(ILjava/lang/String;J)V

    .line 3703
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/calendar/event/EventInfoFragment;->requestedQuery(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3704
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsBusyFreeCalendar:Z

    if-nez v0, :cond_5

    .line 3705
    const-string v0, "modelId"

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-virtual {p0, v4, v0, v2, v3}, Lcom/android/calendar/event/EventInfoFragment;->load(ILjava/lang/String;J)V

    .line 3711
    :cond_3
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/calendar/event/EventInfoFragment;->requestedQuery(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3713
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mHasAlarm:Z

    if-eqz v0, :cond_6

    .line 3714
    const-string v0, "modelId"

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-virtual {p0, v5, v0, v2, v3}, Lcom/android/calendar/event/EventInfoFragment;->load(ILjava/lang/String;J)V

    .line 3722
    :cond_4
    :goto_1
    return-void

    .line 3707
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/calendar/event/EventInfoFragment;->onQueryComplete(I)V

    goto :goto_0

    .line 3719
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/calendar/event/EventInfoFragment;->onQueryComplete(I)V

    goto :goto_1
.end method

.method protected isGroove()Z
    .locals 1

    .prologue
    .line 4642
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/groove/TimelineGroove;

    return v0
.end method

.method protected load(I)V
    .locals 1

    .prologue
    .line 3353
    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/event/EventInfoFragment;->load(ILandroid/os/Bundle;)V

    .line 3354
    return-void
.end method

.method protected load(ILandroid/net/Uri;)V
    .locals 2

    .prologue
    .line 3357
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 3358
    const-string v1, "modelUri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3359
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/event/EventInfoFragment;->load(ILandroid/os/Bundle;)V

    .line 3360
    return-void
.end method

.method protected load(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 3376
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1, p2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 3377
    return-void
.end method

.method protected load(ILjava/lang/String;J)V
    .locals 3

    .prologue
    .line 3363
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 3364
    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3365
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/event/EventInfoFragment;->load(ILandroid/os/Bundle;)V

    .line 3366
    return-void
.end method

.method public loadNewEventException(JI)V
    .locals 11

    .prologue
    .line 3225
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 3227
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->doDismissScreen()V

    .line 3246
    :goto_0
    return-void

    .line 3231
    :cond_0
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->INITIAL_EVENT_TIME_PERIOD:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    .line 3233
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v9, "timeline_item"

    new-instance v1, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;

    .line 3236
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v4

    .line 3237
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v6

    move-wide v2, p1

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;-><init>(JJJI)V

    .line 3233
    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3239
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$30;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EventInfoFragment$30;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public monitorCalendarCache()V
    .locals 2

    .prologue
    .line 3181
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3182
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 3206
    :cond_0
    :goto_0
    return-void

    .line 3185
    :cond_1
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    .line 3187
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->hasLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3189
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$28;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EventInfoFragment$28;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3196
    :cond_2
    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$29;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/event/EventInfoFragment$29;-><init>(Lcom/android/calendar/event/EventInfoFragment;Lcom/android/calendar/timely/data/CalendarsCache;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/data/CalendarsCache;->addDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1452
    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_0

    .line 1453
    packed-switch p2, :pswitch_data_0

    .line 1472
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v3, v3, v4}, Lcom/android/calendar/event/EventInfoFragment;->setResponseFollowUpVisible(Landroid/view/ViewGroup;IZZ)V

    .line 1476
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->updateResponseButtons(Landroid/view/ViewGroup;)V

    .line 1477
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getSaveResponseRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1492
    :goto_1
    return-void

    .line 1455
    :pswitch_1
    const-string v0, "start_millis"

    invoke-virtual {p3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mProposedStartTime:J

    .line 1457
    const-string v0, "end_millis"

    invoke-virtual {p3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mProposedEndTime:J

    .line 1459
    const-string v0, "note"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mMeetingResponseComment:Ljava/lang/String;

    goto :goto_0

    .line 1463
    :pswitch_2
    const-string v0, "invalid_email_count"

    .line 1464
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1465
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$plurals;->find_a_time_all_calendars_not_loaded:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1467
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1478
    :cond_0
    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_2

    .line 1479
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1480
    const-string v0, "note"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mMeetingResponseComment:Ljava/lang/String;

    .line 1482
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v3, v3, v4}, Lcom/android/calendar/event/EventInfoFragment;->setResponseFollowUpVisible(Landroid/view/ViewGroup;IZZ)V

    .line 1486
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->updateResponseButtons(Landroid/view/ViewGroup;)V

    .line 1487
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getSaveResponseRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1488
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->logSendCommentToAnalytics()V

    goto :goto_1

    .line 1490
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/event/DetailsDialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 1453
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onAllDataLoaded()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3815
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->onEventUpdated()V

    .line 3816
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->onAttendeesUpdated()V

    .line 3819
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    .line 3820
    instance-of v3, v0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;

    if-eqz v3, :cond_3

    .line 3823
    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mOriginalAttendeeResponse:I

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->onModelComplete(Lcom/android/calendar/event/CalendarEventModel;I)V

    .line 3846
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->timezoneUpdate()V

    .line 3848
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 3849
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->setView()V

    .line 3851
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/LoadingStateManager;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3852
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/LoadingStateManager;->onDataLoaded()V

    .line 3855
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mViewLogged:Z

    if-nez v0, :cond_1

    .line 3856
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->logViewToAnalytics()V

    .line 3857
    iput-boolean v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mViewLogged:Z

    .line 3860
    :cond_1
    const-string v0, "com.google.android.gm.exchange"

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3861
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->checkRsvpCommentSupport()V

    .line 3863
    :cond_2
    return-void

    .line 3825
    :cond_3
    instance-of v3, v0, Lcom/android/calendar/timely/TimelineEvent;

    if-eqz v3, :cond_8

    instance-of v3, v0, Lcom/android/calendar/timely/TimelineHoliday;

    if-nez v3, :cond_8

    .line 3827
    new-instance v3, Lcom/android/calendar/timely/TimelineEvent;

    check-cast v0, Lcom/android/calendar/timely/TimelineEvent;

    invoke-direct {v3, v0}, Lcom/android/calendar/timely/TimelineEvent;-><init>(Lcom/android/calendar/timely/TimelineEvent;)V

    .line 3831
    iget-object v0, v3, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v3, Lcom/android/calendar/timely/TimelineEvent;->location:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 3832
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    move v0, v1

    .line 3833
    :goto_1
    if-eqz v0, :cond_5

    .line 3834
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    iget-object v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 3835
    invoke-interface {v0, v4}, Lcom/android/calendar/event/EventExtras;->hasImageData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lcom/android/calendar/timely/TimelineEvent;->hasImage:Z

    .line 3836
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    .line 3837
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/calendar/timely/TimelineEvent;->location:Ljava/lang/String;

    .line 3840
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel;->getEventColor()I

    move-result v0

    iput v0, v3, Lcom/android/calendar/timely/TimelineEvent;->color:I

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 3832
    goto :goto_1

    :cond_7
    move v0, v2

    .line 3835
    goto :goto_2

    .line 3843
    :cond_8
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/CalendarEventModel;->setEventColor(I)V

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 1533
    invoke-super {p0, p1}, Lcom/android/calendar/event/DetailsDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 1534
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 1536
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->event_info_response:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseColor:I

    .line 1537
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->event_info_checked_response:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mCheckedResponseColor:I

    .line 1538
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->info_action_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseHeight:I

    .line 1539
    invoke-static {p1}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/app/Activity;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mController:Lcom/android/calendar/CalendarController;

    .line 1540
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mController:Lcom/android/calendar/CalendarController;

    sget v1, Lcom/android/calendar/R$layout;->event_info_full:I

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/CalendarController;->registerHandler(ILcom/android/calendar/CalendarController$Command$Handler;)V

    .line 1541
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    .line 1542
    new-instance v0, Lcom/android/calendar/EditResponseHelper;

    invoke-direct {v0, p1}, Lcom/android/calendar/EditResponseHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    .line 1543
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$9;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/event/EventInfoFragment$9;-><init>(Lcom/android/calendar/event/EventInfoFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditResponseHelper;->setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1589
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/timely/ProposeTimeUtil;->isProposeTimeSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsProposeTimeSupported:Z

    .line 1591
    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsProposeTimeSupported:Z

    if-eqz v0, :cond_0

    .line 1592
    instance-of v0, p1, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    if-eqz v0, :cond_0

    .line 1593
    check-cast p1, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    .line 1594
    invoke-interface {p1, p0}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;->registerActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V

    .line 1597
    :cond_0
    return-void
.end method

.method protected onAttendeesLoaded(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 3775
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, p1}, Lcom/android/calendar/event/EditHelper;->setModelFromAttendeeCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)V

    .line 3777
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3778
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mOriginalAttendeeResponse:I

    .line 3782
    :goto_0
    return-void

    .line 3780
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mOriginalAttendeeResponse:I

    goto :goto_0
.end method

.method protected onAttendeesUpdated()V
    .locals 3

    .prologue
    .line 3790
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3791
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    new-instance v1, Lcom/android/calendar/event/AttendeeCollection;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v1, v2}, Lcom/android/calendar/event/AttendeeCollection;-><init>(Lcom/android/calendar/event/CalendarEventModel;)V

    iput-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    .line 3793
    :cond_0
    return-void
.end method

.method protected onCalendarLoaded(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 3802
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/event/EventInfoFragment;->setModelFromCalendarCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)Z

    move-result v0

    .line 3803
    invoke-virtual {p0, v2}, Lcom/android/calendar/event/EventInfoFragment;->requestedQuery(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3804
    if-eqz v0, :cond_1

    .line 3806
    invoke-virtual {p0, v2}, Lcom/android/calendar/event/EventInfoFragment;->load(I)V

    .line 3811
    :cond_0
    :goto_0
    return-void

    .line 3808
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/calendar/event/EventInfoFragment;->onQueryComplete(I)V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 736
    instance-of v1, v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    if-eqz v1, :cond_0

    .line 737
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    .line 738
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getAnimationData()Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, p0, v1}, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;->onInfoCancel(Landroid/app/DialogFragment;Z)V

    .line 740
    :cond_0
    return-void

    .line 738
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 1904
    new-instance v0, Lcom/android/calendar/event/EventInfoFragment$17;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/EventInfoFragment$17;-><init>(Lcom/android/calendar/event/EventInfoFragment;Landroid/content/Context;)V

    .line 1914
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1915
    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3395
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3396
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v4

    .line 3435
    :goto_0
    return-object v0

    .line 3399
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move-object v0, v4

    .line 3435
    goto :goto_0

    .line 3401
    :sswitch_0
    const-string v0, "modelUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 3405
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;

    if-eqz v0, :cond_2

    .line 3406
    sget-object v3, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_PROJECTION_FOR_EXTERNAL_INTENT:[Ljava/lang/String;

    .line 3407
    :goto_1
    new-instance v0, Landroid/content/CursorLoader;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3406
    :cond_2
    sget-object v3, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_PROJECTION:[Ljava/lang/String;

    goto :goto_1

    .line 3409
    :sswitch_1
    const-string v0, "calendarId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3410
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v0

    .line 3411
    new-instance v5, Landroid/content/CursorLoader;

    sget-object v7, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 3412
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getCalendarsProjection()[Ljava/lang/String;

    move-result-object v8

    const-string v9, "_id=?"

    move-object v6, v1

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 3411
    goto :goto_0

    .line 3414
    :sswitch_2
    new-instance v5, Landroid/content/CursorLoader;

    sget-object v7, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 3415
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getCalendarsProjection()[Ljava/lang/String;

    move-result-object v8

    const-string v9, "visible=1"

    move-object v6, v1

    move-object v10, v4

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 3414
    goto :goto_0

    .line 3418
    :sswitch_3
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/event/LoadDetailsConstants;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    .line 3421
    invoke-static {p2}, Lcom/android/calendar/event/EventInfoFragment;->getModelIdSelectionArgs(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "attendeeName ASC, attendeeEmail ASC"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3423
    :sswitch_4
    new-instance v5, Landroid/content/CursorLoader;

    sget-object v7, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/calendar/event/LoadDetailsConstants;->EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

    const-string v9, "event_id=?"

    .line 3427
    invoke-static {p2}, Lcom/android/calendar/event/EventInfoFragment;->getModelIdSelectionArgs(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v10

    move-object v6, v1

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 3423
    goto :goto_0

    .line 3429
    :sswitch_5
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/event/LoadDetailsConstants;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    .line 3432
    invoke-static {p2}, Lcom/android/calendar/event/EventInfoFragment;->getModelIdSelectionArgs(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "minutes ASC, method ASC"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3399
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_4
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
        0x100 -> :sswitch_3
        0x1000 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1602
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1603
    if-eqz p3, :cond_4

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsFragmentRestored:Z

    .line 1605
    if-eqz p3, :cond_3

    .line 1606
    const-string v0, "key_tentative_user_response"

    invoke-virtual {p3, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    .line 1609
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    if-eqz v0, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    const-string v1, "key_response_which_events"

    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditResponseHelper;->setWhichEvents(I)V

    .line 1616
    :cond_0
    const-string v0, "key_event_time_period"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1617
    const-string v0, "key_event_time_period"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    .line 1619
    :cond_1
    const-string v0, "key_response_follow_up_actions_shown"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1620
    const-string v0, "key_response_follow_up_actions_shown"

    .line 1621
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsResponseFollowUpShown:Ljava/lang/Boolean;

    .line 1623
    :cond_2
    const-string v0, "key_view_logged"

    invoke-virtual {p3, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mViewLogged:Z

    .line 1627
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1628
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->event_info_full:I

    invoke-virtual {v0, v1, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    .line 1633
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 1634
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unable to inflate main view."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1635
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    .line 1820
    :goto_2
    return-object v0

    :cond_4
    move v0, v7

    .line 1603
    goto :goto_0

    .line 1630
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->event_info_dialog:I

    .line 1631
    invoke-virtual {v0, v1, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    goto :goto_1

    .line 1638
    :cond_6
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1639
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 1644
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/calendar/R$id;->event_info_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    .line 1645
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/calendar/R$id;->event_info_loading_msg:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;

    .line 1646
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/calendar/R$id;->event_info_animation_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    .line 1648
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/calendar/R$id;->event_info_error_msg:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mErrorMsgView:Landroid/view/View;

    .line 1650
    new-instance v0, Lcom/android/calendar/timely/LoadingStateManager;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoadingMsgView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/LoadingStateManager;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    .line 1652
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$ShowDataView;

    invoke-direct {v1, p0, v8}, Lcom/android/calendar/event/EventInfoFragment$ShowDataView;-><init>(Lcom/android/calendar/event/EventInfoFragment;Lcom/android/calendar/event/EventInfoFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/LoadingStateManager;->setOnFadeInDataView(Lcom/android/calendar/timely/LoadingStateManager$OnFadeInDataView;)V

    .line 1653
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$HideLoadingView;

    invoke-direct {v1, v8}, Lcom/android/calendar/event/EventInfoFragment$HideLoadingView;-><init>(Lcom/android/calendar/event/EventInfoFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/LoadingStateManager;->setOnFadeOutLoadingView(Lcom/android/calendar/timely/LoadingStateManager$OnFadeOutLoadingView;)V

    .line 1655
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1656
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;

    .line 1664
    :goto_3
    new-instance v0, Lcom/android/calendar/utils/SystemWindowInsetApplier;

    invoke-direct {v0, v6}, Lcom/android/calendar/utils/SystemWindowInsetApplier;-><init>(Z)V

    .line 1666
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/event/EventInfoFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1672
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    sget v2, Lcom/android/calendar/R$id;->info_action_close:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v6}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->addView(Landroid/view/View;II)V

    .line 1674
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    sget v2, Lcom/android/calendar/R$id;->info_action_overflow:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v6}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->addView(Landroid/view/View;II)V

    .line 1677
    :cond_8
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 1679
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mErrorMsgView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1680
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-virtual {v0, v4}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setVisibility(I)V

    .line 1682
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getAnimationData()Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    move-result-object v1

    .line 1685
    if-eqz v1, :cond_e

    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsFragmentRestored:Z

    if-nez v0, :cond_e

    move v0, v6

    :goto_4
    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mShowAnimation:Z

    .line 1686
    if-eqz v1, :cond_11

    .line 1688
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v4, v8

    .line 1689
    :goto_5
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getAnimationHeadline()Landroid/view/View;

    move-result-object v3

    .line 1690
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/calendar/event/EventInfoFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v5

    .line 1689
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->init(Lcom/android/calendar/timely/animations/EventInfoAnimationData;Lcom/android/calendar/timely/TimelineItem;Landroid/view/View;Landroid/view/View;Z)V

    .line 1692
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getStatusbarAnimator()Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v0

    .line 1693
    if-eqz v0, :cond_9

    .line 1697
    invoke-virtual {v0, v6}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->setLightStatusbar(Z)V

    .line 1699
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$color;->mainview_status_bar_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1698
    invoke-virtual {v0, v2}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->setStatusbarColor(I)V

    .line 1703
    :cond_9
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mShowAnimation:Z

    if-eqz v0, :cond_10

    .line 1705
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getHeadlineHeight()I

    move-result v2

    new-instance v3, Lcom/android/calendar/event/EventInfoFragment$10;

    invoke-direct {v3, p0}, Lcom/android/calendar/event/EventInfoFragment$10;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    .line 1730
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getStatusbarAnimator()Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v4

    .line 1705
    invoke-virtual {v0, v8, v2, v3, v4}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->startOpenAnimation(Landroid/graphics/Rect;ILandroid/animation/Animator$AnimatorListener;Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;)V

    .line 1731
    iput-boolean v7, p0, Lcom/android/calendar/event/EventInfoFragment;->mShowAnimation:Z

    .line 1792
    :cond_a
    :goto_6
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsFragmentRestored:Z

    if-nez v0, :cond_b

    if-nez v1, :cond_c

    .line 1793
    :cond_b
    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mAllDataLoaded:Z

    if-nez v0, :cond_12

    .line 1794
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/LoadingStateManager;->startLoadingPhases()V

    .line 1795
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz v1, :cond_c

    .line 1796
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/LoadingStateManager;->cancelLoadingView()V

    .line 1804
    :cond_c
    :goto_7
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->shouldLoadEventDataOnCreateView()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1810
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1811
    sget-boolean v1, Lcom/android/calendar/event/EventInfoFragment;->$assertionsDisabled:Z

    if-nez v1, :cond_13

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1658
    :cond_d
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/calendar/R$id;->event_info_overlay_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;

    goto/16 :goto_3

    :cond_e
    move v0, v7

    .line 1685
    goto/16 :goto_4

    .line 1688
    :cond_f
    iget-object v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;

    goto/16 :goto_5

    .line 1732
    :cond_10
    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mShowAnimation:Z

    if-eqz v0, :cond_a

    .line 1738
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    new-instance v2, Lcom/android/calendar/event/EventInfoFragment$SetUpForAnimation;

    invoke-direct {v2, p0, v8}, Lcom/android/calendar/event/EventInfoFragment$SetUpForAnimation;-><init>(Lcom/android/calendar/event/EventInfoFragment;Lcom/android/calendar/event/EventInfoFragment$1;)V

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/LoadingStateManager;->setOnFadeInDataView(Lcom/android/calendar/timely/LoadingStateManager$OnFadeInDataView;)V

    .line 1739
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    new-instance v2, Lcom/android/calendar/event/EventInfoFragment$11;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/EventInfoFragment$11;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/LoadingStateManager;->setLoadingStateListener(Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;)V

    goto :goto_6

    .line 1764
    :cond_11
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1768
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    new-instance v2, Lcom/android/calendar/event/EventInfoFragment$12;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/EventInfoFragment$12;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    .line 1769
    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/LoadingStateManager;->setLoadingStateListener(Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;)V

    goto/16 :goto_6

    .line 1799
    :cond_12
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->onAllDataLoaded()V

    .line 1800
    invoke-direct {p0, v8}, Lcom/android/calendar/event/EventInfoFragment;->showEventView(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 1812
    :cond_13
    new-instance v1, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v1, v0}, Lcom/android/calendar/event/CalendarEventModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 1815
    iput-object v8, p0, Lcom/android/calendar/event/EventInfoFragment;->mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

    .line 1817
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->reloadEvents()V

    .line 1820
    :cond_14
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    goto/16 :goto_2
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 1519
    invoke-super {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->onDetach()V

    .line 1520
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mController:Lcom/android/calendar/CalendarController;

    sget v1, Lcom/android/calendar/R$layout;->event_info_full:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarController;->deregisterHandler(Ljava/lang/Integer;)V

    .line 1522
    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsProposeTimeSupported:Z

    if-eqz v0, :cond_0

    .line 1523
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1524
    instance-of v1, v0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    if-eqz v1, :cond_0

    .line 1525
    check-cast v0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    .line 1526
    invoke-interface {v0, p0}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;->unregisterActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V

    .line 1529
    :cond_0
    return-void
.end method

.method public onDialogBackPressed()V
    .locals 0

    .prologue
    .line 2926
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->doDismissScreen()V

    .line 2927
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 2566
    invoke-super {p0, p1}, Lcom/android/calendar/event/DetailsDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2567
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2568
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mDelayedActionDescription:Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;

    if-eqz v1, :cond_0

    .line 2570
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mDelayedActionDescription:Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;

    .line 2571
    invoke-interface {v0, v1}, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;->performDelayedAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)V

    .line 2573
    :cond_0
    return-void
.end method

.method protected onEventLoaded(Landroid/database/Cursor;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3597
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, p1}, Lcom/android/calendar/event/EditHelper;->setModelFromEventCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3598
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->displayEventNotFound()V

    .line 3599
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->event_not_found:I

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3600
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 3601
    if-eqz v0, :cond_0

    .line 3602
    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$31;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EventInfoFragment$31;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3671
    :cond_0
    :goto_0
    return-void

    .line 3612
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->isExternalGrooveInstance(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3616
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;

    .line 3617
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    sget v2, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_INDEX_SELF_ATTENDEE_STATUS:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->onModelComplete(Lcom/android/calendar/event/CalendarEventModel;I)V

    .line 3619
    sget v1, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_INDEX_HABIT_ID_AND_TYPE:I

    .line 3620
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3619
    invoke-static {v1}, Lcom/google/android/calendar/api/HabitIdTypeUtil;->parseHabitIdAndType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3621
    aget-object v1, v1, v8

    .line 3623
    new-instance v2, Lcom/android/calendar/groove/TimelineGroove;

    new-instance v3, Lcom/google/android/calendar/api/HabitDescriptor;

    new-instance v4, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    new-instance v5, Landroid/accounts/Account;

    sget v6, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_INDEX_ACCOUNT_NAME:I

    .line 3626
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.google"

    invoke-direct {v5, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xf

    .line 3628
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {v3, v4, v1}, Lcom/google/android/calendar/api/HabitDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/android/calendar/groove/TimelineGroove;-><init>(Lcom/android/calendar/timely/TimelineEvent;Lcom/google/android/calendar/api/HabitDescriptor;)V

    .line 3635
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "timeline_item"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3636
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iput-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    .line 3639
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel;->isModifiableGroove()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x10121

    .line 3640
    :goto_1
    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesRequested:I

    .line 3643
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->INITIAL_EVENT_TIME_PERIOD:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    if-ne v0, v1, :cond_5

    .line 3645
    new-instance v0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;-><init>(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/event/CalendarEventModel;)V

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    .line 3670
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->initSecondaryLoaders()V

    goto :goto_0

    .line 3640
    :cond_4
    const v0, 0x11121

    goto :goto_1

    .line 3647
    :cond_5
    new-instance v0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0, v1}, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;-><init>(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 3648
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3649
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    iget-boolean v1, v1, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mIsFirst:Z

    if-eqz v1, :cond_6

    .line 3650
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    goto :goto_2

    .line 3653
    :cond_6
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->displayEventNotFound()V

    .line 3654
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->event_not_found:I

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 3655
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3656
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 3657
    if-eqz v0, :cond_0

    .line 3658
    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$32;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EventInfoFragment$32;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method protected onEventUpdated()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 3732
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3735
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 3736
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsBusyFreeCalendar:Z

    if-eqz v0, :cond_5

    .line 3737
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    sget v2, Lcom/android/calendar/R$string;->busy:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 3745
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getCalendarClassifier()Lcom/android/calendar/CalendarClassifierInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/calendar/CalendarClassifierInterface;->calculateType(Ljava/lang/String;)I

    move-result v0

    .line 3746
    if-ne v3, v0, :cond_6

    .line 3747
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 3748
    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getPrefService(Landroid/content/Context;)Lcom/android/calendar/prefs/PrefService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/prefs/PrefService;->getHolidaysColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 3747
    invoke-static {v0}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/CalendarEventModel;->setEventColor(I)V

    .line 3758
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->shouldSetModelStartEndDates()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3761
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    iget-wide v4, v3, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mStart:J

    iput-wide v4, v2, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    iput-wide v4, v0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    .line 3762
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    iget-wide v4, v3, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;->mEnd:J

    iput-wide v4, v2, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    iput-wide v4, v0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    .line 3766
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v1, v2}, Lcom/android/calendar/event/CustomEvent;->extractInformation(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;)Lcom/android/calendar/event/CustomEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    .line 3767
    return-void

    .line 3739
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    sget v2, Lcom/android/calendar/R$string;->no_title_label:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 3749
    :cond_6
    const/4 v2, 0x1

    if-ne v2, v0, :cond_3

    .line 3751
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "preferences_birthdays_color"

    const v3, -0x6d1e40

    .line 3750
    invoke-static {v0, v2, v3}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v0

    .line 3754
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/CalendarEventModel;->setEventColor(I)V

    goto :goto_1
.end method

.method protected onFinalLayoutFinished()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2823
    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mShowAnimation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2824
    iput-boolean v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mShowAnimation:Z

    .line 2825
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2827
    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$24;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/event/EventInfoFragment$24;-><init>(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2845
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2846
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mOverlayBackground:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    invoke-virtual {v2, p0, v0}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->startRectAnimation(Lcom/android/calendar/OverlayFragment;Landroid/graphics/Rect;)V

    .line 2848
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setVisibility(I)V

    .line 2849
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getHeadlineHeight()I

    move-result v3

    new-instance v4, Lcom/android/calendar/event/EventInfoFragment$25;

    invoke-direct {v4, p0, v1}, Lcom/android/calendar/event/EventInfoFragment$25;-><init>(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/Runnable;)V

    .line 2856
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getStatusbarAnimator()Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v5

    .line 2849
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->startOpenAnimation(Landroid/graphics/Rect;ILandroid/animation/Animator$AnimatorListener;Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;)V

    .line 2857
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/calendar/event/EventInfoFragment$26;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/event/EventInfoFragment$26;-><init>(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/Runnable;)V

    const-wide/16 v4, 0xe1

    invoke-virtual {v0, v2, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2865
    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2616
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2617
    sparse-switch p2, :sswitch_data_0

    .line 2637
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 2619
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2620
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->clickEditButton()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2627
    :cond_2
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2629
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcom/android/calendar/event/EventInfoFragment;->getResponseId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2630
    if-eqz v1, :cond_0

    .line 2631
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 2617
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2a -> :sswitch_1
        0x35 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 3471
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 3473
    sparse-switch v1, :sswitch_data_0

    .line 3498
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 3499
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/EventInfoFragment;->onQueryComplete(I)V

    .line 3500
    return-void

    .line 3475
    :sswitch_0
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/EventInfoFragment;->onAttendeesLoaded(Landroid/database/Cursor;)V

    goto :goto_0

    .line 3478
    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/EventInfoFragment;->onCalendarLoaded(Landroid/database/Cursor;)V

    goto :goto_0

    .line 3481
    :sswitch_2
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/EventInfoFragment;->onEventLoaded(Landroid/database/Cursor;)V

    goto :goto_0

    .line 3484
    :sswitch_3
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, p2}, Lcom/android/calendar/event/EditHelper;->setModelFromExtendedProperties(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)V

    goto :goto_0

    .line 3487
    :sswitch_4
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, p2}, Lcom/android/calendar/event/EditHelper;->setModelFromRemindersCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)V

    goto :goto_0

    .line 3490
    :sswitch_5
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-le v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/event/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_0

    :goto_1
    iput-boolean v0, v2, Lcom/android/calendar/event/CalendarEventModel;->mShowCalendarName:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 3473
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x20 -> :sswitch_5
        0x100 -> :sswitch_0
        0x1000 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 186
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/EventInfoFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3533
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsPaused:Z

    .line 2786
    invoke-super {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->onPause()V

    .line 2787
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    if-eqz v0, :cond_0

    .line 2789
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v0}, Lcom/android/calendar/EditResponseHelper;->dismissAlertDialog()V

    .line 2792
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 2793
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;

    .line 2796
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mShouldSaveResponseOnPause:Z

    if-eqz v0, :cond_2

    .line 2797
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getSaveResponseRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2799
    :cond_2
    return-void
.end method

.method public onPreDraw(Landroid/view/View;Lcom/android/calendar/OverlayFragment$PreDrawListener;)Z
    .locals 2

    .prologue
    .line 901
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 902
    const/4 v0, 0x0

    .line 913
    :goto_0
    return v0

    .line 905
    :cond_0
    invoke-virtual {p2}, Lcom/android/calendar/OverlayFragment$PreDrawListener;->remove()V

    .line 906
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getContentViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 907
    if-eqz v0, :cond_1

    .line 910
    invoke-static {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->addLayoutChangeListener(Lcom/android/calendar/OverlayFragment;Landroid/view/View;)Lcom/android/calendar/OverlayFragment$LayoutChangeListener;

    move-result-object v1

    .line 911
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->onGlobalLayout(Landroid/view/View;Lcom/android/calendar/OverlayFragment$LayoutChangeListener;)V

    .line 913
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/DetailsDialogFragment;->onPreDraw(Landroid/view/View;Lcom/android/calendar/OverlayFragment$PreDrawListener;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onQueryComplete(I)V
    .locals 2

    .prologue
    .line 3508
    monitor-enter p0

    .line 3518
    :try_start_0
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesCompleted:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesCompleted:I

    .line 3519
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesCompleted:I

    iget v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesRequested:I

    if-ne v0, v1, :cond_2

    .line 3522
    iget-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mAllDataLoaded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/LoadingStateManager;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3523
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->onAllDataLoaded()V

    .line 3525
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mAllDataLoaded:Z

    .line 3527
    :cond_2
    monitor-exit p0

    .line 3528
    return-void

    .line 3527
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 2803
    invoke-super {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->onResume()V

    .line 2804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsPaused:Z

    .line 2805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mShouldSaveResponseOnPause:Z

    .line 2809
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    if-eqz v0, :cond_0

    .line 2810
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->updateResponseId(I)V

    .line 2811
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->updateResponseButtons(Landroid/view/ViewGroup;)V

    .line 2812
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->updateResponseListeners(I)V

    .line 2815
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    if-eqz v0, :cond_0

    .line 2816
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v1}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditResponseHelper;->showDialog(I)V

    .line 2819
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2014
    invoke-super {p0, p1}, Lcom/android/calendar/event/DetailsDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2016
    const-string v0, "key_event_time_period"

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2017
    const-string v0, "key_view_logged"

    iget-boolean v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mViewLogged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2018
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsResponseFollowUpShown:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2019
    const-string v0, "key_response_follow_up_actions_shown"

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mIsResponseFollowUpShown:Ljava/lang/Boolean;

    .line 2020
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2019
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2024
    :cond_0
    const-string v0, "key_tentative_user_response"

    iget v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2025
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    if-eqz v0, :cond_1

    .line 2027
    const-string v0, "key_response_which_events"

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    .line 2028
    invoke-virtual {v1}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v1

    .line 2027
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2030
    :cond_1
    return-void
.end method

.method public onTouchOutside()V
    .locals 0

    .prologue
    .line 2918
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->doDismissScreen()V

    .line 2919
    return-void
.end method

.method public prepareForDismiss()V
    .locals 1

    .prologue
    .line 3265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mDismissInProgress:Z

    .line 3266
    return-void
.end method

.method public reloadEvents()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3212
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->isGroove()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3213
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesCompleted:I

    .line 3214
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 3215
    invoke-virtual {v0}, Lcom/android/calendar/groove/TimelineGroove;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x10121

    .line 3216
    :goto_0
    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesRequested:I

    .line 3217
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getInfoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/EventInfoFragment;->load(ILandroid/net/Uri;)V

    .line 3222
    :goto_1
    return-void

    .line 3216
    :cond_0
    const v0, 0x11121

    goto :goto_0

    .line 3219
    :cond_1
    const/16 v0, 0x1139

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->setQueries(I)V

    .line 3220
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getInfoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/EventInfoFragment;->load(ILandroid/net/Uri;)V

    goto :goto_1
.end method

.method protected requestedQuery(I)Z
    .locals 1

    .prologue
    .line 3725
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesRequested:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method saveResponse(Landroid/content/Context;I)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 2089
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 2128
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 2094
    :cond_1
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mOriginalAttendeeResponse:I

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mMeetingResponseComment:Ljava/lang/String;

    .line 2095
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mProposedStartTime:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_2

    iget-wide v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mProposedEndTime:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    .line 2100
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    if-nez v1, :cond_3

    .line 2102
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/event/EventInfoFragment;->updateResponse(Landroid/content/Context;JJI)V

    .line 2103
    iput p2, p0, Lcom/android/calendar/event/EventInfoFragment;->mOriginalAttendeeResponse:I

    move v0, v7

    .line 2104
    goto :goto_0

    .line 2108
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v1}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2125
    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected choice for updating invitation response"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 2117
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-direct {p0, v0, v1, p2}, Lcom/android/calendar/event/EventInfoFragment;->createExceptionResponse(JI)V

    .line 2118
    iput p2, p0, Lcom/android/calendar/event/EventInfoFragment;->mOriginalAttendeeResponse:I

    move v0, v7

    .line 2119
    goto :goto_0

    .line 2121
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/event/EventInfoFragment;->updateResponse(Landroid/content/Context;JJI)V

    .line 2122
    iput p2, p0, Lcom/android/calendar/event/EventInfoFragment;->mOriginalAttendeeResponse:I

    move v0, v7

    .line 2123
    goto :goto_0

    .line 2108
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setModelFromCalendarCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3949
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 3950
    :cond_0
    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to build non-existent model or from an incorrect query."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3992
    :cond_1
    :goto_0
    return v0

    .line 3954
    :cond_2
    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 3955
    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t match calendar id in model"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 3959
    :cond_3
    iget-boolean v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    if-nez v2, :cond_4

    .line 3960
    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t update model with a Calendar cursor until it has seen an Event cursor."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 3965
    :cond_4
    const/4 v2, -0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3966
    :cond_5
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3967
    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 3971
    const/4 v2, 0x4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    iput-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 3973
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccessLevel:I

    .line 3974
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 3975
    const/4 v0, 0x3

    .line 3976
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3975
    invoke-static {v0}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/CalendarEventModel;->setCalendarColor(I)V

    .line 3978
    const/16 v0, 0xb

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 3979
    const/16 v0, 0xc

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    .line 3981
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarMaxReminders:I

    .line 3982
    const/16 v0, 0x8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 3983
    const/16 v0, 0x9

    .line 3984
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    .line 3985
    const/16 v0, 0xa

    .line 3986
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    .line 3987
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3988
    if-nez v0, :cond_7

    const-string v0, ""

    :cond_7
    iput-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    move v0, v1

    .line 3990
    goto/16 :goto_0
.end method

.method public setOpenedFromExternalSource(Z)V
    .locals 5

    .prologue
    .line 3583
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3584
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "external_event_view"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3588
    :goto_0
    return-void

    .line 3586
    :cond_0
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unable to set argument %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "external_event_view"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected setQueries(I)V
    .locals 1

    .prologue
    .line 3380
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesCompleted:I

    .line 3381
    iput p1, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesRequested:I

    .line 3382
    return-void
.end method

.method protected setView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 772
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 852
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->event_info:I

    .line 777
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentGroup;

    .line 780
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

    if-nez v1, :cond_6

    .line 781
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$id;->event_info_screen:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 782
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getNewScreen()Lcom/android/calendar/event/EventInfoFragment$Screen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

    .line 783
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 785
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

    iget-object v4, p0, Lcom/android/calendar/event/EventInfoFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-interface {v2, v1, v4}, Lcom/android/calendar/event/EventInfoFragment$Screen;->onInflateHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 787
    invoke-static {}, Lcom/android/calendar/Utils;->isLollipopMr1OrLater()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 788
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

    invoke-interface {v1}, Lcom/android/calendar/event/EventInfoFragment$Screen;->getTitleViewId()I

    move-result v1

    .line 791
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    sget v4, Lcom/android/calendar/R$id;->info_action_close:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v4, Lcom/android/calendar/R$id;->info_action_overflow:I

    .line 792
    invoke-virtual {v2, v4}, Landroid/view/View;->setAccessibilityTraversalBefore(I)V

    .line 793
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v4, Lcom/android/calendar/R$id;->info_action_overflow:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 794
    invoke-virtual {v2, v1}, Landroid/view/View;->setAccessibilityTraversalBefore(I)V

    .line 795
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    sget v4, Lcom/android/calendar/R$id;->info_action_edit_hit:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 796
    invoke-virtual {v2, v1}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 801
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-interface {v1, v0, v2}, Lcom/android/calendar/event/EventInfoFragment$Screen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 802
    invoke-virtual {v0}, Lcom/android/calendar/event/segment/InfoSegmentGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 803
    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    const-string v2, "Unable to load segments"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 807
    :cond_2
    new-instance v2, Lcom/android/calendar/event/EventInfoFragment$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/EventInfoFragment$2;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    .line 814
    invoke-virtual {v0}, Lcom/android/calendar/event/segment/InfoSegmentGroup;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/segment/InfoSegmentLayout;

    .line 815
    instance-of v4, v1, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;

    if-eqz v4, :cond_3

    .line 816
    invoke-virtual {v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getModelProvider()Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    move-result-object v4

    instance-of v4, v4, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    if-nez v4, :cond_3

    .line 818
    invoke-virtual {v1, v2}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setOnModelUpdatedListener(Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    goto :goto_2

    :cond_4
    move v2, v3

    .line 783
    goto :goto_1

    .line 822
    :cond_5
    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$CommandBar;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;-><init>(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/View;Landroid/view/LayoutInflater;)V

    .line 823
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

    invoke-interface {v2, v1}, Lcom/android/calendar/event/EventInfoFragment$Screen;->onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V

    .line 824
    invoke-virtual {v1}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->finalizeCommandsGroup()V

    .line 832
    :cond_6
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v1, v2}, Lcom/android/calendar/event/EventInfoFragment$Screen;->onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 834
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/event/EventInfoFragment;->updateButtons(Landroid/view/View;Lcom/android/calendar/event/CalendarEventModel;)V

    .line 837
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 838
    invoke-virtual {v0}, Lcom/android/calendar/event/segment/InfoSegmentGroup;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout;

    .line 840
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setActivity(Landroid/app/Activity;)V

    .line 842
    invoke-virtual {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->onRefreshModel()V

    goto :goto_3

    .line 845
    :cond_7
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->getAnimationData()Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 846
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

    invoke-interface {v1}, Lcom/android/calendar/event/EventInfoFragment$Screen;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setOriginalHeaderView(Landroid/view/View;)V

    .line 849
    :cond_8
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;->onViewUpdated()V

    .line 851
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    goto/16 :goto_0
.end method

.method protected shouldLoadEventDataOnCreateView()Z
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldSetModelStartEndDates()Z
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x1

    return v0
.end method

.method protected updateCloseButton(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2708
    if-nez p1, :cond_1

    .line 2721
    :cond_0
    :goto_0
    return-void

    .line 2711
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->info_action_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2712
    if-eqz v0, :cond_0

    .line 2715
    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$23;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EventInfoFragment$23;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected updateEditButton(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 2675
    if-nez p1, :cond_1

    .line 2701
    :cond_0
    :goto_0
    return-void

    .line 2679
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel;->isEventEditable()Z

    move-result v1

    .line 2681
    sget v0, Lcom/android/calendar/R$id;->info_action_edit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 2682
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2683
    sget v0, Lcom/android/calendar/R$id;->info_action_edit_hit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditButton:Landroid/widget/ImageView;

    .line 2684
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2685
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2686
    if-eqz v1, :cond_0

    .line 2688
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/EventInfoFragment;->getPorterDuffColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 2689
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditButton:Landroid/widget/ImageView;

    .line 2690
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2, v0}, Lcom/android/calendar/event/EventInfoFragment;->getStateListDrawable(Landroid/content/res/Resources;ILandroid/graphics/ColorFilter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2689
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2693
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEditButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$22;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EventInfoFragment$22;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2682
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method protected updateItem(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    .line 3310
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    if-eqz v0, :cond_0

    .line 3311
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 3312
    invoke-virtual {v0, p1}, Lcom/android/calendar/groove/TimelineGroove;->onModelComplete(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 3313
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "timeline_item"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3329
    :goto_0
    return-void

    .line 3317
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getInitialItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    .line 3318
    new-instance v1, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;

    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    const/4 v8, 0x0

    move-wide v6, v4

    invoke-direct/range {v1 .. v8}, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;-><init>(JJJI)V

    .line 3320
    iget v2, p0, Lcom/android/calendar/event/EventInfoFragment;->mOriginalAttendeeResponse:I

    invoke-virtual {v1, p1, v2}, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->onModelComplete(Lcom/android/calendar/event/CalendarEventModel;I)V

    .line 3326
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v0

    iput v0, v1, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->startDay:I

    .line 3328
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "timeline_item"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected updateOverflow(Landroid/view/View;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 2

    .prologue
    .line 2730
    if-nez p1, :cond_1

    .line 2742
    :cond_0
    :goto_0
    return-void

    .line 2733
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->info_action_overflow:I

    .line 2734
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EventInfoOverflowContainer;

    .line 2736
    if-eqz v0, :cond_0

    .line 2740
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mOnMenuItemClickListener:Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Lcom/android/calendar/event/EventInfoOverflowContainer;->setOnMenuItemClickedListener(Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;)V

    .line 2741
    invoke-interface {v0, p2}, Lcom/android/calendar/event/EventInfoOverflowContainer;->onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V

    goto :goto_0
.end method

.method public updateWithModel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 2

    .prologue
    .line 3272
    if-nez p1, :cond_1

    .line 3307
    :cond_0
    :goto_0
    return-void

    .line 3276
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/task/TimelineTaskType;

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-eqz v0, :cond_0

    .line 3283
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->updateItem(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 3285
    monitor-enter p0

    .line 3286
    :try_start_0
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesCompleted:I

    iget v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mQueriesRequested:I

    if-ne v0, v1, :cond_4

    .line 3289
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0, p1}, Lcom/android/calendar/event/CalendarEventModel;-><init>(Lcom/android/calendar/event/CalendarEventModel;)V

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 3290
    new-instance v0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0, v1}, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;-><init>(Lcom/android/calendar/event/CalendarEventModel;)V

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    .line 3293
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 3297
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3298
    sget-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->Unknown:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    invoke-virtual {v0, p0}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->setToCard(Lcom/android/calendar/OverlayFragment;)Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 3302
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment;->onAllDataLoaded()V

    .line 3306
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
