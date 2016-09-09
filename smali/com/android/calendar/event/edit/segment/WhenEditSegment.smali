.class public Lcom/android/calendar/event/edit/segment/WhenEditSegment;
.super Lcom/android/calendar/event/segment/AbstractTimeEditSegment;
.source "WhenEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/WhenEditSegment$InvalidDatesChosenDialog;
    }
.end annotation


# instance fields
.field private final mAddEndTimeText:Ljava/lang/String;

.field private final mAddEndTimeTextColor:I

.field private mAdjustEndTimeBasedOnStartTime:Z

.field private final mAllDayListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAllDaySwitch:Landroid/widget/Switch;

.field private mAnimatePropertyChange:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private final mDefaultDurationListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultTextColor:I

.field private mEditIcon:Landroid/widget/ImageView;

.field private mEndDateButton:Landroid/widget/TextView;

.field private mEndTimeButton:Landroid/widget/TextView;

.field private final mEndTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private mEndTimeOffsetByOne:Z

.field private final mErrorTextColor:I

.field private mInput:Lcom/android/calendar/event/data/InputAspectTime;

.field private mIsSavedAsAllDay:Z

.field private mIsStartTime:Z

.field private mIsTask:Z

.field private mLoadComplete:Z

.field private mMoreOptions:Landroid/widget/TextView;

.field private mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mMutableDefaultDuration:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

.field private mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private mNotRoundedEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private mNotRoundedStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private mRegisteredForActivityResult:Z

.field private mShowMoreOptionsButton:Z

.field private mStartDateButton:Landroid/widget/TextView;

.field private mStartTimeButton:Landroid/widget/TextView;

.field private final mStartTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackingDefaultDuration:I

.field private mUpdatedDate:[I

.field private mUpdatedTime:[I

.field private mValidEventDates:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 290
    const-class v0, Lcom/android/calendar/event/data/InputAspectTime;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 116
    iput-boolean v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mLoadComplete:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAnimatePropertyChange:Z

    .line 123
    iput-boolean v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAdjustEndTimeBasedOnStartTime:Z

    .line 124
    iput v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mTrackingDefaultDuration:I

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mValidEventDates:Z

    .line 136
    new-instance v0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;-><init>(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 170
    new-instance v0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment$2;-><init>(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mDefaultDurationListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 186
    new-instance v0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;-><init>(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 238
    new-instance v0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;-><init>(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAllDayListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 292
    invoke-virtual {p0, v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->setFocusable(Z)V

    .line 293
    invoke-virtual {p0, v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->setFocusableInTouchMode(Z)V

    .line 294
    sget v1, Lcom/android/calendar/R$color;->edit_text_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mDefaultTextColor:I

    .line 295
    sget v1, Lcom/android/calendar/R$color;->edit_edit_text_error_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mErrorTextColor:I

    .line 296
    sget v1, Lcom/android/calendar/R$color;->edit_text_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAddEndTimeTextColor:I

    .line 297
    sget v1, Lcom/android/calendar/R$string;->edit_when_add_end_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAddEndTimeText:Ljava/lang/String;

    .line 298
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mContext:Landroid/content/Context;

    .line 299
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onBeginChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onEndChange()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mTrackingDefaultDuration:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/calendar/event/edit/segment/WhenEditSegment;I)I
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mTrackingDefaultDuration:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAddEndTimeTextColor:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAddEndTimeText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/android/calendar/editor/EditSegmentController;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z
    .locals 1

    .prologue
    .line 72
    invoke-static {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->isMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeOffsetByOne:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeOffsetByOne:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartDateButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mDefaultTextColor:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Landroid/widget/TextView;Lcom/android/calendar/time/DateTimeImpl;I)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->setFormattedDateLabelAndContentDescription(Landroid/widget/TextView;Lcom/android/calendar/time/DateTimeImpl;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateEndDateTimeVisibility()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAllDaySwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Landroid/widget/TextView;Lcom/android/calendar/time/DateTimeImpl;I)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->setFormattedDateLabelAndContentDescription(Landroid/widget/TextView;Lcom/android/calendar/time/DateTimeImpl;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAdjustEndTimeBasedOnStartTime:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAdjustEndTimeBasedOnStartTime:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateStartTimeColor()V

    return-void
.end method

.method private getActivityResultNotifierActivity()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;
    .locals 2

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 961
    instance-of v1, v0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    if-eqz v1, :cond_0

    .line 962
    check-cast v0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    .line 965
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEndTimeOffsetByOneKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    const-string v0, ":endTimeOffsetByOne"

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIsStartTimeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 859
    const-string v0, ":isStartTime"

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMinutesFromMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)I
    .locals 2

    .prologue
    .line 286
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getHourOfDay()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMinuteOfHour()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getRegisteredForActivityResultKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 871
    const-string v0, ":registeredForActivityResult"

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTrackingDefaultDurationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    const-string v0, ":trackingDefaultDuration"

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z
    .locals 1

    .prologue
    .line 282
    invoke-static {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getMinutesFromMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecurrence()Z
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mInput:Lcom/android/calendar/event/data/InputAspectTime;

    instance-of v0, v0, Lcom/android/calendar/event/data/InputAspectRecurrence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mInput:Lcom/android/calendar/event/data/InputAspectTime;

    check-cast v0, Lcom/android/calendar/event/data/InputAspectRecurrence;

    .line 913
    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectRecurrence;->mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 912
    :goto_0
    return v0

    .line 913
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logDidManuallyChangeTime()V
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEditInput:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/calendar/event/data/EventEditManager;

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    .line 825
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logDidChangeTime()V

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEditInput:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->getLogMetrics()Lcom/android/calendar/event/data/TaskEditLogMetrics;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Lcom/android/calendar/event/data/TaskEditLogMetrics;->logDidChangeTime()V

    goto :goto_0
.end method

.method private onBeginChange()V
    .locals 6

    .prologue
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 877
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAnimatePropertyChange:Z

    if-eqz v0, :cond_0

    .line 878
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEditIcon:Landroid/widget/ImageView;

    .line 879
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 880
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 881
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/calendar/Utils;->SINE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 882
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v3, Lcom/android/calendar/R$integer;->event_editor_highlight_bounce_duration:I

    .line 883
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 885
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 887
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEditInput:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/calendar/event/data/EventEditManager;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 889
    invoke-static {v0}, Lcom/android/calendar/Utils;->colorFromEvent(Lcom/google/calendar/v2/client/service/api/events/Event;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 890
    new-instance v0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$5;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment$5;-><init>(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Landroid/widget/ImageView;)V

    sget v1, Lcom/android/calendar/R$integer;->event_editor_highlight_visible_duration:I

    .line 895
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    .line 890
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 899
    :cond_0
    return-void
.end method

.method private onDateSet(III)V
    .locals 3

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsStartTime:Z

    if-nez v0, :cond_2

    .line 789
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateTrackingDefaultDuration(Lcom/google/calendar/v2/client/service/api/time/DateTime;III)V

    .line 793
    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mUpdatedDate:[I

    .line 794
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mUpdatedDate:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 795
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mUpdatedDate:[I

    const/4 v1, 0x1

    add-int/lit8 v2, p2, 0x1

    aput v2, v0, v1

    .line 796
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mUpdatedDate:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 798
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mLoadComplete:Z

    if-eqz v0, :cond_0

    .line 803
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateDate()V

    goto :goto_0
.end method

.method private onEndChange()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAnimatePropertyChange:Z

    .line 905
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartDateButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 906
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 907
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 908
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 909
    return-void
.end method

.method private onTimeSet(II)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 724
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsStartTime:Z

    if-nez v0, :cond_2

    .line 730
    iput v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mTrackingDefaultDuration:I

    .line 734
    :cond_2
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mUpdatedTime:[I

    .line 735
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mUpdatedTime:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 736
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mUpdatedTime:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 738
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mLoadComplete:Z

    if-eqz v0, :cond_0

    .line 743
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateTime()V

    goto :goto_0
.end method

.method private registerForActivityResult()V
    .locals 1

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mRegisteredForActivityResult:Z

    if-nez v0, :cond_0

    .line 939
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getActivityResultNotifierActivity()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    move-result-object v0

    .line 940
    if-eqz v0, :cond_0

    .line 941
    invoke-interface {v0, p0}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;->registerActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V

    .line 942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mRegisteredForActivityResult:Z

    .line 945
    :cond_0
    return-void
.end method

.method private showEndDate()Z
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 479
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mShowMoreOptionsButton:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 478
    :goto_0
    return v0

    .line 479
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showEndTime()Z
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 484
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 483
    :goto_0
    return v0

    .line 484
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unregisterForActivityResult()V
    .locals 1

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mRegisteredForActivityResult:Z

    if-eqz v0, :cond_0

    .line 950
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getActivityResultNotifierActivity()Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    move-result-object v0

    .line 951
    if-eqz v0, :cond_0

    .line 952
    invoke-interface {v0, p0}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;->unregisterActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V

    .line 953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mRegisteredForActivityResult:Z

    .line 956
    :cond_0
    return-void
.end method

.method private declared-synchronized updateDate()V
    .locals 6

    .prologue
    .line 807
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsStartTime:Z

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-object v1, v0

    .line 809
    :goto_0
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 810
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAdjustEndTimeBasedOnStartTime:Z

    .line 813
    if-eqz v0, :cond_0

    .line 814
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mUpdatedDate:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mUpdatedDate:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mUpdatedDate:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-interface {v0, v2, v3, v4}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withDate(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 816
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->logDidManuallyChangeTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    :cond_0
    monitor-exit p0

    return-void

    .line 808
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 807
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateDateAndTime(ZJLjava/lang/String;)V
    .locals 6

    .prologue
    .line 923
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsStartTime:Z

    .line 924
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 925
    invoke-static {p4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 926
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 927
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 928
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 929
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 930
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 931
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 932
    invoke-direct {p0, v1, v2, v3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onDateSet(III)V

    .line 933
    invoke-direct {p0, v4, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onTimeSet(II)V

    .line 934
    return-void
.end method

.method private updateEndDateTimeVisibility()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->showEndDate()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 474
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->showEndTime()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 475
    return-void
.end method

.method private updateStartTimeColor()V
    .locals 3

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAllDaySwitch:Landroid/widget/Switch;

    if-nez v0, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAllDaySwitch:Landroid/widget/Switch;

    .line 843
    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    .line 842
    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->isValidEventTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mValidEventDates:Z

    .line 844
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mValidEventDates:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mDefaultTextColor:I

    .line 845
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartDateButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 846
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 844
    :cond_2
    iget v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mErrorTextColor:I

    goto :goto_1
.end method

.method private declared-synchronized updateTime()V
    .locals 5

    .prologue
    .line 747
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsStartTime:Z

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-object v1, v0

    .line 749
    :goto_0
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 750
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAdjustEndTimeBasedOnStartTime:Z

    .line 753
    if-eqz v0, :cond_0

    .line 754
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mUpdatedTime:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mUpdatedTime:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 755
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->logDidManuallyChangeTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    :cond_0
    monitor-exit p0

    return-void

    .line 748
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 747
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateTrackingDefaultDuration(Lcom/google/calendar/v2/client/service/api/time/DateTime;III)V
    .locals 2

    .prologue
    .line 773
    if-nez p1, :cond_1

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getYear()I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 777
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMonthOfYear()I

    move-result v0

    add-int/lit8 v1, p3, 0x1

    if-ne v0, v1, :cond_2

    .line 778
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfMonth()I

    move-result v0

    if-eq v0, p4, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 779
    :goto_1
    if-eqz v0, :cond_0

    .line 780
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mTrackingDefaultDuration:I

    goto :goto_0

    .line 778
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public applyChangeAnimated(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAnimatePropertyChange:Z

    .line 558
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAnimatePropertyChange:Z

    .line 562
    return-void

    .line 560
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAnimatePropertyChange:Z

    throw v0
.end method

.method public canApplyChangeAnimated(Ljava/lang/String;Lcom/android/calendar/editor/ChangeAnimationDescriptor;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 546
    const-string v1, "com.android.calendar.event.time"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, v1}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->setTargetPosition(Landroid/graphics/Point;)Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    .line 548
    sget v0, Lcom/android/calendar/R$id;->edit_segment_icon:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->setTargetView(Landroid/view/View;)Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    .line 549
    const/4 v0, 0x1

    .line 551
    :cond_0
    return v0
.end method

.method public interruptSavingProcess(Landroid/app/FragmentManager;)Z
    .locals 2

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mValidEventDates:Z

    if-nez v0, :cond_0

    .line 852
    new-instance v0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$InvalidDatesChosenDialog;

    invoke-direct {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment$InvalidDatesChosenDialog;-><init>()V

    .line 853
    sget-object v1, Lcom/android/calendar/event/edit/segment/WhenEditSegment$InvalidDatesChosenDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment$InvalidDatesChosenDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 855
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mValidEventDates:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected launchDatePicker(ZLcom/google/calendar/v2/client/service/api/time/DateTime;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 661
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v1}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 662
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsStartTime:Z

    .line 670
    iget-boolean v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsTask:Z

    if-eqz v1, :cond_5

    .line 671
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Landroid/content/Context;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 672
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->isRecurrence()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 674
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 677
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 678
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 681
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 682
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 683
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 685
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 684
    invoke-virtual {v1, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 688
    invoke-interface {v0, p2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isAfter(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object p2, v0

    move-object v0, v1

    move-object v1, v2

    .line 694
    :goto_1
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 695
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getDatePickerLOrLater(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Landroid/app/DatePickerDialog;

    move-result-object v1

    .line 696
    iget-boolean v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsTask:Z

    if-eqz v2, :cond_0

    .line 697
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    .line 698
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 697
    invoke-virtual {v2, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 700
    :cond_0
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V

    .line 708
    :goto_2
    return-void

    .line 673
    :cond_1
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundDownToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_0

    .line 702
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getDatePickerPreL(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/android/datetimepicker/date/DatePickerDialog;

    move-result-object v0

    .line 703
    iget-boolean v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsTask:Z

    if-eqz v2, :cond_3

    .line 704
    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/DatePickerDialog;->setMinDate(Ljava/util/Calendar;)V

    .line 706
    :cond_3
    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "datePickerDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/datetimepicker/date/DatePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method protected launchTimePicker(ZLcom/google/calendar/v2/client/service/api/time/DateTime;)V
    .locals 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 649
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsStartTime:Z

    .line 651
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getTimePickerLOrLater(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Landroid/app/TimePickerDialog;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 658
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getTimePickerPreL(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/android/datetimepicker/time/TimePickerDialog;

    move-result-object v1

    .line 656
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "timePickerDialogFragment"

    invoke-virtual {v1, v0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 970
    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 972
    const-string v0, "timezone"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 973
    const/4 v1, 0x1

    const-string v2, "start_millis"

    .line 974
    invoke-virtual {p3, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 973
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateDateAndTime(ZJLjava/lang/String;)V

    .line 975
    const/4 v1, 0x0

    const-string v2, "end_millis"

    .line 976
    invoke-virtual {p3, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 975
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateDateAndTime(ZJLjava/lang/String;)V

    .line 978
    :cond_0
    return-void
.end method

.method public onAfterPrepareForSave()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mNotRoundedStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mNotRoundedEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 540
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->onAfterPrepareForSave()V

    .line 541
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 619
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0, p2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 621
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->logDidManuallyChangeTime()V

    .line 623
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsTask:Z

    if-eqz v0, :cond_0

    .line 624
    if-eqz p2, :cond_1

    .line 627
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->isRecurrence()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 628
    invoke-static {v0, v1, v3}, Lcom/android/calendar/time/DateTimeUtils;->isAllDayToday(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-static {v1}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Landroid/content/Context;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isBefore(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-static {v0, v2, v3}, Lcom/android/calendar/time/DateTimeUtils;->isFuture(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getFutureDateTimeForTask(Landroid/content/Context;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 637
    :goto_1
    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getTimeOnGivenFutureDateForTask(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 595
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v2}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/calendar/Utils;->hideFocusAndSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 597
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartDateButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 598
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->launchDatePicker(ZLcom/google/calendar/v2/client/service/api/time/DateTime;)V

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 600
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->launchTimePicker(ZLcom/google/calendar/v2/client/service/api/time/DateTime;)V

    goto :goto_0

    .line 601
    :cond_2
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 602
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->launchDatePicker(ZLcom/google/calendar/v2/client/service/api/time/DateTime;)V

    goto :goto_0

    .line 603
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 604
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->launchTimePicker(ZLcom/google/calendar/v2/client/service/api/time/DateTime;)V

    goto :goto_0

    .line 605
    :cond_4
    sget v3, Lcom/android/calendar/R$id;->all_day_switch_label:I

    if-ne v2, v3, :cond_6

    .line 606
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAllDaySwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAllDaySwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 607
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMoreOptions:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 608
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mShowMoreOptionsButton:Z

    .line 609
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateEndDateTimeVisibility()V

    .line 610
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 611
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/calendar/Utils;->requestAccessibilityFocus(Landroid/view/View;)V

    .line 612
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMoreOptions:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mInput:Lcom/android/calendar/event/data/InputAspectTime;

    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectTime;->handleMoreOptionsButtonClicked()V

    goto :goto_0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    .prologue
    .line 763
    invoke-direct {p0, p2, p3, p4}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onDateSet(III)V

    .line 764
    return-void
.end method

.method public onDateSet(Lcom/android/datetimepicker/date/DatePickerDialog;III)V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0, p2, p3, p4}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onDateSet(III)V

    .line 769
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTime;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 489
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 491
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAllDayListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 495
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 499
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableDefaultDuration:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    if-eqz v0, :cond_3

    .line 502
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableDefaultDuration:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mDefaultDurationListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 503
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableDefaultDuration:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    .line 507
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->unregisterForActivityResult()V

    .line 508
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    check-cast p2, Lcom/android/calendar/event/data/InputAspectTime;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTime;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->onFinishInflate()V

    .line 306
    sget v0, Lcom/android/calendar/R$id;->start_date:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartDateButton:Landroid/widget/TextView;

    .line 307
    sget v0, Lcom/android/calendar/R$id;->start_time:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    .line 308
    sget v0, Lcom/android/calendar/R$id;->end_date:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;

    .line 309
    sget v0, Lcom/android/calendar/R$id;->end_time:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeButton:Landroid/widget/TextView;

    .line 310
    sget v0, Lcom/android/calendar/R$id;->all_day_switch:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAllDaySwitch:Landroid/widget/Switch;

    .line 311
    sget v0, Lcom/android/calendar/R$id;->more_options:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMoreOptions:Landroid/widget/TextView;

    .line 312
    sget v0, Lcom/android/calendar/R$id;->edit_segment_icon:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEditIcon:Landroid/widget/ImageView;

    .line 314
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartDateButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAllDaySwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 319
    sget v0, Lcom/android/calendar/R$id;->all_day_switch_label:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 320
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 325
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->onMeasure(II)V

    .line 326
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_2

    .line 330
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 331
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartDateButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;

    .line 332
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_3

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 331
    :goto_0
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 333
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    .line 334
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 333
    :cond_0
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 336
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    .line 341
    add-int v4, v0, v1

    add-int/2addr v4, v3

    if-le v4, v2, :cond_2

    .line 342
    sub-int/2addr v2, v3

    .line 343
    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 344
    sub-int v3, v2, v1

    if-lt v3, v0, :cond_4

    .line 345
    sub-int v0, v2, v0

    .line 346
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 347
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 356
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->onMeasure(II)V

    .line 359
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 332
    goto :goto_0

    .line 349
    :cond_4
    div-int/lit8 v0, v2, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 350
    sub-int v1, v2, v0

    .line 351
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartDateButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 352
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 353
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 354
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1
.end method

.method public onPrepareForSave()V
    .locals 2

    .prologue
    .line 521
    invoke-super {p0}, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->onPrepareForSave()V

    .line 522
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mNotRoundedStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 524
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundDownToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 525
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mNotRoundedEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 527
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 530
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 566
    invoke-super {p0, p1}, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 567
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getIsStartTimeKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsStartTime:Z

    .line 568
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getEndTimeOffsetByOneKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeOffsetByOne:Z

    .line 569
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getTrackingDefaultDurationKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mTrackingDefaultDuration:I

    .line 570
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 572
    const-string v0, "datePickerDialogFragment"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/datetimepicker/date/DatePickerDialog;

    .line 574
    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0, p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->setOnDateSetListener(Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;)V

    .line 577
    :cond_0
    const-string v0, "timePickerDialogFragment"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/datetimepicker/time/TimePickerDialog;

    .line 579
    if-eqz v0, :cond_1

    .line 580
    invoke-virtual {v0, p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->setOnTimeSetListener(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;)V

    .line 584
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getRegisteredForActivityResultKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 585
    if-eqz v0, :cond_2

    .line 587
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->registerForActivityResult()V

    .line 589
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 512
    invoke-super {p0, p1}, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 513
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getIsStartTimeKey()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsStartTime:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 514
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getTrackingDefaultDurationKey()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mTrackingDefaultDuration:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getEndTimeOffsetByOneKey()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeOffsetByOne:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 516
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getRegisteredForActivityResultKey()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mRegisteredForActivityResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 517
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTime;)V
    .locals 8

    .prologue
    const/16 v4, 0x17

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 363
    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mInput:Lcom/android/calendar/event/data/InputAspectTime;

    .line 365
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectTime;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 366
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectTime;->mutableEndTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 367
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectTime;->mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 368
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectTime;->mutableDefaultDuration()Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableDefaultDuration:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    .line 369
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectTime;->isTask()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsTask:Z

    .line 370
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectTime;->isSavedAsAllDay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsSavedAsAllDay:Z

    .line 374
    iget v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mTrackingDefaultDuration:I

    if-nez v0, :cond_0

    .line 375
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectTime;->useDefaultDuration()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    .line 376
    iput v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mTrackingDefaultDuration:I

    .line 382
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 383
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAllDayListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 384
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableDefaultDuration:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mDefaultDurationListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 389
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAllDayListener:Lcom/google/calendar/v2/client/service/common/Listener;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_2

    .line 392
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mDefaultDurationListener:Lcom/google/calendar/v2/client/service/common/Listener;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableDefaultDuration:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 396
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mIsSavedAsAllDay:Z

    if-eqz v0, :cond_5

    .line 399
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Landroid/content/Context;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    .line 404
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getHourOfDay()I

    move-result v0

    if-lt v0, v4, :cond_9

    .line 405
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0, v4, v3, v3}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    move-object v1, v0

    .line 415
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-object v4, v0

    .line 416
    :goto_2
    if-eqz v4, :cond_4

    .line 417
    invoke-interface {v4, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->dateEquals(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 421
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableDefaultDuration:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    .line 422
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;->get()I

    move-result v0

    if-ltz v0, :cond_b

    .line 423
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableDefaultDuration:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;->get()I

    move-result v0

    .line 424
    :goto_3
    const/16 v5, 0x5a0

    .line 421
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Lcom/google/calendar/v2/client/service/api/time/Duration;->standardMinutes(J)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v5

    .line 427
    invoke-interface {v1, v5}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 428
    invoke-interface {v0, v4}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->dateEquals(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 432
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getHourOfDay()I

    move-result v4

    .line 433
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMinuteOfHour()I

    move-result v0

    if-lez v0, :cond_c

    move v0, v2

    :goto_4
    add-int/2addr v0, v4

    int-to-long v6, v0

    .line 431
    invoke-static {v6, v7}, Lcom/google/calendar/v2/client/service/api/time/Duration;->standardHours(J)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v0

    .line 434
    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->minusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    .line 436
    invoke-interface {v1, v5}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 439
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v3, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 450
    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 453
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mUpdatedDate:[I

    if-eqz v0, :cond_6

    .line 454
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateDate()V

    .line 456
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mUpdatedTime:[I

    if-eqz v0, :cond_7

    .line 457
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateTime()V

    .line 460
    :cond_7
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectTime;->showMoreOptionsButton()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mShowMoreOptionsButton:Z

    .line 461
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMoreOptions:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mShowMoreOptionsButton:Z

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 462
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMoreOptions:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateEndDateTimeVisibility()V

    .line 464
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateStartTimeColor()V

    .line 466
    iput-boolean v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mLoadComplete:Z

    .line 469
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->registerForActivityResult()V

    .line 470
    return-void

    .line 378
    :cond_8
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mTrackingDefaultDuration:I

    goto/16 :goto_0

    .line 407
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 408
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getHourOfDay()I

    move-result v4

    .line 409
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMinuteOfHour()I

    move-result v5

    .line 410
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getSecondOfMinute()I

    move-result v1

    .line 407
    invoke-interface {v0, v4, v5, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToHour(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 415
    :cond_a
    const/4 v0, 0x0

    move-object v4, v0

    goto/16 :goto_2

    .line 424
    :cond_b
    const/16 v0, 0x3c

    goto/16 :goto_3

    :cond_c
    move v0, v3

    .line 433
    goto :goto_4

    .line 443
    :cond_d
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 444
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getHourOfDay()I

    move-result v3

    .line 445
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMinuteOfHour()I

    move-result v5

    .line 446
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getSecondOfMinute()I

    move-result v6

    .line 444
    invoke-interface {v4, v3, v5, v6}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v3

    .line 443
    invoke-interface {v0, v3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    check-cast p2, Lcom/android/calendar/event/data/InputAspectTime;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTime;)V

    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0, p2, p3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onTimeSet(II)V

    .line 716
    return-void
.end method

.method public onTimeSet(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0, p2, p3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onTimeSet(II)V

    .line 721
    return-void
.end method
