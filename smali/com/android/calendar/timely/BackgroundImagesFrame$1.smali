.class Lcom/android/calendar/timely/BackgroundImagesFrame$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BackgroundImagesFrame.java"


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
    .line 181
    iput-object p1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame$1;->this$0:Lcom/android/calendar/timely/BackgroundImagesFrame;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame$1;->this$0:Lcom/android/calendar/timely/BackgroundImagesFrame;

    # getter for: Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;
    invoke-static {v0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->access$000(Lcom/android/calendar/timely/BackgroundImagesFrame;)Lcom/android/calendar/timely/BackgroundImageView;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame$1;->this$0:Lcom/android/calendar/timely/BackgroundImagesFrame;

    iget-object v2, p0, Lcom/android/calendar/timely/BackgroundImagesFrame$1;->this$0:Lcom/android/calendar/timely/BackgroundImagesFrame;

    # getter for: Lcom/android/calendar/timely/BackgroundImagesFrame;->mPrimaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;
    invoke-static {v2}, Lcom/android/calendar/timely/BackgroundImagesFrame;->access$100(Lcom/android/calendar/timely/BackgroundImagesFrame;)Lcom/android/calendar/timely/BackgroundImageView;

    move-result-object v2

    # setter for: Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;
    invoke-static {v1, v2}, Lcom/android/calendar/timely/BackgroundImagesFrame;->access$002(Lcom/android/calendar/timely/BackgroundImagesFrame;Lcom/android/calendar/timely/BackgroundImageView;)Lcom/android/calendar/timely/BackgroundImageView;

    .line 193
    iget-object v1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame$1;->this$0:Lcom/android/calendar/timely/BackgroundImagesFrame;

    # setter for: Lcom/android/calendar/timely/BackgroundImagesFrame;->mPrimaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;
    invoke-static {v1, v0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->access$102(Lcom/android/calendar/timely/BackgroundImagesFrame;Lcom/android/calendar/timely/BackgroundImageView;)Lcom/android/calendar/timely/BackgroundImageView;

    .line 196
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame$1;->this$0:Lcom/android/calendar/timely/BackgroundImagesFrame;

    # getter for: Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;
    invoke-static {v0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->access$000(Lcom/android/calendar/timely/BackgroundImagesFrame;)Lcom/android/calendar/timely/BackgroundImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/BackgroundImageView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame$1;->this$0:Lcom/android/calendar/timely/BackgroundImagesFrame;

    # getter for: Lcom/android/calendar/timely/BackgroundImagesFrame;->mPendingMonth:Z
    invoke-static {v0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->access$200(Lcom/android/calendar/timely/BackgroundImagesFrame;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame$1;->this$0:Lcom/android/calendar/timely/BackgroundImagesFrame;

    # setter for: Lcom/android/calendar/timely/BackgroundImagesFrame;->mPendingMonth:Z
    invoke-static {v0, v3}, Lcom/android/calendar/timely/BackgroundImagesFrame;->access$202(Lcom/android/calendar/timely/BackgroundImagesFrame;Z)Z

    .line 204
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame$1;->this$0:Lcom/android/calendar/timely/BackgroundImagesFrame;

    # invokes: Lcom/android/calendar/timely/BackgroundImagesFrame;->loadSelectedMonth()V
    invoke-static {v0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->access$300(Lcom/android/calendar/timely/BackgroundImagesFrame;)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame$1;->this$0:Lcom/android/calendar/timely/BackgroundImagesFrame;

    # setter for: Lcom/android/calendar/timely/BackgroundImagesFrame;->mDoingFade:Z
    invoke-static {v0, v3}, Lcom/android/calendar/timely/BackgroundImagesFrame;->access$402(Lcom/android/calendar/timely/BackgroundImagesFrame;Z)Z

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame$1;->this$0:Lcom/android/calendar/timely/BackgroundImagesFrame;

    # getter for: Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;
    invoke-static {v0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->access$000(Lcom/android/calendar/timely/BackgroundImagesFrame;)Lcom/android/calendar/timely/BackgroundImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/BackgroundImageView;->setVisibility(I)V

    .line 186
    return-void
.end method
