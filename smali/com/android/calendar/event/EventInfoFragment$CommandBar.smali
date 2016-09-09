.class public Lcom/android/calendar/event/EventInfoFragment$CommandBar;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommandBar"
.end annotation


# instance fields
.field private final mCommandBarView:Landroid/view/ViewGroup;

.field private final mCommandsGroup:Landroid/view/ViewGroup;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 4549
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4550
    # getter for: Lcom/android/calendar/event/EventInfoFragment;->COMMAND_BAR_ID:I
    invoke-static {}, Lcom/android/calendar/event/EventInfoFragment;->access$5000()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->mCommandBarView:Landroid/view/ViewGroup;

    .line 4552
    # getter for: Lcom/android/calendar/event/EventInfoFragment;->COMMAND_GROUP_ID:I
    invoke-static {}, Lcom/android/calendar/event/EventInfoFragment;->access$5100()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->mCommandsGroup:Landroid/view/ViewGroup;

    .line 4553
    iput-object p3, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 4554
    return-void
.end method

.method private moveTraversalAfter(Landroid/view/ViewGroup;I)I
    .locals 5

    .prologue
    .line 4597
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 4598
    const/4 v0, 0x0

    move v3, v0

    move v1, p2

    :goto_0
    if-ge v3, v4, :cond_2

    .line 4599
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4600
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 4598
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 4604
    :cond_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 4605
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->moveTraversalAfter(Landroid/view/ViewGroup;I)I

    move-result v0

    goto :goto_1

    .line 4607
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    .line 4608
    if-lez v2, :cond_3

    .line 4609
    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    move v0, v2

    .line 4610
    goto :goto_1

    .line 4614
    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 4618
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->getCommandsGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4619
    return-void
.end method

.method public doDismissScreen()V
    .locals 1

    .prologue
    .line 4626
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->doDismissScreen()V

    .line 4627
    return-void
.end method

.method public finalizeCommandsGroup()V
    .locals 2

    .prologue
    .line 4571
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->mCommandsGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4572
    if-nez v0, :cond_1

    .line 4573
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->mCommandBarView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4586
    :cond_0
    :goto_0
    return-void

    .line 4575
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->mCommandBarView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4576
    invoke-static {}, Lcom/android/calendar/Utils;->isLollipopMr1OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4579
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerCanModify:Z

    if-eqz v0, :cond_2

    .line 4580
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->mCommandsGroup:Landroid/view/ViewGroup;

    sget v1, Lcom/android/calendar/R$id;->info_action_edit_hit:I

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->moveTraversalAfter(Landroid/view/ViewGroup;I)I

    goto :goto_0

    .line 4582
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->mCommandsGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, v1, Lcom/android/calendar/event/EventInfoFragment;->mScreen:Lcom/android/calendar/event/EventInfoFragment$Screen;

    invoke-interface {v1}, Lcom/android/calendar/event/EventInfoFragment$Screen;->getTitleViewId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->moveTraversalAfter(Landroid/view/ViewGroup;I)I

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 4546
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->getCommandsGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCommandsGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 4542
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->mCommandsGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public inflateCommand(I)V
    .locals 3

    .prologue
    .line 4562
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->getCommandsGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4563
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 4622
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->mCommandBarView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldDelayAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)Z
    .locals 2

    .prologue
    .line 4630
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4631
    instance-of v1, v0, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;

    .line 4632
    invoke-interface {v0, p1}, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;->shouldDelayAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4634
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iput-object p1, v0, Lcom/android/calendar/event/EventInfoFragment;->mDelayedActionDescription:Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;

    .line 4635
    const/4 v0, 0x1

    .line 4637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
