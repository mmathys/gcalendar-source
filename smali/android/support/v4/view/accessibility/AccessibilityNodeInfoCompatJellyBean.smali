.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatJellyBean.java"


# direct methods
.method public static addChild(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 29
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 30
    return-void
.end method

.method public static isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 73
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    return v0
.end method

.method public static isVisibleToUser(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 37
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method public static setAccesibilityFocused(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 77
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 78
    return-void
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 33
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 34
    return-void
.end method

.method public static setVisibleToUser(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 41
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 42
    return-void
.end method
