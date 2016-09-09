.class Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView$2;
.super Ljava/lang/Object;
.source "WhatsNewFullScreen.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->setCurrentPage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView$2;->this$1:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 687
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView$2;->this$1:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mFadeValue:F
    invoke-static {v1, v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->access$902(Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;F)F

    .line 688
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView$2;->this$1:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->invalidate()V

    .line 689
    return-void
.end method
