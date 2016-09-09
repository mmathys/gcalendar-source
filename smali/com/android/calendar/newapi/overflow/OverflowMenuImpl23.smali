.class public Lcom/android/calendar/newapi/overflow/OverflowMenuImpl23;
.super Landroid/widget/Toolbar;
.source "OverflowMenuImpl23.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;
.implements Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;


# instance fields
.field private mCallback:Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public init(I)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/overflow/OverflowMenuImpl23;->inflateMenu(I)V

    .line 29
    invoke-virtual {p0, p0}, Lcom/android/calendar/newapi/overflow/OverflowMenuImpl23;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 30
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuImpl23;->mCallback:Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuImpl23;->mCallback:Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;

    invoke-interface {v0, p1}, Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;->onOverflowItemClicked(Landroid/view/MenuItem;)V

    .line 41
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/calendar/newapi/overflow/OverflowMenuImpl23;->mCallback:Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;

    .line 35
    return-void
.end method
