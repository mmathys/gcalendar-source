.class public Lcom/android/calendar/newapi/screen/EventViewScreenController;
.super Lcom/android/calendar/newapi/screen/ViewScreenController;
.source "EventViewScreenController.java"

# interfaces
.implements Lcom/android/calendar/newapi/commandbar/EventCommandBarController$Callback;
.implements Lcom/android/calendar/newapi/overflow/EventOverflowMenuController$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/screen/ViewScreenController",
        "<",
        "Lcom/android/calendar/newapi/screen/EventViewScreenLoader;",
        "Lcom/android/calendar/timely/TimelineEvent;",
        "Lcom/android/calendar/newapi/model/EventViewScreenData;",
        "Lcom/android/calendar/newapi/commandbar/EventCommandBarController;",
        "Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;",
        ">;",
        "Lcom/android/calendar/newapi/commandbar/EventCommandBarController$Callback;",
        "Lcom/android/calendar/newapi/overflow/EventOverflowMenuController$Callback;"
    }
.end annotation


# instance fields
.field private mDeletePendingResult:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/calendar/api/EventClient$GenericResult;",
            ">;"
        }
    .end annotation
.end field

.field mEventClient:Lcom/google/android/calendar/api/EventClient;

.field private mRsvpUpdatePendingResult:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/calendar/api/EventClient$GenericResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;-><init>()V

    .line 60
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Events:Lcom/google/android/calendar/api/EventClient;

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mEventClient:Lcom/google/android/calendar/api/EventClient;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/newapi/screen/EventViewScreenController;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->onDeleteConfirmed()V

    return-void
.end method

.method public static newInstance(Lcom/android/calendar/timely/TimelineEvent;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Lcom/android/calendar/newapi/screen/ViewScreenController;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/android/calendar/newapi/screen/EventViewScreenController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->prepare(Lcom/android/calendar/newapi/screen/ViewScreenController;Lcom/android/calendar/timely/TimelineEvent;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Lcom/android/calendar/newapi/screen/ViewScreenController;

    move-result-object v0

    return-object v0
.end method

.method private onDeleteConfirmed()V
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mEventClient:Lcom/google/android/calendar/api/EventClient;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/EventViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/calendar/api/EventClient;->delete(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mDeletePendingResult:Lcom/google/android/gms/common/api/PendingResult;

    .line 211
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mDeletePendingResult:Lcom/google/android/gms/common/api/PendingResult;

    new-instance v1, Lcom/android/calendar/newapi/screen/EventViewScreenController$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController$2;-><init>(Lcom/android/calendar/newapi/screen/EventViewScreenController;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 223
    return-void
.end method


# virtual methods
.method protected bridge synthetic createCommandBarController()Lcom/android/calendar/newapi/commandbar/CommandBarController;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->createCommandBarController()Lcom/android/calendar/newapi/commandbar/EventCommandBarController;

    move-result-object v0

    return-object v0
.end method

.method protected createCommandBarController()Lcom/android/calendar/newapi/commandbar/EventCommandBarController;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/android/calendar/newapi/commandbar/EventCommandBarController;

    invoke-direct {v0, p0}, Lcom/android/calendar/newapi/commandbar/EventCommandBarController;-><init>(Lcom/android/calendar/newapi/commandbar/EventCommandBarController$Callback;)V

    return-object v0
.end method

.method public bridge synthetic createLoader()Lcom/android/calendar/newapi/common/Loader;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->createLoader()Lcom/android/calendar/newapi/screen/EventViewScreenLoader;

    move-result-object v0

    return-object v0
.end method

.method public createLoader()Lcom/android/calendar/newapi/screen/EventViewScreenLoader;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v1, v2

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    if-nez v0, :cond_1

    .line 124
    :goto_1
    new-instance v0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;

    .line 125
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getTimelineItem()Lcom/android/calendar/timely/TimelineEvent;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineEvent;Lcom/google/android/calendar/api/Event;Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;)V

    .line 124
    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/EventViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/EventViewScreenData;->getCalendarListEntry()Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    move-result-object v2

    goto :goto_1
.end method

.method protected createOverflowMenuController()Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;

    invoke-direct {v0, p0}, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;-><init>(Lcom/android/calendar/newapi/overflow/EventOverflowMenuController$Callback;)V

    return-object v0
.end method

.method protected bridge synthetic createOverflowMenuController()Lcom/android/calendar/newapi/overflow/OverflowMenuController;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->createOverflowMenuController()Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;

    move-result-object v0

    return-object v0
.end method

.method protected createSegments(Lcom/android/calendar/newapi/screen/SegmentViews;)V
    .locals 5

    .prologue
    .line 104
    new-instance v1, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;-><init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/ScreenData;)V

    iput-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->headerView:Landroid/view/View;

    .line 105
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-direct {v2, v3, v0}, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;-><init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/EventHolder;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;

    .line 107
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/calendar/newapi/segment/location/LocationViewSegment;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/calendar/newapi/model/EventHolder;)V

    .line 106
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calendar/newapi/segment/room/RoomViewSegment;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-direct {v2, v3, v0}, Lcom/android/calendar/newapi/segment/room/RoomViewSegment;-><init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/EventHolder;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-direct {v2, v3, v0}, Lcom/android/calendar/newapi/segment/notification/EventNotificationViewSegment;-><init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/EventHolder;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-direct {v2, v3, v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeViewSegment;-><init>(Landroid/app/Activity;Lcom/android/calendar/newapi/model/EventHolder;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/calendar/newapi/segment/note/NoteViewSegment;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/calendar/newapi/model/EventHolder;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calendar/newapi/segment/attachment/AttachmentViewSegment;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-direct {v2, v3, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentViewSegment;-><init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/EventHolder;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-direct {v2, v3, v0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;-><init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/VisibilityHolder;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calendar/newapi/segment/calendar/CalendarViewSegment;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-direct {v2, v3, v0}, Lcom/android/calendar/newapi/segment/calendar/CalendarViewSegment;-><init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/CalendarHolder;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method protected createViewScreen()Lcom/android/calendar/newapi/screen/ViewScreen;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getAnalyticsCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget v0, Lcom/android/calendar/R$string;->analytics_category_event:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAnalyticsViewType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "event"

    return-object v0
.end method

.method protected getPrimesLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "EventView"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->event_info_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/newapi/screen/ViewScreenController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDeleteClicked()V
    .locals 3

    .prologue
    .line 184
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/calendar/R$string;->delete_this_event_title:I

    .line 185
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/calendar/newapi/screen/EventViewScreenController$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController$1;-><init>(Lcom/android/calendar/newapi/screen/EventViewScreenController;)V

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 193
    return-void
.end method

.method public onEmailGuestsClicked()V
    .locals 6

    .prologue
    .line 200
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/calendar/alerts/QuickResponseActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "eventId"

    .line 203
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/EventViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getOriginalLocalId()J

    move-result-wide v4

    .line 201
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->startActivity(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method public onLoadEventClicked()V
    .locals 2

    .prologue
    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 179
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/EventViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->newInstance(Lcom/google/android/calendar/api/Event;)Lcom/android/calendar/newapi/screen/EventEditScreenController;

    move-result-object v0

    .line 177
    invoke-static {v1, v0}, Lcom/android/calendar/newapi/screen/HostDialog;->showWithChildFragment(Landroid/app/FragmentManager;Lcom/android/calendar/newapi/screen/HostedFragment;)V

    .line 180
    return-void
.end method

.method public onRsvpClicked(I)V
    .locals 4

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/EventViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v1

    .line 228
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/EventViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    .line 229
    invoke-static {v1, v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->getCurrentAttendee(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/util/List;)Lcom/google/android/calendar/api/attendee/Attendee;

    move-result-object v1

    .line 230
    sget-object v2, Lcom/google/android/calendar/api/CalendarApi;->EventFactory:Lcom/google/android/calendar/api/EventFactory;

    .line 231
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/EventViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/calendar/api/EventFactory;->modifyEvent(Lcom/google/android/calendar/api/Event;)Lcom/google/android/calendar/api/EventModifications;

    move-result-object v0

    .line 232
    new-instance v2, Lcom/google/android/calendar/api/attendee/Response$Builder;

    invoke-direct {v2}, Lcom/google/android/calendar/api/attendee/Response$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/android/calendar/api/attendee/Response$Builder;->setStatus(I)Lcom/google/android/calendar/api/attendee/Response$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/calendar/api/attendee/Response$Builder;->build()Lcom/google/android/calendar/api/attendee/Response;

    move-result-object v2

    .line 233
    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getAttendeeModifications()Lcom/google/android/calendar/api/attendee/AttendeeModifications;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/google/android/calendar/api/attendee/AttendeeModifications;->setAttendeeResponse(Lcom/google/android/calendar/api/attendee/Attendee;Lcom/google/android/calendar/api/attendee/Response;)V

    .line 234
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mEventClient:Lcom/google/android/calendar/api/EventClient;

    invoke-interface {v1, v0}, Lcom/google/android/calendar/api/EventClient;->update(Lcom/google/android/calendar/api/EventModifications;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mRsvpUpdatePendingResult:Lcom/google/android/gms/common/api/PendingResult;

    .line 235
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mRsvpUpdatePendingResult:Lcom/google/android/gms/common/api/PendingResult;

    new-instance v2, Lcom/android/calendar/newapi/screen/EventViewScreenController$3;

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/newapi/screen/EventViewScreenController$3;-><init>(Lcom/android/calendar/newapi/screen/EventViewScreenController;Lcom/google/android/calendar/api/EventModifications;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 246
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->onStart()V

    .line 86
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->onStop()V

    .line 92
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mDeletePendingResult:Lcom/google/android/gms/common/api/PendingResult;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mDeletePendingResult:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mRsvpUpdatePendingResult:Lcom/google/android/gms/common/api/PendingResult;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController;->mRsvpUpdatePendingResult:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    .line 98
    :cond_1
    return-void
.end method

.method protected showEditScreen()V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 169
    instance-of v1, v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    if-eqz v1, :cond_0

    .line 170
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    .line 171
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getTimelineItem()Lcom/android/calendar/timely/TimelineEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;->onInfoDoEdit(Ljava/lang/Object;)V

    .line 173
    :cond_0
    return-void
.end method
