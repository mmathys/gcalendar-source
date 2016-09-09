.class public Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController;
.super Lcom/android/calendar/newapi/overflow/OverflowMenuController;
.source "GrooveOverflowMenuController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/overflow/OverflowMenuController",
        "<",
        "Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController$Callback;",
        "Lcom/android/calendar/newapi/model/GrooveViewScreenData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController$Callback;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/overflow/OverflowMenuController;-><init>(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method private shouldShowDeleteItem(Lcom/android/calendar/newapi/model/GrooveViewScreenData;)Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->isEditable()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getMenuResourceId()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/android/calendar/R$menu;->groove_view_overflow:I

    return v0
.end method

.method protected onMenuItemClicked(Landroid/view/MenuItem;Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController$Callback;)V
    .locals 2

    .prologue
    .line 25
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->action_delete:I

    if-ne v0, v1, :cond_0

    .line 26
    invoke-interface {p2}, Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController$Callback;->onDeleteClicked()V

    .line 28
    :cond_0
    return-void
.end method

.method protected bridge synthetic onMenuItemClicked(Landroid/view/MenuItem;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p2, Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController$Callback;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController;->onMenuItemClicked(Landroid/view/MenuItem;Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController$Callback;)V

    return-void
.end method

.method protected onModelChanged(Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;Lcom/android/calendar/newapi/model/GrooveViewScreenData;)V
    .locals 3

    .prologue
    .line 37
    invoke-interface {p1}, Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 38
    sget v1, Lcom/android/calendar/R$id;->action_delete:I

    invoke-direct {p0, p2}, Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController;->shouldShowDeleteItem(Lcom/android/calendar/newapi/model/GrooveViewScreenData;)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController;->setEnabled(Landroid/view/Menu;IZ)V

    .line 39
    return-void
.end method

.method protected bridge synthetic onModelChanged(Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p2, Lcom/android/calendar/newapi/model/GrooveViewScreenData;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController;->onModelChanged(Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;Lcom/android/calendar/newapi/model/GrooveViewScreenData;)V

    return-void
.end method
