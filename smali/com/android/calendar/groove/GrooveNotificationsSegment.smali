.class public Lcom/android/calendar/groove/GrooveNotificationsSegment;
.super Lcom/android/calendar/event/segment/ReminderSegment;
.source "GrooveNotificationsSegment.java"


# instance fields
.field private mSecondaryText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/segment/ReminderSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ReminderSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method private getSmartNotificationsString(Lcom/android/calendar/groove/TimelineGroove;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/android/calendar/groove/TimelineGroove;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/calendar/groove/TimelineGroove;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveNotificationsSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_1

    sget v0, Lcom/android/calendar/R$string;->smart_notifications_on:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :cond_1
    sget v0, Lcom/android/calendar/R$string;->smart_notifications_off:I

    goto :goto_1
.end method


# virtual methods
.method protected alwaysShowSegment(Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->isModifiableGroove()Z

    move-result v0

    return v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/android/calendar/R$layout;->segment_groove_notifications:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    sget v0, Lcom/android/calendar/R$id;->secondary_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveNotificationsSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveNotificationsSegment;->mSecondaryText:Landroid/widget/TextView;

    .line 28
    return-void
.end method

.method public onRefreshModel()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveNotificationsSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/android/calendar/event/CalendarEventModel;->isModifiableGroove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-super {p0}, Lcom/android/calendar/event/segment/ReminderSegment;->onRefreshModel()V

    .line 56
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 44
    invoke-direct {p0, v0}, Lcom/android/calendar/groove/GrooveNotificationsSegment;->getSmartNotificationsString(Lcom/android/calendar/groove/TimelineGroove;)Ljava/lang/String;

    move-result-object v2

    .line 45
    iget-boolean v0, v0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 46
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveNotificationsSegment;->mSecondaryText:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 47
    if-eqz v0, :cond_2

    .line 50
    invoke-super {p0}, Lcom/android/calendar/event/segment/ReminderSegment;->onRefreshModel()V

    .line 51
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveNotificationsSegment;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveNotificationsSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveNotificationsSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
