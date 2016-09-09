.class public Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;
.super Lcom/android/calendar/newapi/segment/common/SegmentController;
.source "GrooveNotificationEditSegmentController.java"

# interfaces
.implements Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;
.implements Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener;
.implements Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/SegmentController;",
        "Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;",
        "Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment$Listener;"
    }
.end annotation


# instance fields
.field private mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

.field private mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

.field private mNotificationChoiceCreator:Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;

.field private mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

.field private mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

.field private mView:Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SegmentController;-><init>()V

    return-void
.end method

.method private areSmartNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v1

    .line 208
    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, v1, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    if-nez v2, :cond_2

    iget-boolean v1, v1, Lcom/google/android/calendar/api/HabitReminders;->enableRecommit:Z

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private enableSmartNotifications(Z)V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v1

    .line 218
    if-nez v1, :cond_0

    .line 219
    new-instance v0, Lcom/google/android/calendar/api/HabitReminders;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p1}, Lcom/google/android/calendar/api/HabitReminders;-><init>(ZLjava/lang/Integer;ZZ)V

    .line 224
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v1, v0}, Lcom/google/android/calendar/api/HabitModifications;->setReminders(Lcom/google/android/calendar/api/HabitReminders;)Lcom/google/android/calendar/api/HabitModifications;

    .line 225
    return-void

    .line 221
    :cond_0
    new-instance v0, Lcom/google/android/calendar/api/HabitReminders;

    iget-boolean v2, v1, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    iget-object v1, v1, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    invoke-direct {v0, v2, v1, p1, p1}, Lcom/google/android/calendar/api/HabitReminders;-><init>(ZLjava/lang/Integer;ZZ)V

    goto :goto_0
.end method

.method private getCurrentCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    iget-object v2, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 233
    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {v1, v2, v0}, Lcom/android/calendar/newapi/model/CalendarStore;->getImmutableCalendar(Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentNotification()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    if-eqz v1, :cond_1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->getCurrentCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/model/NotificationStore;->getDefaultNotificationMinutes(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Ljava/lang/Integer;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;Lcom/google/android/calendar/api/HabitModifications;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/android/calendar/newapi/model/NotificationStore;)Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;
    .locals 2

    .prologue
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;

    .line 55
    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;-><init>()V

    .line 57
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 59
    :cond_0
    invoke-direct {v0, p2}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->setView(Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;)V

    .line 60
    invoke-direct {v0, p3, p4, p5}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->setData(Lcom/google/android/calendar/api/HabitModifications;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/android/calendar/newapi/model/NotificationStore;)V

    .line 61
    return-object v0
.end method

.method public static newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;
    .locals 2

    .prologue
    .line 42
    sget v0, Lcom/android/calendar/R$layout;->newapi_groove_notifications_edit_segment:I

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;

    .line 42
    return-object v0
.end method

.method private setData(Lcom/google/android/calendar/api/HabitModifications;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/android/calendar/newapi/model/NotificationStore;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    .line 72
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    .line 73
    iput-object p3, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

    .line 74
    return-void
.end method

.method private setNotification(Ljava/lang/Integer;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 167
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    .line 168
    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/google/android/calendar/api/HabitReminders;

    const/4 v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/google/android/calendar/api/HabitReminders;-><init>(ZLjava/lang/Integer;ZZ)V

    .line 171
    :cond_0
    if-nez p1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    new-instance v2, Lcom/google/android/calendar/api/HabitReminders;

    const/4 v3, 0x0

    iget-boolean v4, v0, Lcom/google/android/calendar/api/HabitReminders;->enableRecommit:Z

    iget-boolean v0, v0, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    invoke-direct {v2, v5, v3, v4, v0}, Lcom/google/android/calendar/api/HabitReminders;-><init>(ZLjava/lang/Integer;ZZ)V

    invoke-interface {v1, v2}, Lcom/google/android/calendar/api/HabitModifications;->setReminders(Lcom/google/android/calendar/api/HabitReminders;)Lcom/google/android/calendar/api/HabitModifications;

    .line 181
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->updateNotificationText()V

    .line 182
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    new-instance v2, Lcom/google/android/calendar/api/HabitReminders;

    iget-boolean v3, v0, Lcom/google/android/calendar/api/HabitReminders;->enableRecommit:Z

    iget-boolean v0, v0, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    invoke-direct {v2, v5, p1, v3, v0}, Lcom/google/android/calendar/api/HabitReminders;-><init>(ZLjava/lang/Integer;ZZ)V

    invoke-interface {v1, v2}, Lcom/google/android/calendar/api/HabitModifications;->setReminders(Lcom/google/android/calendar/api/HabitReminders;)Lcom/google/android/calendar/api/HabitModifications;

    goto :goto_0
.end method

.method private setView(Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;

    .line 66
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->setListener(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method private showCustomNotificationDialog()V
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x0

    sget v1, Lcom/android/calendar/R$string;->groove_edit_default_allowed_notifications:I

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 138
    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/CustomNotificationDialog;->newInstance(ZLjava/lang/String;Z)Lcom/android/calendar/event/CustomNotificationDialog;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p0}, Lcom/android/calendar/event/CustomNotificationDialog;->setOnNotificationSetListener(Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CustomNotificationDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/CustomNotificationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private updateNotificationText()V
    .locals 3

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->getCurrentNotification()Ljava/lang/Integer;

    move-result-object v0

    .line 186
    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->setNoNotification()V

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/ReminderUtils;->constructGrooveNotificationLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->setNotificationText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/segment/common/SegmentController;->onCreate(Landroid/os/Bundle;)V

    .line 79
    new-instance v0, Lcom/android/calendar/event/ReminderUtils;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/event/ReminderUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    .line 80
    new-instance v0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;

    .line 81
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;-><init>(Landroid/content/res/Resources;Lcom/android/calendar/event/ReminderUtils;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mNotificationChoiceCreator:Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;

    .line 86
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "CustomNotificationDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/calendar/event/CustomNotificationDialog;

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, Lcom/android/calendar/event/CustomNotificationDialog;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/CustomNotificationDialog;->setOnNotificationSetListener(Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onCustomNotificationSet(II)V
    .locals 1

    .prologue
    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->setNotification(Ljava/lang/Integer;)V

    .line 151
    return-void
.end method

.method public onDialogItemChosen(Ljava/lang/Integer;I)V
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;->NO_NOTIFICATION_CHOICE:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->setNotification(Ljava/lang/Integer;)V

    .line 135
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-object v0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;->CUSTOM_CHOICE:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->showCustomNotificationDialog()V

    goto :goto_0

    .line 134
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->setNotification(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public bridge synthetic onDialogItemChosen(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->onDialogItemChosen(Ljava/lang/Integer;I)V

    return-void
.end method

.method protected onInitialize()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->areSmartNotificationsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->setSmartNotificationsState(Z)V

    .line 95
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->updateNotificationText()V

    .line 96
    return-void
.end method

.method public onNotificationClicked()V
    .locals 4

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->getCurrentNotification()Ljava/lang/Integer;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->getCurrentCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/newapi/model/NotificationStore;->getNotificationMinutes(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Ljava/util/ArrayList;

    move-result-object v1

    .line 109
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->mNotificationChoiceCreator:Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;

    .line 110
    invoke-virtual {v2, v1, v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationChoiceCreator;->createList(Ljava/util/ArrayList;Ljava/lang/Integer;)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->getLabels()Ljava/util/ArrayList;

    move-result-object v1

    .line 114
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->getValues()Ljava/util/ArrayList;

    move-result-object v2

    .line 115
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->getSelectedPosition()I

    move-result v0

    const/4 v3, -0x1

    .line 112
    invoke-static {v1, v2, v0, p0, v3}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->newIntegerBasedInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/app/Fragment;I)Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SingleChoiceTextDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onSmartNotificationsToggled(Z)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegmentController;->enableSmartNotifications(Z)V

    .line 103
    return-void
.end method
