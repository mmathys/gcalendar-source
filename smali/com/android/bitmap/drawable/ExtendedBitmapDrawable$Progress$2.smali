.class Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExtendedBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IIILcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;


# direct methods
.method constructor <init>(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress$2;->this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress$2;->this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    # getter for: Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->access$400(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress$2;->this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    # getter for: Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->access$400(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 598
    :cond_0
    return-void
.end method
