.class public abstract Lcom/android/calendar/event/segment/ClickableSegment;
.super Lcom/android/calendar/event/segment/InfoSegmentLayout;
.source "ClickableSegment.java"


# instance fields
.field protected mAnalyticsAction:Ljava/lang/String;

.field protected mAnalyticsCategory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/InfoSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_category_event_action:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/segment/ClickableSegment;->mAnalyticsCategory:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/segment/ClickableSegment;->mAnalyticsAction:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method protected enableAction(Z)V
    .locals 1

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    new-instance v0, Lcom/android/calendar/event/segment/ClickableSegment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/segment/ClickableSegment$1;-><init>(Lcom/android/calendar/event/segment/ClickableSegment;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/ClickableSegment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/ClickableSegment;->setClickable(Z)V

    goto :goto_0
.end method

.method protected logClick()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/event/segment/ClickableSegment;->mAnalyticsCategory:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/segment/ClickableSegment;->mAnalyticsAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/segment/ClickableSegment;->mAnalyticsCategory:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/event/segment/ClickableSegment;->mAnalyticsAction:Ljava/lang/String;

    .line 88
    invoke-interface {v1, v0, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->setToChildrenContentDescription()V

    .line 102
    :cond_0
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 104
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onRefreshModel()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/ClickableSegment;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method protected abstract startAction()V
.end method
