.class Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeAnimationDescriptionPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeAnimationHandler"
.end annotation


# instance fields
.field private final mAvatarHeight:I

.field private final mAvatarWidth:I

.field private final mDescriptor:Lcom/android/calendar/editor/ChangeAnimationDescriptor;

.field private final mOriginPosition:Landroid/graphics/PointF;

.field private final mTargetPosition:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;


# direct methods
.method public constructor <init>(Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;Lcom/android/calendar/editor/ChangeAnimationDescriptor;)V
    .locals 3

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->this$0:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mDescriptor:Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    .line 80
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mDescriptor:Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    invoke-virtual {v0}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->getAvatarDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mAvatarWidth:I

    .line 82
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mAvatarHeight:I

    .line 83
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mDescriptor:Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    invoke-virtual {v1}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->getOriginPosition()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mOriginPosition:Landroid/graphics/PointF;

    .line 84
    # getter for: Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mContainer:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->access$000(Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mDescriptor:Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    .line 85
    invoke-virtual {v1}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->getOriginView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mOriginPosition:Landroid/graphics/PointF;

    .line 84
    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->convertChildViewCoordinates(Landroid/view/View;Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    const-string v1, "The origin view must be a child of the EditorSegmentsWrapper"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 87
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mDescriptor:Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    invoke-virtual {v1}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->getTargetPosition()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mTargetPosition:Landroid/graphics/PointF;

    .line 88
    # getter for: Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mContainer:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->access$000(Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mDescriptor:Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    .line 89
    invoke-virtual {v1}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->getTargetView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mTargetPosition:Landroid/graphics/PointF;

    .line 88
    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->convertChildViewCoordinates(Landroid/view/View;Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    const-string v1, "The origin view must be a child of the EditorSegmentsWrapper"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 91
    return-void
.end method

.method private evaluateValue(FFF)F
    .locals 1

    .prologue
    .line 130
    sub-float v0, p3, p2

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    return v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->this$0:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    # getter for: Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mOverlayDrawables:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->access$200(Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mDescriptor:Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    invoke-virtual {v1}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->getAvatarDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->this$0:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    # getter for: Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->access$000(Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 105
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->this$0:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->access$102(Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;Z)Z

    .line 106
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->this$0:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    const/4 v1, 0x1

    # setter for: Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->access$102(Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;Z)Z

    .line 96
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->this$0:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    # getter for: Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mOverlayDrawables:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->access$200(Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mDescriptor:Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    invoke-virtual {v1}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->getAvatarDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->setProgress(F)V

    .line 98
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->this$0:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    # getter for: Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->access$000(Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 99
    return-void
.end method

.method public setProgress(F)V
    .locals 8

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 109
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mDescriptor:Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    invoke-virtual {v0}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->getAvatarDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mOriginPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mTargetPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, p1, v1, v2}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->evaluateValue(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 112
    iget-object v2, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mOriginPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mTargetPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v2, v3}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->evaluateValue(FFF)F

    move-result v2

    float-to-int v2, v2

    .line 113
    iget v3, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mAvatarWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mAvatarWidth:I

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->evaluateValue(FFF)F

    move-result v3

    float-to-int v3, v3

    .line 114
    iget v4, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mAvatarHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mAvatarHeight:I

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    invoke-direct {p0, p1, v4, v5}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->evaluateValue(FFF)F

    move-result v4

    float-to-int v4, v4

    .line 116
    cmpl-float v5, p1, v6

    if-lez v5, :cond_0

    .line 118
    sub-float v5, p1, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x437f0000    # 255.0f

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->evaluateValue(FFF)F

    move-result v5

    float-to-int v5, v5

    .line 119
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 122
    :cond_0
    add-int/2addr v3, v1

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->mDescriptor:Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->dispatchOnAnimationFrame(F)V

    .line 126
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer$ChangeAnimationHandler;->this$0:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    # getter for: Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->access$000(Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 127
    return-void
.end method
