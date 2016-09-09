.class public final Lcom/google/android/calendar/event/screen/LodgingScreen;
.super Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;
.source "LodgingScreen.java"


# instance fields
.field private mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;

.field private mReservationNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/android/calendar/R$layout;->screen_lodging:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;-><init>(ILcom/android/calendar/event/CalendarEventModel;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/screen/LodgingScreen;)Lcom/google/api/services/calendar/model/LodgingReservation;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/event/screen/LodgingScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen;->mReservationNumber:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getSmartmailImage()Lcom/google/api/services/calendar/model/Image;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/LodgingReservation;->getImage()Lcom/google/api/services/calendar/model/Image;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 89
    sget v0, Lcom/android/calendar/R$id;->lodging:I

    new-instance v1, Lcom/google/android/calendar/event/screen/LodgingScreen$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/LodgingScreen$1;-><init>(Lcom/google/android/calendar/event/screen/LodgingScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 120
    sget v0, Lcom/android/calendar/R$id;->check_in:I

    new-instance v1, Lcom/google/android/calendar/event/screen/LodgingScreen$2;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/LodgingScreen$2;-><init>(Lcom/google/android/calendar/event/screen/LodgingScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 131
    sget v0, Lcom/android/calendar/R$id;->check_out:I

    new-instance v1, Lcom/google/android/calendar/event/screen/LodgingScreen$3;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/LodgingScreen$3;-><init>(Lcom/google/android/calendar/event/screen/LodgingScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 142
    sget v0, Lcom/android/calendar/R$id;->confirmation:I

    new-instance v1, Lcom/google/android/calendar/event/screen/LodgingScreen$4;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/LodgingScreen$4;-><init>(Lcom/google/android/calendar/event/screen/LodgingScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 151
    sget v0, Lcom/android/calendar/R$id;->contact:I

    new-instance v1, Lcom/google/android/calendar/event/screen/LodgingScreen$5;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/LodgingScreen$5;-><init>(Lcom/google/android/calendar/event/screen/LodgingScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 179
    return-void
.end method

.method protected onUpdateSmartMailInfo()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/LodgingScreen;->getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getLodgingReservations()Ljava/util/List;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 46
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/LodgingReservation;

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;

    .line 47
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;

    const-string v1, "reservationNumber"

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/LodgingReservation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 49
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen;->mReservationNumber:Ljava/lang/String;

    .line 53
    :cond_0
    return-void
.end method

.method public updateHeadline()V
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/LodgingReservation;->getLodging()Lcom/google/api/services/calendar/model/Organization;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/LodgingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->stay_at:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;

    .line 74
    invoke-virtual {v4}, Lcom/google/api/services/calendar/model/LodgingReservation;->getLodging()Lcom/google/api/services/calendar/model/Organization;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/calendar/model/Organization;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/screen/LodgingScreen;->setHeadlineTitle(Ljava/lang/String;)V

    .line 75
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
