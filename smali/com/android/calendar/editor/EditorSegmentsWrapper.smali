.class public Lcom/android/calendar/editor/EditorSegmentsWrapper;
.super Landroid/view/ViewGroup;
.source "EditorSegmentsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;
    }
.end annotation


# instance fields
.field private mAfterLayoutActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/editor/EditorSegmentsWrapper;->mAfterLayoutActions:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 134
    instance-of v0, p1, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 87
    new-instance v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;

    invoke-virtual {p0}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->getChildCount()I

    move-result v2

    .line 95
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 100
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;

    .line 102
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->getPaddingLeft()I

    move-result v4

    .line 103
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->getPaddingTop()I

    move-result v5

    iget v0, v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;->y:I

    add-int/2addr v0, v5

    .line 105
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 106
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v0

    .line 104
    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 95
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/editor/EditorSegmentsWrapper;->mAfterLayoutActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 111
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/editor/EditorSegmentsWrapper;->mAfterLayoutActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->getChildCount()I

    move-result v5

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->measureChildren(II)V

    move v3, v4

    move v1, v4

    move v2, v4

    .line 50
    :goto_0
    if-ge v3, v5, :cond_0

    .line 51
    invoke-virtual {p0, v3}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 52
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v7, 0x8

    if-eq v0, v7, :cond_1

    .line 57
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;

    .line 59
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 60
    iget v0, v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;->y:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v0

    .line 62
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 63
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 50
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->getPaddingRight()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 69
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    .line 72
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 73
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 75
    invoke-static {v0, p1, v4}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->resolveSizeAndState(III)I

    move-result v0

    .line 76
    invoke-static {v1, p2, v4}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->resolveSizeAndState(III)I

    move-result v1

    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->setMeasuredDimension(II)V

    .line 77
    return-void

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public requestLayout(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/calendar/editor/EditorSegmentsWrapper;->mAfterLayoutActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->requestLayout()V

    .line 124
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method
