.class public final Lcom/google/android/calendar/event/screen/FlightReservationScreen;
.super Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;
.source "FlightReservationScreen.java"

# interfaces
.implements Lcom/google/android/calendar/event/segment/FlightReservationFlightSegmentProvider;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCheckInLink:Lcom/google/api/services/calendar/model/CalendarGoTo;

.field mCommandViewCheckIn:Landroid/view/View;

.field private mEventStart:J

.field private mFlightReservationFlightSegment:Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

.field private mReservationNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/android/calendar/R$layout;->screen_flight_reservation:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;-><init>(ILcom/android/calendar/event/CalendarEventModel;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/screen/FlightReservationScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mReservationNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/event/screen/FlightReservationScreen;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->startViewConfirmation(Landroid/content/Context;)V

    return-void
.end method

.method private startViewConfirmation(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->getUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/calendar/Utils;->startActivityForUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 181
    return-void
.end method


# virtual methods
.method public getFlightReservationFlightSegment()Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mFlightReservationFlightSegment:Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    return-object v0
.end method

.method protected getSmartmailImage()Lcom/google/api/services/calendar/model/Image;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mFlightReservationFlightSegment:Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mFlightReservationFlightSegment:Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getImage()Lcom/google/api/services/calendar/model/Image;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mCheckInLink:Lcom/google/api/services/calendar/model/CalendarGoTo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mCheckInLink:Lcom/google/api/services/calendar/model/CalendarGoTo;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/CalendarGoTo;->getUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-wide v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mEventStart:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 146
    sget v0, Lcom/android/calendar/R$layout;->command_view_check_in:I

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->inflateCommand(I)V

    .line 147
    sget v0, Lcom/android/calendar/R$id;->view_check_in:I

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mCommandViewCheckIn:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mCommandViewCheckIn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mCommandViewCheckIn:Landroid/view/View;

    new-instance v1, Lcom/google/android/calendar/event/screen/FlightReservationScreen$2;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/FlightReservationScreen$2;-><init>(Lcom/google/android/calendar/event/screen/FlightReservationScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 119
    sget v0, Lcom/android/calendar/R$id;->flight_info:I

    invoke-static {p1, v0, p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 120
    sget v0, Lcom/android/calendar/R$id;->departure:I

    invoke-static {p1, v0, p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 121
    sget v0, Lcom/android/calendar/R$id;->arrival:I

    invoke-static {p1, v0, p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 122
    sget v0, Lcom/android/calendar/R$id;->confirmation:I

    new-instance v1, Lcom/google/android/calendar/event/screen/FlightReservationScreen$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/FlightReservationScreen$1;-><init>(Lcom/google/android/calendar/event/screen/FlightReservationScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 130
    return-void
.end method

.method protected onUpdateSmartMailInfo()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iput-wide v4, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mEventStart:J

    .line 65
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getFlightReservations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v3}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getFlightReservations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 66
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 68
    invoke-virtual {v3}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getFlightReservations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/FlightReservation;

    .line 69
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/FlightReservation;->getFlightSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 70
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/FlightReservation;->getFlightSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mFlightReservationFlightSegment:Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    .line 71
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mFlightReservationFlightSegment:Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getBookingReference()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mReservationNumber:Ljava/lang/String;

    .line 73
    invoke-virtual {v3}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {v3}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Action;

    .line 75
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Action;->getGoToAction()Lcom/google/api/services/calendar/model/CalendarGoTo;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    const-string v2, "checkIn"

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/CalendarGoTo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iput-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mCheckInLink:Lcom/google/api/services/calendar/model/CalendarGoTo;

    goto :goto_2

    :cond_1
    move v0, v2

    .line 67
    goto :goto_0

    :cond_2
    move v1, v2

    .line 69
    goto :goto_1

    .line 81
    :cond_3
    return-void
.end method

.method public updateHeadline()V
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mFlightReservationFlightSegment:Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getArrivalCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->flight_to:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mFlightReservationFlightSegment:Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    .line 103
    invoke-virtual {v4}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getArrivalCity()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->setHeadlineTitle(Ljava/lang/String;)V

    .line 105
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FlightReservationScreen;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
