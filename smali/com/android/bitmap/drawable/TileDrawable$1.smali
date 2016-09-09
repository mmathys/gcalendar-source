.class Lcom/android/bitmap/drawable/TileDrawable$1;
.super Ljava/lang/Object;
.source "TileDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bitmap/drawable/TileDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIILcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bitmap/drawable/TileDrawable;


# direct methods
.method constructor <init>(Lcom/android/bitmap/drawable/TileDrawable;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/bitmap/drawable/TileDrawable$1;->this$0:Lcom/android/bitmap/drawable/TileDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/bitmap/drawable/TileDrawable$1;->this$0:Lcom/android/bitmap/drawable/TileDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/android/bitmap/drawable/TileDrawable;->mFadeAlpha:I
    invoke-static {v1, v0}, Lcom/android/bitmap/drawable/TileDrawable;->access$002(Lcom/android/bitmap/drawable/TileDrawable;I)I

    .line 63
    iget-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable$1;->this$0:Lcom/android/bitmap/drawable/TileDrawable;

    invoke-virtual {v0}, Lcom/android/bitmap/drawable/TileDrawable;->invalidateSelf()V

    .line 64
    return-void
.end method
