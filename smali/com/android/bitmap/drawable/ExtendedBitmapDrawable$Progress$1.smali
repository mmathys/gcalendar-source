.class Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress$1;
.super Ljava/lang/Object;
.source "ExtendedBitmapDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 586
    iput-object p1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress$1;->this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress$1;->this$0:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->setLevel(I)Z

    .line 590
    return-void
.end method
