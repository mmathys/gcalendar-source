.class public abstract Lcom/android/calendar/event/segment/ActionableContentLayout;
.super Lcom/android/calendar/event/segment/InfoSegmentLayout;
.source "ActionableContentLayout.java"


# instance fields
.field private mIsAccessibilityPrepared:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/InfoSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method private prepareAccessibility()V
    .locals 3

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/calendar/event/segment/ActionableContentLayout;->mIsAccessibilityPrepared:Z

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/AccessibilityUtils;->getChildrenForAccessibility(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 91
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1

    .line 93
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/segment/ActionableContentLayout;->mIsAccessibilityPrepared:Z

    goto :goto_0
.end method


# virtual methods
.method public final addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/calendar/event/segment/ActionableContentLayout;->prepareAccessibility()V

    .line 61
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/ActionableContentLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/ActionableContentLayout;->setToChildrenContentDescription()V

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 65
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/calendar/event/segment/ActionableContentLayout;->prepareAccessibility()V

    .line 70
    invoke-super {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 71
    return-void
.end method

.method public onRefreshModel()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/ActionableContentLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/segment/ActionableContentLayout;->mIsAccessibilityPrepared:Z

    .line 56
    return-void
.end method
