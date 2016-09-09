.class Landroid/support/v4/view/WindowInsetsCompatApi20;
.super Ljava/lang/Object;
.source "WindowInsetsCompatApi20.java"


# direct methods
.method public static consumeSystemWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemWindowInsetBottom(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 27
    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    return v0
.end method

.method public static getSystemWindowInsetLeft(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 31
    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    return v0
.end method

.method public static getSystemWindowInsetRight(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 35
    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    return v0
.end method

.method public static getSystemWindowInsetTop(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 39
    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    return v0
.end method

.method public static replaceSystemWindowInsets(Ljava/lang/Object;IIII)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    check-cast p0, Landroid/view/WindowInsets;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
