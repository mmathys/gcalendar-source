.class public Lcom/google/android/calendar/event/TimelyEventInfoFragment;
.super Lcom/android/calendar/event/EventInfoFragment;
.source "TimelyEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;,
        Lcom/google/android/calendar/event/TimelyEventInfoFragment$ConferenceTypeLoader;,
        Lcom/google/android/calendar/event/TimelyEventInfoFragment$ContactInfoFixer;,
        Lcom/google/android/calendar/event/TimelyEventInfoFragment$HolidayLoader;,
        Lcom/google/android/calendar/event/TimelyEventInfoFragment$BirthdayLoader;,
        Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyExtraLoader;
    }
.end annotation


# static fields
.field private static final TIMELY_CALENDAR_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBirthdayCallback:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mBitMaskWithoutExtras:I

.field private mConferenceTypeCallbacks:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactInfoCallbacks:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/ContactInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHolidayCallback:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
            "<",
            "Lcom/android/calendar/timely/TimelineHoliday;",
            ">;"
        }
    .end annotation
.end field

.field private mTimelyExtrasCallbacks:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 102
    sget-object v0, Lcom/android/calendar/event/LoadDetailsConstants;->CALENDARS_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/android/calendar/event/LoadDetailsConstants;->CALENDARS_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->TIMELY_CALENDAR_PROJECTION:[Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->TIMELY_CALENDAR_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->TIMELY_CALENDAR_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, "cal_sync9"

    aput-object v2, v0, v1

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment;-><init>()V

    .line 501
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/timely/TimelineItem;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/timely/TimelineItem;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/android/calendar/event/TimelyEventInfoFragment;I)I
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mOriginalAttendeeResponse:I

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mDismissInProgress:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->displayEventNotFound()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/android/calendar/event/TimelyEventInfoFragment;I)I
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mOriginalAttendeeResponse:I

    return p1
.end method

.method static synthetic access$1902(Lcom/google/android/calendar/event/TimelyEventInfoFragment;Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;)Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/calendar/event/TimelyEventInfoFragment;I)V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->onQueryComplete(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/timely/TimelineItem;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/android/calendar/event/TimelyEventInfoFragment;I)I
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mOriginalAttendeeResponse:I

    return p1
.end method

.method static synthetic access$2602(Lcom/google/android/calendar/event/TimelyEventInfoFragment;Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;)Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/timely/TimelineItem;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/timely/TimelineItem;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/timely/TimelineItem;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/timely/TimelineItem;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private getBirthdayCallback()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mBirthdayCallback:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$1;-><init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mBirthdayCallback:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mBirthdayCallback:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    return-object v0
.end method

.method private getConferenceTypeCallbacks()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mConferenceTypeCallbacks:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    if-nez v0, :cond_0

    .line 800
    new-instance v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$6;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$6;-><init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mConferenceTypeCallbacks:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mConferenceTypeCallbacks:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    return-object v0
.end method

.method private getContactInfoCallbacks()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/ContactInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mContactInfoCallbacks:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    if-nez v0, :cond_0

    .line 768
    new-instance v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$5;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$5;-><init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mContactInfoCallbacks:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mContactInfoCallbacks:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    return-object v0
.end method

.method private getHolidayCallback()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
            "<",
            "Lcom/android/calendar/timely/TimelineHoliday;",
            ">;"
        }
    .end annotation

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mHolidayCallback:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    if-nez v0, :cond_0

    .line 715
    new-instance v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$3;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$3;-><init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mHolidayCallback:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mHolidayCallback:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    return-object v0
.end method

.method private getReminderLoaderCallbacks()Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 673
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v0

    .line 674
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    new-instance v4, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;

    invoke-direct {v4, p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;-><init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/task/BaseTaskDataFactory;->getLoaderCallbacks(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v0

    .line 673
    return-object v0
.end method

.method private getTimelyExtrasCallbacks()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mTimelyExtrasCallbacks:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    if-nez v0, :cond_0

    .line 750
    new-instance v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$4;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$4;-><init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mTimelyExtrasCallbacks:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mTimelyExtrasCallbacks:Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    return-object v0
.end method

.method private setScreenFromModel()Lcom/android/calendar/event/EventInfoFragment$Screen;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 824
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 825
    const-string v1, "TimelyEventInfoFragment"

    const-string v2, "null mInfoExtra"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 849
    :goto_0
    return-object v0

    .line 828
    :cond_0
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/calendar/groove/TimelineGroove;

    if-eqz v1, :cond_1

    .line 829
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_action_info_bubble_shown:I

    invoke-static {v0, v1}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 830
    new-instance v1, Lcom/android/calendar/groove/GrooveScreen;

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    invoke-direct {v1, v0}, Lcom/android/calendar/groove/GrooveScreen;-><init>(Lcom/android/calendar/groove/TimelineGroove;)V

    move-object v0, v1

    goto :goto_0

    .line 832
    :cond_1
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v1, :cond_2

    .line 833
    new-instance v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;-><init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V

    goto :goto_0

    .line 835
    :cond_2
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/calendar/task/TimelyTimelineTask;

    if-eqz v1, :cond_3

    .line 836
    new-instance v1, Lcom/google/android/calendar/event/screen/TaskScreen;

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/calendar/task/TimelyTimelineTask;

    invoke-direct {v1, v0}, Lcom/google/android/calendar/event/screen/TaskScreen;-><init>(Lcom/google/android/calendar/task/TimelyTimelineTask;)V

    move-object v0, v1

    goto :goto_0

    .line 838
    :cond_3
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/calendar/timely/TimelineBirthday;

    if-eqz v1, :cond_4

    .line 839
    new-instance v1, Lcom/google/android/calendar/event/screen/BirthdayScreen;

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday;

    invoke-direct {v1, v0}, Lcom/google/android/calendar/event/screen/BirthdayScreen;-><init>(Lcom/android/calendar/timely/TimelineBirthday;)V

    move-object v0, v1

    goto :goto_0

    .line 841
    :cond_4
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/calendar/timely/TimelineHoliday;

    if-eqz v1, :cond_5

    .line 842
    new-instance v1, Lcom/google/android/calendar/event/screen/HolidayScreen;

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/timely/TimelineHoliday;

    invoke-direct {v1, v0}, Lcom/google/android/calendar/event/screen/HolidayScreen;-><init>(Lcom/android/calendar/timely/TimelineHoliday;)V

    move-object v0, v1

    goto :goto_0

    .line 844
    :cond_5
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/api/services/calendar/model/SmartMailInfo;

    if-eqz v1, :cond_6

    .line 845
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/services/calendar/model/SmartMailInfo;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->setScreenFromSmartMailInfo(Lcom/google/api/services/calendar/model/SmartMailInfo;)Lcom/android/calendar/event/EventInfoFragment$Screen;

    move-result-object v0

    goto :goto_0

    .line 847
    :cond_6
    const-string v1, "TimelyEventInfoFragment"

    const-string v2, "non-null mInfoExtra with unknown class %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    .line 848
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 847
    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method

.method private setScreenFromSmartMailInfo(Lcom/google/api/services/calendar/model/SmartMailInfo;)Lcom/android/calendar/event/EventInfoFragment$Screen;
    .locals 3

    .prologue
    .line 858
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getEventReservations()Ljava/util/List;

    move-result-object v0

    .line 859
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 860
    new-instance v0, Lcom/google/android/calendar/event/screen/TicketedEventScreen;

    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0, v1}, Lcom/google/android/calendar/event/screen/TicketedEventScreen;-><init>(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 880
    :goto_0
    return-object v0

    .line 862
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getFlightReservations()Ljava/util/List;

    move-result-object v0

    .line 863
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 864
    new-instance v0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;

    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0, v1}, Lcom/google/android/calendar/event/screen/FlightReservationScreen;-><init>(Lcom/android/calendar/event/CalendarEventModel;)V

    goto :goto_0

    .line 866
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getLodgingReservations()Ljava/util/List;

    move-result-object v0

    .line 867
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 868
    new-instance v0, Lcom/google/android/calendar/event/screen/LodgingScreen;

    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0, v1}, Lcom/google/android/calendar/event/screen/LodgingScreen;-><init>(Lcom/android/calendar/event/CalendarEventModel;)V

    goto :goto_0

    .line 870
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getRestaurantReservations()Ljava/util/List;

    move-result-object v0

    .line 871
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 872
    new-instance v0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;

    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0, v1}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;-><init>(Lcom/android/calendar/event/CalendarEventModel;)V

    goto :goto_0

    .line 874
    :cond_3
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getEvents()Ljava/util/List;

    move-result-object v0

    .line 875
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 876
    new-instance v0, Lcom/google/android/calendar/event/screen/InvitationScreen;

    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0, v1}, Lcom/google/android/calendar/event/screen/InvitationScreen;-><init>(Lcom/android/calendar/event/CalendarEventModel;)V

    goto :goto_0

    .line 879
    :cond_4
    const-string v0, "TimelyEventInfoFragment"

    const-string v1, "non-null information with unknown content"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 880
    new-instance v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;-><init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V

    goto :goto_0
.end method


# virtual methods
.method protected getAnimationHeadline()Landroid/view/View;
    .locals 4

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    .line 900
    const/4 v0, 0x0

    .line 901
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 902
    invoke-static {v2, v1}, Lcom/android/calendar/event/ImageHelper;->shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 904
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/calendar/event/ImageHelper;->isImageCached(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 905
    new-instance v0, Lcom/android/calendar/event/ImageHelper;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v2, v1, v3}, Lcom/android/calendar/event/ImageHelper;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;)V

    invoke-virtual {v0}, Lcom/android/calendar/event/ImageHelper;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 910
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    return-object v0

    .line 907
    :cond_1
    invoke-static {v2, v1}, Lcom/google/android/calendar/event/screen/BirthdayScreen;->shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    new-instance v0, Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/calendar/event/screen/BirthdayScreen$BirthdayImageView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 910
    :cond_2
    invoke-super {p0}, Lcom/android/calendar/event/EventInfoFragment;->getAnimationHeadline()Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method protected getCalendarsProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    sget-object v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->TIMELY_CALENDAR_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getHeadlineHeight()I
    .locals 3

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 886
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    .line 887
    invoke-static {v0, v1}, Lcom/android/calendar/event/ImageHelper;->shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 888
    invoke-static {v0, v1}, Lcom/google/android/calendar/event/screen/BirthdayScreen;->shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 889
    invoke-static {v0, v1}, Lcom/google/android/calendar/event/screen/HolidayScreen;->shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 890
    :cond_0
    sget v1, Lcom/android/calendar/R$dimen;->timely_info_headline_image_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 887
    :goto_0
    return v0

    .line 891
    :cond_1
    invoke-super {p0}, Lcom/android/calendar/event/EventInfoFragment;->getHeadlineHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected getNewScreen()Lcom/android/calendar/event/EventInfoFragment$Screen;
    .locals 3

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->setScreenFromModel()Lcom/android/calendar/event/EventInfoFragment$Screen;

    move-result-object v1

    .line 514
    instance-of v0, v1, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 515
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;

    .line 516
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->setItem(Lcom/android/calendar/timely/TimelineItem;)V

    .line 517
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->setResources(Landroid/content/res/Resources;)V

    .line 518
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->setView(Landroid/view/View;)V

    .line 522
    :cond_0
    :goto_0
    return-object v1

    .line 519
    :cond_1
    if-nez v1, :cond_0

    .line 520
    new-instance v1, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;-><init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V

    goto :goto_0
.end method

.method protected getPorterDuffColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasHeadlineImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 533
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->getPorterDuffColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 6
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
    const/high16 v5, 0x400000

    const/high16 v4, 0x200000

    const/high16 v3, 0x80000

    const/4 v2, 0x0

    .line 618
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/EventInfoFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 621
    iget v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mQueriesCompleted:I

    iget v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mBitMaskWithoutExtras:I

    if-ne v0, v1, :cond_2

    .line 622
    invoke-virtual {p0, v3}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->requestedQuery(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 624
    invoke-direct {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getTimelyExtrasCallbacks()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    move-result-object v1

    .line 623
    invoke-virtual {v0, v3, v2, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 626
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->requestedQuery(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 628
    invoke-direct {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getContactInfoCallbacks()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    move-result-object v1

    .line 627
    invoke-virtual {v0, v4, v2, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 630
    :cond_1
    invoke-virtual {p0, v5}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->requestedQuery(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 632
    invoke-direct {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getConferenceTypeCallbacks()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    move-result-object v1

    .line 631
    invoke-virtual {v0, v5, v2, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 635
    :cond_2
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public reloadEvents()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x100000

    const/high16 v2, 0x40000

    const/high16 v3, 0x20000

    .line 539
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 540
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    .line 541
    instance-of v1, v0, Lcom/google/android/calendar/task/TimelyTimelineTask;

    if-eqz v1, :cond_0

    .line 543
    iput v3, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mBitMaskWithoutExtras:I

    .line 544
    iget v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mBitMaskWithoutExtras:I

    invoke-super {p0, v1}, Lcom/android/calendar/event/EventInfoFragment;->setQueries(I)V

    .line 546
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 547
    check-cast v0, Lcom/google/android/calendar/task/TimelyTimelineTask;

    .line 548
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/TimelyTimelineTask;->addArgs(Landroid/os/Bundle;)V

    .line 549
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-direct {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getReminderLoaderCallbacks()Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 565
    :goto_0
    return-void

    .line 550
    :cond_0
    instance-of v1, v0, Lcom/android/calendar/timely/TimelineBirthday;

    if-eqz v1, :cond_1

    .line 552
    iput v2, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mBitMaskWithoutExtras:I

    .line 553
    iget v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mBitMaskWithoutExtras:I

    invoke-super {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->setQueries(I)V

    .line 555
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-direct {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getBirthdayCallback()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    move-result-object v1

    invoke-virtual {v0, v2, v5, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 556
    :cond_1
    instance-of v0, v0, Lcom/android/calendar/timely/TimelineHoliday;

    if-eqz v0, :cond_2

    .line 558
    iput v4, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mBitMaskWithoutExtras:I

    .line 559
    iget v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mBitMaskWithoutExtras:I

    invoke-super {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->setQueries(I)V

    .line 561
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-direct {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getHolidayCallback()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;

    move-result-object v1

    invoke-virtual {v0, v4, v5, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 563
    :cond_2
    invoke-super {p0}, Lcom/android/calendar/event/EventInfoFragment;->reloadEvents()V

    goto :goto_0
.end method

.method protected setModelFromCalendarCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)Z
    .locals 3

    .prologue
    .line 586
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/EventInfoFragment;->setModelFromCalendarCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)Z

    move-result v0

    .line 588
    if-eqz v0, :cond_0

    .line 592
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    const-string v1, "cal_sync9"

    invoke-static {p2, v1}, Lcom/android/calendar/Utils;->isCalendarShared(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsSharedCalendar:Z

    .line 597
    :cond_0
    return v0
.end method

.method protected setQueries(I)V
    .locals 2

    .prologue
    .line 573
    iput p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mBitMaskWithoutExtras:I

    .line 574
    const/high16 v0, 0x80000

    or-int/2addr v0, p1

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    invoke-super {p0, v0}, Lcom/android/calendar/event/EventInfoFragment;->setQueries(I)V

    .line 576
    return-void
.end method

.method protected updateItem(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 3

    .prologue
    .line 605
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "timeline_item"

    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/calendar/task/ArpTimelineTask;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 610
    :goto_0
    return-void

    .line 609
    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/event/EventInfoFragment;->updateItem(Lcom/android/calendar/event/CalendarEventModel;)V

    goto :goto_0
.end method
