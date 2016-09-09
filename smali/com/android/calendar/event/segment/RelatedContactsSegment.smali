.class public Lcom/android/calendar/event/segment/RelatedContactsSegment;
.super Lcom/android/calendar/event/segment/InfoSegmentLayout;
.source "RelatedContactsSegment.java"

# interfaces
.implements Lcom/android/calendar/event/AttendeesView$Delegate;
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;


# instance fields
.field private final mContactsView:Lcom/android/calendar/event/AttendeesView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/event/segment/RelatedContactsSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/segment/RelatedContactsSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/InfoSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget v0, Lcom/android/calendar/R$id;->contacts:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/RelatedContactsSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/AttendeesView;

    iput-object v0, p0, Lcom/android/calendar/event/segment/RelatedContactsSegment;->mContactsView:Lcom/android/calendar/event/AttendeesView;

    .line 49
    iget-object v0, p0, Lcom/android/calendar/event/segment/RelatedContactsSegment;->mContactsView:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/AttendeesView;->setDelegate(Lcom/android/calendar/event/AttendeesView$Delegate;)V

    .line 50
    return-void
.end method


# virtual methods
.method public analyticsActionForShowContactInfo(Lcom/android/calendar/event/AttendeesView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "tap_tagged_contact"

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/calendar/event/segment/RelatedContactsSegment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/android/calendar/R$layout;->segment_related_contacts:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    return-void
.end method

.method public onRefreshModel()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/event/segment/RelatedContactsSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    if-nez v1, :cond_1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/RelatedContactsSegment;->hide()V

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    invoke-interface {v1}, Lcom/android/calendar/event/EventExtras;->getRelatedContacts()Ljava/util/List;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/RelatedContactsSegment;->hide()V

    goto :goto_0

    .line 68
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/event/segment/RelatedContactsSegment;->mContactsView:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v2}, Lcom/android/calendar/event/AttendeesView;->clearAttendees()V

    .line 69
    iget-object v2, p0, Lcom/android/calendar/event/segment/RelatedContactsSegment;->mContactsView:Lcom/android/calendar/event/AttendeesView;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/event/AttendeesView;->addAttendees(Ljava/lang/String;Ljava/util/List;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/RelatedContactsSegment;->show()V

    goto :goto_0
.end method

.method public shouldShowContactInfo(Lcom/android/calendar/event/AttendeesView;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/RelatedContactsSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/segment/RelatedContactsSegment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/android/calendar/event/segment/RelatedContactsSegment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/calendar/Utils;->requestContactsPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/RelatedContactsSegment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not get activity to request permissions."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
