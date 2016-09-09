.class public final Lcom/google/android/calendar/event/screen/TicketedEventScreen;
.super Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;
.source "TicketedEventScreen.java"

# interfaces
.implements Lcom/google/android/calendar/event/segment/Event2Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;
    }
.end annotation


# instance fields
.field private mEventReservation:Lcom/google/api/services/calendar/model/EventReservation;

.field private mReservationNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/android/calendar/R$layout;->screen_ticketed_event:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;-><init>(ILcom/android/calendar/event/CalendarEventModel;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/screen/TicketedEventScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->mReservationNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/event/screen/TicketedEventScreen;)Lcom/google/api/services/calendar/model/EventReservation;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->mEventReservation:Lcom/google/api/services/calendar/model/EventReservation;

    return-object v0
.end method


# virtual methods
.method public getEvent2()Lcom/google/api/services/calendar/model/Event2;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->mEventReservation:Lcom/google/api/services/calendar/model/EventReservation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventReservation;->getEvent()Lcom/google/api/services/calendar/model/Event2;

    move-result-object v0

    return-object v0
.end method

.method protected getSmartmailImage()Lcom/google/api/services/calendar/model/Image;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->getEvent2()Lcom/google/api/services/calendar/model/Event2;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event2;->getImage()Lcom/google/api/services/calendar/model/Image;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 79
    sget v0, Lcom/android/calendar/R$id;->ticket_info:I

    invoke-static {p1, v0, p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 81
    sget v0, Lcom/android/calendar/R$id;->contact:I

    new-instance v1, Lcom/google/android/calendar/event/screen/TicketedEventScreen$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/TicketedEventScreen$1;-><init>(Lcom/google/android/calendar/event/screen/TicketedEventScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 102
    sget v0, Lcom/android/calendar/R$id;->confirmation:I

    new-instance v1, Lcom/google/android/calendar/event/screen/TicketedEventScreen$2;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/TicketedEventScreen$2;-><init>(Lcom/google/android/calendar/event/screen/TicketedEventScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 111
    sget v0, Lcom/android/calendar/R$id;->where:I

    new-instance v1, Lcom/google/android/calendar/event/screen/TicketedEventScreen$3;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/TicketedEventScreen$3;-><init>(Lcom/google/android/calendar/event/screen/TicketedEventScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 131
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    sget v1, Lcom/android/calendar/R$id;->seating:I

    new-instance v2, Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;

    .line 135
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;-><init>(Lcom/google/android/calendar/event/screen/TicketedEventScreen;Landroid/content/res/Resources;)V

    .line 133
    invoke-static {p1, v1, v2}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 137
    :cond_0
    return-void
.end method

.method protected onUpdateSmartMailInfo()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getEventReservations()Ljava/util/List;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 53
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventReservation;

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->mEventReservation:Lcom/google/api/services/calendar/model/EventReservation;

    .line 54
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->mEventReservation:Lcom/google/api/services/calendar/model/EventReservation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventReservation;->getReservationNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->mReservationNumber:Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method
