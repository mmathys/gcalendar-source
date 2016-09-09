.class public Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;
.super Lcom/android/calendar/newapi/overflow/OverflowMenuController;
.source "EventOverflowMenuController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/overflow/EventOverflowMenuController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/overflow/OverflowMenuController",
        "<",
        "Lcom/android/calendar/newapi/overflow/EventOverflowMenuController$Callback;",
        "Lcom/android/calendar/newapi/model/EventViewScreenData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/calendar/newapi/overflow/EventOverflowMenuController$Callback;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/overflow/OverflowMenuController;-><init>(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method private getEmailLabelId(Lcom/android/calendar/newapi/model/EventViewScreenData;)I
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/android/calendar/newapi/model/EventViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/android/calendar/newapi/model/EventViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attendee/Attendee;

    .line 89
    iget-object v0, v0, Lcom/google/android/calendar/api/attendee/Attendee;->attendeeDescriptor:Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    iget-object v0, v0, Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;->email:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget v0, Lcom/android/calendar/R$string;->email_guests_label:I

    .line 96
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowDeleteItem(Lcom/android/calendar/newapi/model/EventViewScreenData;)Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/android/calendar/newapi/model/EventViewScreenData;->isEditable()Z

    move-result v0

    return v0
.end method

.method private shouldShowLoadEventItem(Lcom/android/calendar/newapi/model/EventViewScreenData;)Z
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/android/calendar/newapi/model/EventViewScreenData;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExperimentalOptionsEnabler;->isNewViewEditDevelopmentEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMenuResourceId()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/android/calendar/R$menu;->event_view_overflow:I

    return v0
.end method

.method protected onMenuItemClicked(Landroid/view/MenuItem;Lcom/android/calendar/newapi/overflow/EventOverflowMenuController$Callback;)V
    .locals 2

    .prologue
    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->action_delete:I

    if-ne v0, v1, :cond_1

    .line 70
    invoke-interface {p2}, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController$Callback;->onDeleteClicked()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->action_email_guests:I

    if-ne v0, v1, :cond_2

    .line 72
    invoke-interface {p2}, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController$Callback;->onEmailGuestsClicked()V

    goto :goto_0

    .line 73
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->action_load_event:I

    if-ne v0, v1, :cond_0

    .line 74
    invoke-interface {p2}, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController$Callback;->onLoadEventClicked()V

    goto :goto_0
.end method

.method protected bridge synthetic onMenuItemClicked(Landroid/view/MenuItem;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p2, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController$Callback;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;->onMenuItemClicked(Landroid/view/MenuItem;Lcom/android/calendar/newapi/overflow/EventOverflowMenuController$Callback;)V

    return-void
.end method

.method protected onModelChanged(Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;Lcom/android/calendar/newapi/model/EventViewScreenData;)V
    .locals 4

    .prologue
    .line 42
    invoke-interface {p1}, Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 45
    sget v0, Lcom/android/calendar/R$id;->action_delete:I

    invoke-direct {p0, p2}, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;->shouldShowDeleteItem(Lcom/android/calendar/newapi/model/EventViewScreenData;)Z

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;->setEnabled(Landroid/view/Menu;IZ)V

    .line 48
    sget v0, Lcom/android/calendar/R$id;->action_load_event:I

    invoke-direct {p0, p2}, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;->shouldShowLoadEventItem(Lcom/android/calendar/newapi/model/EventViewScreenData;)Z

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;->setEnabled(Landroid/view/Menu;IZ)V

    .line 51
    invoke-direct {p0, p2}, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;->getEmailLabelId(Lcom/android/calendar/newapi/model/EventViewScreenData;)I

    move-result v2

    .line 52
    sget v3, Lcom/android/calendar/R$id;->action_email_guests:I

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v3, v0}, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;->setEnabled(Landroid/view/Menu;IZ)V

    .line 53
    if-eqz v2, :cond_0

    .line 54
    sget v0, Lcom/android/calendar/R$id;->action_email_guests:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;->setLabel(Landroid/view/Menu;II)V

    .line 56
    :cond_0
    return-void

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onModelChanged(Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p2, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/overflow/EventOverflowMenuController;->onModelChanged(Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;Lcom/android/calendar/newapi/model/EventViewScreenData;)V

    return-void
.end method
