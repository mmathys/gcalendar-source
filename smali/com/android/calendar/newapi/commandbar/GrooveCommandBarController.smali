.class public Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController;
.super Lcom/android/calendar/newapi/commandbar/CommandBarController;
.source "GrooveCommandBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/commandbar/CommandBarController",
        "<",
        "Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController$Callback;",
        "Lcom/android/calendar/newapi/model/GrooveViewScreenData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDone:Z


# direct methods
.method public constructor <init>(Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController$Callback;Z)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/commandbar/CommandBarController;-><init>(Ljava/lang/Object;)V

    .line 25
    iput-boolean p2, p0, Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController;->mDone:Z

    .line 26
    return-void
.end method


# virtual methods
.method protected getActionsLayout()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/android/calendar/R$layout;->newapi_groove_command_bar_actions:I

    return v0
.end method

.method public onCommandBarActionClick(Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController$Callback;I)V
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/calendar/R$id;->action_mark_as_done:I

    if-ne p2, v0, :cond_1

    .line 65
    invoke-interface {p1}, Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController$Callback;->onMarkAsDoneClicked()V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->action_defer:I

    if-ne p2, v0, :cond_0

    .line 67
    invoke-interface {p1}, Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController$Callback;->onDeferClicked()V

    goto :goto_0
.end method

.method public bridge synthetic onCommandBarActionClick(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController$Callback;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController;->onCommandBarActionClick(Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController$Callback;I)V

    return-void
.end method

.method protected onModelChanged(Lcom/android/calendar/newapi/commandbar/CommandBar;Lcom/android/calendar/newapi/model/GrooveViewScreenData;)V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p2}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->showSimplifiedScreen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onModelChanged(Lcom/android/calendar/newapi/commandbar/CommandBar;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p2, Lcom/android/calendar/newapi/model/GrooveViewScreenData;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController;->onModelChanged(Lcom/android/calendar/newapi/commandbar/CommandBar;Lcom/android/calendar/newapi/model/GrooveViewScreenData;)V

    return-void
.end method

.method public setupCommandBar(Lcom/android/calendar/newapi/commandbar/CommandBar;)V
    .locals 4

    .prologue
    .line 35
    sget v0, Lcom/android/calendar/R$id;->action_mark_as_done:I

    invoke-virtual {p1, v0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->getAction(I)Landroid/widget/Button;

    move-result-object v0

    .line 36
    sget v1, Lcom/android/calendar/R$id;->action_defer:I

    invoke-virtual {p1, v1}, Lcom/android/calendar/newapi/commandbar/CommandBar;->getAction(I)Landroid/widget/Button;

    move-result-object v1

    .line 38
    iget-boolean v2, p0, Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController;->mDone:Z

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/android/calendar/newapi/commandbar/CommandBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->action_mark_as_not_done:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 44
    :cond_0
    invoke-static {}, Lcom/android/calendar/Utils;->isLollipopMr1OrLater()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    iget-boolean v2, p0, Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController;->mDone:Z

    if-eqz v2, :cond_2

    .line 49
    sget v1, Lcom/android/calendar/R$id;->info_action_edit_hit:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAccessibilityTraversalAfter(I)V

    .line 55
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    sget v2, Lcom/android/calendar/R$id;->info_action_edit_hit:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAccessibilityTraversalAfter(I)V

    .line 52
    sget v1, Lcom/android/calendar/R$id;->action_defer:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAccessibilityTraversalAfter(I)V

    goto :goto_0
.end method
