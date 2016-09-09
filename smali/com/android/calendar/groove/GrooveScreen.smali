.class public Lcom/android/calendar/groove/GrooveScreen;
.super Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;
.source "GrooveScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCommandBar:Lcom/android/calendar/event/EventInfoFragment$CommandBar;

.field private mDeferView:Landroid/widget/TextView;

.field private mMarkAsDoneView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/groove/TimelineGroove;)V
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/android/calendar/R$layout;->screen_groove:I

    invoke-direct {p0, v0, p1}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;-><init>(ILcom/android/calendar/timely/TimelineItem;)V

    .line 29
    return-void
.end method

.method private updateCommandBar()V
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScreen;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 57
    invoke-virtual {v0}, Lcom/android/calendar/groove/TimelineGroove;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveScreen;->mMarkAsDoneView:Landroid/widget/TextView;

    iget-boolean v1, v0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/calendar/R$string;->action_mark_as_not_done:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScreen;->mDeferView:Landroid/widget/TextView;

    iget-boolean v0, v0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 62
    :cond_0
    return-void

    .line 59
    :cond_1
    sget v1, Lcom/android/calendar/R$string;->action_mark_as_done:I

    goto :goto_0

    .line 60
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScreen;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/android/calendar/R$id;->action_defer:I

    if-ne v4, v5, :cond_1

    .line 79
    iget-object v1, v0, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    sget v2, Lcom/android/calendar/R$string;->analytics_label_info_bubble:I

    .line 80
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v3, v1, v0, v2}, Lcom/android/calendar/alerts/HabitsIntentService;->createDeferIntent(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;Lcom/android/calendar/groove/TimelineGroove;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    :goto_0
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 98
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScreen;->mCommandBar:Lcom/android/calendar/event/EventInfoFragment$CommandBar;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->doDismissScreen()V

    .line 100
    :cond_0
    :goto_1
    return-void

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/android/calendar/R$id;->action_mark_as_done:I

    if-ne v4, v5, :cond_4

    .line 82
    new-instance v2, Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;

    .line 83
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScreen;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;-><init>(Lcom/android/calendar/timely/TimelineItem;I)V

    .line 85
    iget-object v4, p0, Lcom/android/calendar/groove/GrooveScreen;->mCommandBar:Lcom/android/calendar/event/EventInfoFragment$CommandBar;

    invoke-virtual {v4, v2}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->shouldDelayAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScreen;->mCommandBar:Lcom/android/calendar/event/EventInfoFragment$CommandBar;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->doDismissScreen()V

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v0, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    iget-object v4, v4, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 93
    invoke-virtual {v4}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-nez v5, :cond_3

    const/4 v1, 0x1

    :cond_3
    sget v5, Lcom/android/calendar/R$string;->analytics_label_info_bubble:I

    .line 94
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-static {v2, v4, v0, v1, v3}, Lcom/android/calendar/alerts/HabitsIntentService;->createCompleteIntent(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/calendar/groove/TimelineGroove;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method public onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScreen;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    invoke-virtual {v0}, Lcom/android/calendar/groove/TimelineGroove;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget v0, Lcom/android/calendar/R$layout;->groove_info_command_bar:I

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->inflateCommand(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 42
    sget v0, Lcom/android/calendar/R$id;->action_mark_as_done:I

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScreen;->mMarkAsDoneView:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScreen;->mMarkAsDoneView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScreen;->mMarkAsDoneView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget v0, Lcom/android/calendar/R$id;->action_defer:I

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScreen;->mDeferView:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScreen;->mDeferView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScreen;->mDeferView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveScreen;->mCommandBar:Lcom/android/calendar/event/EventInfoFragment$CommandBar;

    .line 51
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveScreen;->updateCommandBar()V

    .line 53
    :cond_0
    return-void
.end method

.method public onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/calendar/groove/TimelineGroove;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveScreen;->setItem(Lcom/android/calendar/timely/TimelineItem;)V

    .line 69
    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 70
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveScreen;->updateCommandBar()V

    .line 71
    return-void
.end method
