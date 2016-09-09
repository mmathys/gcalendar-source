.class public Lcom/google/android/calendar/event/screen/TaskScreen;
.super Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;
.source "TaskScreen.java"

# interfaces
.implements Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;
    }
.end annotation


# instance fields
.field private mCommandBar:Lcom/android/calendar/event/EventInfoFragment$CommandBar;

.field private mTaskCommandTextView:Landroid/widget/TextView;

.field private mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/task/TimelyTimelineTask;)V
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/android/calendar/R$layout;->screen_task:I

    invoke-direct {p0, v0, p1}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;-><init>(ILcom/android/calendar/timely/TimelineItem;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/TaskScreen;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TimelyTimelineTask;

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/screen/TaskScreen;)Lcom/google/android/calendar/task/TimelyTimelineTask;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/event/screen/TaskScreen;)Lcom/android/calendar/event/EventInfoFragment$CommandBar;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mCommandBar:Lcom/android/calendar/event/EventInfoFragment$CommandBar;

    return-object v0
.end method

.method private static addAssistSegment(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/calendar/task/assist/TaskAssistHolder;)V
    .locals 3

    .prologue
    .line 269
    .line 270
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->segment_task_assist_link_styled:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;

    .line 273
    new-instance v1, Lcom/google/android/calendar/event/screen/TaskScreen$4;

    invoke-direct {v1, p2}, Lcom/google/android/calendar/event/screen/TaskScreen$4;-><init>(Lcom/google/android/calendar/task/assist/TaskAssistHolder;)V

    invoke-static {v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 281
    return-void
.end method

.method private static addCustomIntentSegment(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 299
    invoke-static {p2}, Lcom/android/calendar/Utils;->prepareIntentToOpenLink(Landroid/content/Intent;)V

    .line 300
    new-instance v2, Lcom/google/android/calendar/event/screen/TaskScreen$5;

    invoke-direct {v2, p0, p2}, Lcom/google/android/calendar/event/screen/TaskScreen$5;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 308
    invoke-static/range {v0 .. v6}, Lcom/google/android/calendar/event/segment/CustomActionSegment;->addSegment(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Callable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/calendar/event/segment/CustomActionSegment;

    .line 310
    return-void
.end method

.method private static maybeAddExternalApplicationLinkSegment(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/calendar/task/TimelyTimelineTask;)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 216
    instance-of v0, p2, Lcom/google/android/calendar/task/ArpTimelineTask;

    if-nez v0, :cond_0

    move v0, v1

    .line 257
    :goto_0
    return v0

    :cond_0
    move-object v0, p2

    .line 219
    check-cast v0, Lcom/google/android/calendar/task/ArpTimelineTask;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpTimelineTask;->getExternalApplicationLink()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;->getApplication()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    .line 221
    goto :goto_0

    .line 224
    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;->getApplication()Ljava/lang/Integer;

    move-result-object v2

    .line 225
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;->getId()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object v6, v5

    move-object v4, v5

    move v3, v1

    move-object v2, v5

    .line 251
    :goto_1
    if-eqz v2, :cond_3

    move-object v0, p0

    move-object v1, p1

    .line 252
    invoke-static/range {v0 .. v6}, Lcom/google/android/calendar/event/screen/TaskScreen;->addCustomIntentSegment(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/calendar/task/TimelyTimelineTask;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/google/android/calendar/event/PackageUtils;->getInboxIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 234
    sget v3, Lcom/android/calendar/R$drawable;->ic_email:I

    .line 235
    sget v0, Lcom/android/calendar/R$string;->view_in_inbox:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 236
    const-string v6, "view_in_inbox"

    goto :goto_1

    .line 239
    :pswitch_2
    invoke-static {v0}, Lcom/google/android/calendar/event/PackageUtils;->getKeepIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 240
    sget v3, Lcom/android/calendar/R$drawable;->quantum_ic_drive_keep_grey600_24:I

    .line 241
    sget v0, Lcom/android/calendar/R$string;->view_in_keep:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 242
    const-string v6, "view_in_keep"

    goto :goto_1

    :cond_3
    move v0, v1

    .line 257
    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateCommandBar()V
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mTaskCommandTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget v0, Lcom/android/calendar/R$string;->action_mark_as_not_done:I

    .line 154
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 156
    return-void

    .line 155
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->action_mark_as_done:I

    goto :goto_0
.end method


# virtual methods
.method public onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/TaskScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mCommandBar:Lcom/android/calendar/event/EventInfoFragment$CommandBar;

    .line 65
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mCommandBar:Lcom/android/calendar/event/EventInfoFragment$CommandBar;

    sget v2, Lcom/android/calendar/R$layout;->command_task:I

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->inflateCommand(I)V

    .line 66
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mCommandBar:Lcom/android/calendar/event/EventInfoFragment$CommandBar;

    sget v2, Lcom/android/calendar/R$id;->task_action:I

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mTaskCommandTextView:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mCommandBar:Lcom/android/calendar/event/EventInfoFragment$CommandBar;

    sget v2, Lcom/android/calendar/R$id;->task_snooze:I

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    invoke-static {v1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    iget-object v3, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mTaskCommandTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/google/android/calendar/event/screen/TaskScreen;->updateCommandBar()V

    .line 74
    iget-object v2, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mTaskCommandTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/google/android/calendar/event/screen/TaskScreen$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/calendar/event/screen/TaskScreen$1;-><init>(Lcom/google/android/calendar/event/screen/TaskScreen;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget-object v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

    invoke-virtual {v2, v1}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    new-instance v2, Lcom/google/android/calendar/event/screen/TaskScreen$2;

    invoke-direct {v2, p0, v1}, Lcom/google/android/calendar/event/screen/TaskScreen$2;-><init>(Lcom/google/android/calendar/event/screen/TaskScreen;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 107
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 3

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 186
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 187
    if-nez v1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 191
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->when:I

    invoke-static {p1, v0, p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 193
    sget v0, Lcom/android/calendar/R$id;->account:I

    new-instance v2, Lcom/google/android/calendar/event/screen/TaskScreen$3;

    invoke-direct {v2, p0}, Lcom/google/android/calendar/event/screen/TaskScreen$3;-><init>(Lcom/google/android/calendar/event/screen/TaskScreen;)V

    invoke-static {p1, v0, v2}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 202
    sget v0, Lcom/android/calendar/R$id;->external_info:I

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;

    .line 202
    invoke-static {v1, v0, v2}, Lcom/google/android/calendar/event/screen/TaskScreen;->maybeAddExternalApplicationLinkSegment(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/calendar/task/TimelyTimelineTask;)Z

    goto :goto_0
.end method

.method public onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/calendar/task/TimelyTimelineTask;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/screen/TaskScreen;->setItem(Lcom/android/calendar/timely/TimelineItem;)V

    .line 162
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/TaskScreen;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TimelyTimelineTask;

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;

    .line 164
    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 165
    invoke-direct {p0}, Lcom/google/android/calendar/event/screen/TaskScreen;->updateCommandBar()V

    .line 168
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/TaskScreen;->getView()Landroid/view/View;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 170
    sget v2, Lcom/android/calendar/R$id;->assist_info:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 171
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 172
    iget-object v2, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;

    .line 173
    invoke-virtual {v2}, Lcom/google/android/calendar/task/TimelyTimelineTask;->getTaskAssistanceProtoBytes()[B

    move-result-object v2

    .line 172
    invoke-static {v2}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->createTaskAssistHolder([B)Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    move-result-object v2

    .line 174
    if-eqz v2, :cond_1

    .line 175
    invoke-static {v1, v0, v2}, Lcom/google/android/calendar/event/screen/TaskScreen;->addAssistSegment(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/calendar/task/assist/TaskAssistHolder;)V

    .line 177
    :cond_1
    return-void
.end method

.method public onTaskSnoozeCancelled()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onTaskSnoozeStart()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen;->mCommandBar:Lcom/android/calendar/event/EventInfoFragment$CommandBar;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->doDismissScreen()V

    .line 114
    return-void
.end method

.method public onTaskSnoozeSuccess()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method
