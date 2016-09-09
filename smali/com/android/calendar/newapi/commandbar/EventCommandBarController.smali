.class public Lcom/android/calendar/newapi/commandbar/EventCommandBarController;
.super Lcom/android/calendar/newapi/commandbar/CommandBarController;
.source "EventCommandBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/commandbar/EventCommandBarController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/commandbar/CommandBarController",
        "<",
        "Lcom/android/calendar/newapi/commandbar/EventCommandBarController$Callback;",
        "Lcom/android/calendar/newapi/model/EventViewScreenData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/calendar/newapi/commandbar/EventCommandBarController$Callback;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/commandbar/CommandBarController;-><init>(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method private hideCommandBar(Lcom/android/calendar/newapi/commandbar/CommandBar;)V
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->setVisibility(I)V

    .line 89
    return-void
.end method


# virtual methods
.method protected getActionsLayout()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/android/calendar/R$layout;->newapi_event_command_bar_actions:I

    return v0
.end method

.method protected onCommandBarActionClick(Lcom/android/calendar/newapi/commandbar/EventCommandBarController$Callback;I)V
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/android/calendar/R$id;->action_yes:I

    if-ne p2, v0, :cond_1

    .line 36
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/calendar/newapi/commandbar/EventCommandBarController$Callback;->onRsvpClicked(I)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->action_no:I

    if-ne p2, v0, :cond_2

    .line 38
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/android/calendar/newapi/commandbar/EventCommandBarController$Callback;->onRsvpClicked(I)V

    goto :goto_0

    .line 39
    :cond_2
    sget v0, Lcom/android/calendar/R$id;->action_maybe:I

    if-ne p2, v0, :cond_0

    .line 40
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/calendar/newapi/commandbar/EventCommandBarController$Callback;->onRsvpClicked(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onCommandBarActionClick(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/android/calendar/newapi/commandbar/EventCommandBarController$Callback;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/commandbar/EventCommandBarController;->onCommandBarActionClick(Lcom/android/calendar/newapi/commandbar/EventCommandBarController$Callback;I)V

    return-void
.end method

.method protected onModelChanged(Lcom/android/calendar/newapi/commandbar/CommandBar;Lcom/android/calendar/newapi/model/EventViewScreenData;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 53
    invoke-virtual {p2}, Lcom/android/calendar/newapi/model/EventViewScreenData;->getCalendarListEntry()Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;->getAccessLevel()Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->hasWriteAccess(Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/commandbar/EventCommandBarController;->hideCommandBar(Lcom/android/calendar/newapi/commandbar/CommandBar;)V

    .line 85
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-virtual {p2}, Lcom/android/calendar/newapi/model/EventViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attendee/Attendee;

    .line 62
    sget-object v5, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->GUEST_FILTER:Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$Filter;

    invoke-interface {v5, v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$Filter;->isValidType(Lcom/google/android/calendar/api/attendee/Attendee;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_3

    .line 68
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/commandbar/EventCommandBarController;->hideCommandBar(Lcom/android/calendar/newapi/commandbar/CommandBar;)V

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p2}, Lcom/android/calendar/newapi/model/EventViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    .line 73
    invoke-static {v0, v3}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->getCurrentAttendee(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/util/List;)Lcom/google/android/calendar/api/attendee/Attendee;

    move-result-object v3

    .line 74
    if-nez v3, :cond_4

    .line 75
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/commandbar/EventCommandBarController;->hideCommandBar(Lcom/android/calendar/newapi/commandbar/CommandBar;)V

    goto :goto_0

    .line 78
    :cond_4
    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 79
    sget v4, Lcom/android/calendar/R$id;->action_yes:I

    iget-object v0, v3, Lcom/google/android/calendar/api/attendee/Attendee;->response:Lcom/google/android/calendar/api/attendee/Response;

    iget v0, v0, Lcom/google/android/calendar/api/attendee/Response;->status:I

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {p1, v4, v0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->setActionSelectionState(IZ)V

    .line 81
    sget v4, Lcom/android/calendar/R$id;->action_no:I

    iget-object v0, v3, Lcom/google/android/calendar/api/attendee/Attendee;->response:Lcom/google/android/calendar/api/attendee/Response;

    iget v0, v0, Lcom/google/android/calendar/api/attendee/Response;->status:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {p1, v4, v0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->setActionSelectionState(IZ)V

    .line 83
    sget v0, Lcom/android/calendar/R$id;->action_maybe:I

    iget-object v3, v3, Lcom/google/android/calendar/api/attendee/Attendee;->response:Lcom/google/android/calendar/api/attendee/Response;

    iget v3, v3, Lcom/google/android/calendar/api/attendee/Response;->status:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    :goto_4
    invoke-virtual {p1, v0, v1}, Lcom/android/calendar/newapi/commandbar/CommandBar;->setActionSelectionState(IZ)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 79
    goto :goto_2

    :cond_6
    move v0, v2

    .line 81
    goto :goto_3

    :cond_7
    move v1, v2

    .line 83
    goto :goto_4
.end method

.method protected bridge synthetic onModelChanged(Lcom/android/calendar/newapi/commandbar/CommandBar;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/commandbar/EventCommandBarController;->onModelChanged(Lcom/android/calendar/newapi/commandbar/CommandBar;Lcom/android/calendar/newapi/model/EventViewScreenData;)V

    return-void
.end method

.method protected setupCommandBar(Lcom/android/calendar/newapi/commandbar/CommandBar;)V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/android/calendar/newapi/commandbar/CommandBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->response_prompt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->setDescription(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method
