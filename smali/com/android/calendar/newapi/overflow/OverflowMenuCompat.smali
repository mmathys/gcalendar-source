.class public abstract Lcom/android/calendar/newapi/overflow/OverflowMenuCompat;
.super Ljava/lang/Object;
.source "OverflowMenuCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;,
        Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;
    }
.end annotation


# direct methods
.method public static createInstance(Landroid/content/Context;ILandroid/view/ViewGroup;Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OverflowMenuT:",
            "Landroid/view/View;",
            ":",
            "Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;",
            ">(",
            "Landroid/content/Context;",
            "I",
            "Landroid/view/ViewGroup;",
            "Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 42
    .line 43
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->newapi_overflow_menu:I

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 45
    check-cast v0, Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;

    invoke-interface {v0, p1}, Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;->init(I)V

    move-object v0, v1

    .line 46
    check-cast v0, Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;

    invoke-interface {v0, p3}, Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OverflowMenu;->setCallback(Lcom/android/calendar/newapi/overflow/OverflowMenuCompat$OnOverflowItemClickCallback;)V

    .line 47
    return-object v1
.end method
