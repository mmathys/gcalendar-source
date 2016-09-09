.class Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter$1;
.super Ljava/lang/Object;
.source "WhatsNewFullScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->setViews(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

.field final synthetic val$imageFrame:Landroid/view/View;

.field final synthetic val$imageHeightRatio:F


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter$1;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    iput-object p2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter$1;->val$imageFrame:Landroid/view/View;

    iput p3, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter$1;->val$imageHeightRatio:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 495
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter$1;->val$imageFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 496
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 497
    const/4 v0, 0x1

    .line 517
    :goto_0
    return v0

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter$1;->val$imageFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 501
    if-nez v2, :cond_1

    .line 503
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter$1;->val$imageFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 507
    :cond_1
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    iget v5, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter$1;->val$imageHeightRatio:F

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 510
    const/16 v2, 0x10

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 511
    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter$1;->val$imageFrame:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
