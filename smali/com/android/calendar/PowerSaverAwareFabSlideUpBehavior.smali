.class public Lcom/android/calendar/PowerSaverAwareFabSlideUpBehavior;
.super Landroid/support/design/widget/FloatingActionButton$Behavior;
.source "PowerSaverAwareFabSlideUpBehavior.java"


# instance fields
.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton$Behavior;-><init>()V

    .line 26
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/calendar/PowerSaverAwareFabSlideUpBehavior;->mPowerManager:Landroid/os/PowerManager;

    .line 27
    return-void
.end method

.method private dependsOn(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 63
    instance-of v0, p1, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTranslationForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v4

    move v1, v2

    move v3, v0

    .line 47
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 48
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 49
    invoke-direct {p0, v0}, Lcom/android/calendar/PowerSaverAwareFabSlideUpBehavior;->dependsOn(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v0, p2}, Landroid/support/design/widget/CoordinatorLayout;->doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v5, v0

    .line 50
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 47
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_2

    .line 56
    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 57
    const/4 v2, 0x1

    .line 59
    :cond_2
    return v2
.end method


# virtual methods
.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z

    .line 33
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/calendar/PowerSaverAwareFabSlideUpBehavior;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/PowerSaverAwareFabSlideUpBehavior;->updateTranslationForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    .line 41
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 21
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/PowerSaverAwareFabSlideUpBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z

    move-result v0

    return v0
.end method
