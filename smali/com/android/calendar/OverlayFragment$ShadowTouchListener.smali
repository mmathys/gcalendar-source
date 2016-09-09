.class public Lcom/android/calendar/OverlayFragment$ShadowTouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/OverlayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShadowTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/OverlayFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/OverlayFragment;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/calendar/OverlayFragment$ShadowTouchListener;->this$0:Lcom/android/calendar/OverlayFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 219
    iget-object v1, p0, Lcom/android/calendar/OverlayFragment$ShadowTouchListener;->this$0:Lcom/android/calendar/OverlayFragment;

    invoke-virtual {v1}, Lcom/android/calendar/OverlayFragment;->getOverlayView()Landroid/view/View;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_1

    .line 221
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 222
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 223
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 224
    aget v4, v2, v6

    aget v2, v2, v0

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 227
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 228
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 229
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v4

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 231
    iget v1, v3, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v4

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 232
    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 233
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 236
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/android/calendar/OverlayFragment$ShadowTouchListener;->this$0:Lcom/android/calendar/OverlayFragment;

    invoke-virtual {v1}, Lcom/android/calendar/OverlayFragment;->onTouchOutside()V

    .line 241
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
