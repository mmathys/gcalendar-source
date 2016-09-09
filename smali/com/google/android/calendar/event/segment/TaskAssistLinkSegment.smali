.class public Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;
.super Lcom/android/calendar/event/segment/ClickableSegment;
.source "TaskAssistLinkSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment$TaskAssistSegmentProvider;
    }
.end annotation


# instance fields
.field private mHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ClickableSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method


# virtual methods
.method protected logClick()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->mHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->analytics_category_event_action:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->logClick(Landroid/content/Context;I)V

    .line 81
    return-void
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/android/calendar/R$layout;->segment_task_assist:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->setOnMeasureView(I)V

    .line 48
    return-void
.end method

.method public onRefreshModel()V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment$TaskAssistSegmentProvider;

    .line 54
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment$TaskAssistSegmentProvider;->getTaskAssistHolder()Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->mHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    .line 56
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->mHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->hide()V

    .line 76
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 62
    sget v0, Lcom/android/calendar/R$id;->value:I

    iget-object v2, p0, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->mHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    invoke-virtual {v2, v1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->getDisplayText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->showText(ILjava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->mHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->getSecondaryDisplayText(Landroid/content/Context;)Landroid/text/SpannableString;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    sget v2, Lcom/android/calendar/R$id;->detail:I

    invoke-virtual {p0, v2, v0}, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->showText(ILjava/lang/CharSequence;)V

    .line 69
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    iget-object v2, p0, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->mHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    invoke-virtual {v2}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->getIconId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    iget-object v2, p0, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->mHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    invoke-virtual {v2, v1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->show()V

    .line 75
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->mHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->isClickable(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->enableAction(Z)V

    goto :goto_0
.end method

.method protected startAction()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->mHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TaskAssistLinkSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->gotoAssist(Landroid/content/Context;)V

    .line 89
    return-void
.end method
