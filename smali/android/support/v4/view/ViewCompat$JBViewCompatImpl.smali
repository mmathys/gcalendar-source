.class Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1408
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getFitsSystemWindows(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1482
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1435
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1472
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1467
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 1462
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1487
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1411
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 1449
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatJB;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1419
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1420
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1427
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1428
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 1431
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/ViewCompatJB;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1432
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1477
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->requestApplyInsets(Landroid/view/View;)V

    .line 1478
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1442
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1443
    const/4 p2, 0x2

    .line 1445
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1446
    return-void
.end method
