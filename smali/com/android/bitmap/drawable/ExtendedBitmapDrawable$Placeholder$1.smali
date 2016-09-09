.class Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder$1;
.super Ljava/lang/Object;
.source "ExtendedBitmapDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IIILcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;


# direct methods
.method constructor <init>(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder$1;->this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 510
    iget-object v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder$1;->this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAlpha:I
    invoke-static {v1, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->access$202(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;I)I

    .line 511
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder$1;->this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-virtual {v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->invalidateSelf()V

    .line 512
    return-void
.end method
