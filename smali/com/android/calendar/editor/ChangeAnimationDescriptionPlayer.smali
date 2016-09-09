.class public final Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;
.super Ljava/lang/Object;
.source "ChangeAnimationDescriptionPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;
    }
.end annotation


# instance fields
.field private final mChangeAnimationDuration:I

.field private final mContainer:Landroid/view/ViewGroup;

.field private mIsAnimating:Z

.field private mOverlayDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mOverlayDrawables:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mIsAnimating:Z

    .line 31
    iput-object p1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mContainer:Landroid/view/ViewGroup;

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$integer;->event_editor_change_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mChangeAnimationDuration:I

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mOverlayDrawables:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public createChangeAnimation(Lcom/android/calendar/editor/ChangeAnimationDescriptor;)Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;-><init>(Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;Lcom/android/calendar/editor/ChangeAnimationDescriptor;)V

    .line 45
    const-string v1, "progress"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    iget v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mChangeAnimationDuration:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 48
    return-object v1

    .line 45
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mIsAnimating:Z

    return v0
.end method

.method public onDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mOverlayDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method
