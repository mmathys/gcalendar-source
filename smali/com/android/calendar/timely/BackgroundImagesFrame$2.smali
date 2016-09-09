.class Lcom/android/calendar/timely/BackgroundImagesFrame$2;
.super Ljava/lang/Object;
.source "BackgroundImagesFrame.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/BackgroundImagesFrame;->onLoadComplete(Lcom/android/calendar/timely/ListenableBitmapDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/BackgroundImagesFrame;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/BackgroundImagesFrame;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame$2;->this$0:Lcom/android/calendar/timely/BackgroundImagesFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 216
    iget-object v1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame$2;->this$0:Lcom/android/calendar/timely/BackgroundImagesFrame;

    # getter for: Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;
    invoke-static {v1}, Lcom/android/calendar/timely/BackgroundImagesFrame;->access$000(Lcom/android/calendar/timely/BackgroundImagesFrame;)Lcom/android/calendar/timely/BackgroundImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/BackgroundImageView;->setAlpha(F)V

    .line 217
    iget-object v1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame$2;->this$0:Lcom/android/calendar/timely/BackgroundImagesFrame;

    # getter for: Lcom/android/calendar/timely/BackgroundImagesFrame;->mPrimaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;
    invoke-static {v1}, Lcom/android/calendar/timely/BackgroundImagesFrame;->access$100(Lcom/android/calendar/timely/BackgroundImagesFrame;)Lcom/android/calendar/timely/BackgroundImageView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/BackgroundImageView;->setAlpha(F)V

    .line 218
    return-void
.end method
