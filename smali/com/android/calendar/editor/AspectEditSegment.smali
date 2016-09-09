.class public abstract Lcom/android/calendar/editor/AspectEditSegment;
.super Lcom/android/calendar/editor/EditSegment;
.source "AspectEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AspectType:",
        "Ljava/lang/Object;",
        "InputType::",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">",
        "Lcom/android/calendar/editor/EditSegment",
        "<TInputType;>;"
    }
.end annotation


# instance fields
.field private final mAspectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TAspectType;>;"
        }
    .end annotation
.end field

.field private mAspectKey:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<TAspectType;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Ljava/lang/Class",
            "<TAspectType;>;",
            "Ljava/lang/Class",
            "<TInputType;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p4}, Lcom/android/calendar/editor/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;)V

    .line 44
    iput-object p3, p0, Lcom/android/calendar/editor/AspectEditSegment;->mAspectClass:Ljava/lang/Class;

    .line 45
    return-void
.end method


# virtual methods
.method protected final canBeChanged(Lcom/android/calendar/editor/AspectAdapter;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputType;)Z"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/calendar/editor/AspectEditSegment;->mAspectKey:Lcom/android/calendar/editor/AspectKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "setAspectKey(...) not yet called."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/android/calendar/editor/AspectEditSegment;->mAspectKey:Lcom/android/calendar/editor/AspectKey;

    invoke-interface {p1, v0}, Lcom/android/calendar/editor/AspectAdapter;->getInputAspect(Lcom/android/calendar/editor/AspectKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/editor/AspectEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputType;TAspectType;)Z"
        }
    .end annotation
.end method

.method protected bridge synthetic canBeChanged(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-virtual {p0, p1}, Lcom/android/calendar/editor/AspectEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;)Z

    move-result v0

    return v0
.end method

.method public getAspectValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAspectType;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/calendar/editor/AspectEditSegment;->mAspectKey:Lcom/android/calendar/editor/AspectKey;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "setAspectKey(...) not called."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/android/calendar/editor/AspectEditSegment;->mEditInput:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :goto_1
    const-string v0, "No editor input set currently."

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/android/calendar/editor/AspectEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/editor/AspectAdapter;

    iget-object v1, p0, Lcom/android/calendar/editor/AspectEditSegment;->mAspectKey:Lcom/android/calendar/editor/AspectKey;

    invoke-interface {v0, v1}, Lcom/android/calendar/editor/AspectAdapter;->getInputAspect(Lcom/android/calendar/editor/AspectKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    :cond_1
    move v1, v2

    .line 73
    goto :goto_1
.end method

.method protected final onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputType;)V"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/calendar/editor/AspectEditSegment;->mAspectKey:Lcom/android/calendar/editor/AspectKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "setAspectKey(...) not yet called."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/android/calendar/editor/AspectEditSegment;->mAspectKey:Lcom/android/calendar/editor/AspectKey;

    invoke-interface {p1, v0}, Lcom/android/calendar/editor/AspectAdapter;->getInputAspect(Lcom/android/calendar/editor/AspectKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/editor/AspectEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V

    .line 99
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputType;TAspectType;)V"
        }
    .end annotation
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-virtual {p0, p1}, Lcom/android/calendar/editor/AspectEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;)V

    return-void
.end method

.method protected final onSetInput(Lcom/android/calendar/editor/AspectAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputType;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/calendar/editor/AspectEditSegment;->mAspectKey:Lcom/android/calendar/editor/AspectKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "setAspectKey(...) not yet called."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/android/calendar/editor/AspectEditSegment;->mAspectKey:Lcom/android/calendar/editor/AspectKey;

    invoke-interface {p1, v0}, Lcom/android/calendar/editor/AspectAdapter;->getInputAspect(Lcom/android/calendar/editor/AspectKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/editor/AspectEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V

    .line 92
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputType;TAspectType;)V"
        }
    .end annotation
.end method

.method protected bridge synthetic onSetInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-virtual {p0, p1}, Lcom/android/calendar/editor/AspectEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;)V

    return-void
.end method

.method public setAspectKey(Lcom/android/calendar/editor/AspectKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/editor/AspectKey",
            "<TAspectType;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/android/calendar/editor/AspectEditSegment;->mAspectClass:Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/calendar/editor/AspectKey;->getAspectClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/calendar/editor/AspectEditSegment;->mAspectKey:Lcom/android/calendar/editor/AspectKey;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "setAspectKey(...) called twice."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 57
    iput-object p1, p0, Lcom/android/calendar/editor/AspectEditSegment;->mAspectKey:Lcom/android/calendar/editor/AspectKey;

    .line 58
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
