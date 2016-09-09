.class public Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;
.super Lcom/android/calendar/newapi/segment/common/SegmentController;
.source "CalendarEditSegmentController.java"

# interfaces
.implements Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;
.implements Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment$Listener;


# instance fields
.field private mCalendarModification:Lcom/android/calendar/newapi/model/CalendarModification;

.field private mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

.field private mPrimaryCalendarDisplayName:Ljava/lang/String;

.field private mSelectableCalendars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SegmentController;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Ljava/util/Map;)Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/lang/String;",
            "Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;",
            "Lcom/android/calendar/newapi/model/CalendarModification;",
            "Lcom/android/calendar/newapi/model/CalendarStore;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;)",
            "Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->getInstance(Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Ljava/util/Map;)Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;

    move-result-object v0

    return-object v0
.end method

.method static getInstance(Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Ljava/util/Map;)Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;",
            "Landroid/app/FragmentManager;",
            "Ljava/lang/String;",
            "Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;",
            "Lcom/android/calendar/newapi/model/CalendarModification;",
            "Lcom/android/calendar/newapi/model/CalendarStore;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;)",
            "Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;"
        }
    .end annotation

    .prologue
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;

    .line 56
    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 60
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->setView(Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;)V

    .line 61
    invoke-direct {p0, p4, p5, p6}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->setData(Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Ljava/util/Map;)V

    .line 62
    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;
    .locals 2

    .prologue
    .line 39
    sget v0, Lcom/android/calendar/R$layout;->newapi_calendar_edit_segment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;

    return-object v0
.end method

.method private restoreCalendarPickerDialogSetup()V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 89
    invoke-virtual {v0, p0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->setOnCalendarSelectedListener(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 90
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->mSelectableCalendars:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->setVisibleWriteableCalendarsMap(Ljava/util/Map;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 92
    :cond_0
    return-void
.end method

.method private setData(Lcom/android/calendar/newapi/model/CalendarModification;Lcom/android/calendar/newapi/model/CalendarStore;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/model/CalendarModification;",
            "Lcom/android/calendar/newapi/model/CalendarStore;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->mCalendarModification:Lcom/android/calendar/newapi/model/CalendarModification;

    .line 73
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    .line 74
    iput-object p3, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->mSelectableCalendars:Ljava/util/Map;

    .line 75
    return-void
.end method

.method private setView(Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;)V
    .locals 1

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;

    .line 67
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;->setListener(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method private updateCalendar()V
    .locals 6

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->mCalendarModification:Lcom/android/calendar/newapi/model/CalendarModification;

    invoke-interface {v1}, Lcom/android/calendar/newapi/model/CalendarModification;->getCalendarId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/model/CalendarStore;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->mCalendarModification:Lcom/android/calendar/newapi/model/CalendarModification;

    invoke-interface {v1}, Lcom/android/calendar/newapi/model/CalendarModification;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->mPrimaryCalendarDisplayName:Ljava/lang/String;

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;

    const-string v3, "%s (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegment;->setCalendar(Ljava/lang/String;)V

    .line 137
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/DialogFragment;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    invoke-direct {v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->mSelectableCalendars:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->setVisibleWriteableCalendarsMap(Ljava/util/Map;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 109
    invoke-virtual {v0, p0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->setOnCalendarSelectedListener(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 110
    return-object v0
.end method

.method public onCalendarChanged()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->updateCalendar()V

    .line 103
    return-void
.end method

.method public onCalendarClicked()V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->createDialog()Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onCalendarSelected(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 8

    .prologue
    .line 120
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "CalendarEditSegmentController"

    const-string v1, "Expected AndroidCalendarKey but received invalid one."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 125
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->mCalendarModification:Lcom/android/calendar/newapi/model/CalendarModification;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    new-instance v3, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 126
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getOwnerAccount()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getCalendarId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V

    .line 125
    invoke-interface {v1, v2, v3}, Lcom/android/calendar/newapi/model/CalendarModification;->switchCalendar(Landroid/accounts/Account;Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V

    .line 127
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->updateCalendar()V

    .line 128
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->notifyCalendarChanged()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/segment/common/SegmentController;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sget v0, Lcom/android/calendar/R$string;->primary_calendar_display_name:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->mPrimaryCalendarDisplayName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method protected onInitialize()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->updateCalendar()V

    .line 97
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/calendar/CalendarEditSegmentController;->restoreCalendarPickerDialogSetup()V

    .line 98
    return-void
.end method
