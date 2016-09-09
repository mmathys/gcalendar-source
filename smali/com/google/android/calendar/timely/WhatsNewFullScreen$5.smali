.class Lcom/google/android/calendar/timely/WhatsNewFullScreen$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WhatsNewFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/WhatsNewFullScreen;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$5;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 374
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$5;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    # getter for: Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->access$600(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 375
    return-void
.end method
