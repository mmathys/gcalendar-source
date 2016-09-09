.class public abstract Lcom/android/calendar/newapi/overflow/OverflowMenuController;
.super Ljava/lang/Object;
.source "OverflowMenuController.java"

# interfaces
.implements Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CallbackT:",
        "Ljava/lang/Object;",
        "ModelT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;"
    }
.end annotation


# instance fields
.field private mCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mOverflowMenu:Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuController;->mCallback:Ljava/lang/Object;

    .line 22
    return-void
.end method


# virtual methods
.method public final createMenu(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/calendar/newapi/overflow/OverflowMenuController;->getMenuResourceId()I

    move-result v0

    invoke-static {p1, v0, p2, p0}, Lcom/android/calendar/newapi/overflow/OverflowMenuCompat;->createInstance(Landroid/content/Context;ILandroid/view/ViewGroup;Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;)Landroid/view/View;

    move-result-object v1

    .line 29
    iput-object p1, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuController;->mContext:Landroid/content/Context;

    move-object v0, v1

    .line 30
    check-cast v0, Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;

    iput-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuController;->mOverflowMenu:Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;

    .line 31
    return-object v1
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getMenuResourceId()I
.end method

.method public hasMenu()Z
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/calendar/newapi/overflow/OverflowMenuController;->getMenuResourceId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMenuItemClicked(Landroid/view/MenuItem;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "TCallbackT;)V"
        }
    .end annotation

    .prologue
    .line 57
    return-void
.end method

.method protected abstract onModelChanged(Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;",
            "TModelT;)V"
        }
    .end annotation
.end method

.method public final onOverflowItemClicked(Landroid/view/MenuItem;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuController;->mCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuController;->mCallback:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/newapi/overflow/OverflowMenuController;->onMenuItemClicked(Landroid/view/MenuItem;Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected setEnabled(Landroid/view/Menu;IZ)V
    .locals 1

    .prologue
    .line 71
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 72
    return-void
.end method

.method protected setLabel(Landroid/view/Menu;II)V
    .locals 1

    .prologue
    .line 75
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 76
    return-void
.end method

.method public updateModel(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelT;)V"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuController;->mOverflowMenu:Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;

    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/newapi/overflow/OverflowMenuController;->onModelChanged(Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;Ljava/lang/Object;)V

    .line 44
    return-void
.end method
