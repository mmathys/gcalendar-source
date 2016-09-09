.class public Lcom/android/calendar/editor/ChangeAnimationDescriptor;
.super Ljava/lang/Object;
.source "ChangeAnimationDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;
    }
.end annotation


# instance fields
.field private mAvatarDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentProgress:F

.field private mOriginPosition:Landroid/graphics/Point;

.field private mOriginView:Landroid/view/View;

.field private mTargetPosition:Landroid/graphics/Point;

.field private mTargetView:Landroid/view/View;

.field private mTriggers:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mCurrentProgress:F

    return-void
.end method


# virtual methods
.method public dispatchOnAnimationFrame(F)V
    .locals 2

    .prologue
    .line 119
    iput p1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mCurrentProgress:F

    .line 121
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mTriggers:Ljava/util/PriorityQueue;

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mTriggers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;

    if-eqz v0, :cond_0

    # getter for: Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;->mProgress:F
    invoke-static {v0}, Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;->access$100(Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;)F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 124
    # getter for: Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;->mCode:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;->access$200(Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 125
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mTriggers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public getAvatarDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOriginPosition()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mOriginPosition:Landroid/graphics/Point;

    return-object v0
.end method

.method public getOriginView()Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mOriginView:Landroid/view/View;

    return-object v0
.end method

.method public getTargetPosition()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mTargetPosition:Landroid/graphics/Point;

    return-object v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method public setAnimationTrigger(FLjava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 101
    iget v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mCurrentProgress:F

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    .line 102
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mTriggers:Ljava/util/PriorityQueue;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mTriggers:Ljava/util/PriorityQueue;

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mTriggers:Ljava/util/PriorityQueue;

    new-instance v1, Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;-><init>(FLjava/lang/Runnable;Lcom/android/calendar/editor/ChangeAnimationDescriptor$1;)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAvatarDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/calendar/editor/ChangeAnimationDescriptor;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    return-object p0
.end method

.method public setOriginPosition(Landroid/graphics/Point;)Lcom/android/calendar/editor/ChangeAnimationDescriptor;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mOriginPosition:Landroid/graphics/Point;

    .line 73
    return-object p0
.end method

.method public setOriginView(Landroid/view/View;)Lcom/android/calendar/editor/ChangeAnimationDescriptor;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mOriginView:Landroid/view/View;

    .line 64
    return-object p0
.end method

.method public setTargetPosition(Landroid/graphics/Point;)Lcom/android/calendar/editor/ChangeAnimationDescriptor;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mTargetPosition:Landroid/graphics/Point;

    .line 91
    return-object p0
.end method

.method public setTargetView(Landroid/view/View;)Lcom/android/calendar/editor/ChangeAnimationDescriptor;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->mTargetView:Landroid/view/View;

    .line 82
    return-object p0
.end method
