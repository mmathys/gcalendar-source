.class public Lcom/android/calendar/event/edit/EditFragmentLayout;
.super Landroid/widget/FrameLayout;
.source "EditFragmentLayout.java"


# instance fields
.field public final mChangeAnimationDescriptionPlayer:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

.field private mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

.field private mShift:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    invoke-direct {v0, p0}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditFragmentLayout;->mChangeAnimationDescriptionPlayer:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    invoke-direct {v0, p0}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditFragmentLayout;->mChangeAnimationDescriptionPlayer:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    invoke-direct {v0, p0}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditFragmentLayout;->mChangeAnimationDescriptionPlayer:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    new-instance v0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    invoke-direct {v0, p0}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditFragmentLayout;->mChangeAnimationDescriptionPlayer:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    .line 49
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 54
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditFragmentLayout;->mChangeAnimationDescriptionPlayer:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->onDispatchDraw(Landroid/graphics/Canvas;)V

    .line 55
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/android/calendar/event/edit/EditFragmentLayout;->mShift:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 74
    return v0

    .line 76
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 66
    sget v0, Lcom/android/calendar/R$id;->edit_fragment_header:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/EditFragmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/EditHeaderLayout;

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditFragmentLayout;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    .line 67
    return-void
.end method

.method public setAnimatedShift(F)V
    .locals 1

    .prologue
    .line 58
    iput p1, p0, Lcom/android/calendar/event/edit/EditFragmentLayout;->mShift:F

    .line 59
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditFragmentLayout;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    invoke-virtual {v0, p1}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setAnimatedShift(F)V

    .line 60
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditFragmentLayout;->invalidate()V

    .line 61
    return-void
.end method
