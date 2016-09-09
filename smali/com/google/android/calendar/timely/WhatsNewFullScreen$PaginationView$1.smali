.class Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView$1;
.super Ljava/lang/Object;
.source "WhatsNewFullScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;-><init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

.field final synthetic val$this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;Lcom/google/android/calendar/timely/WhatsNewFullScreen;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView$1;->this$1:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    iput-object p2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView$1;->val$this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView$1;->this$1:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    # invokes: Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->initializeDrawables()Z
    invoke-static {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->access$700(Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView$1;->this$1:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->requestLayout()V

    .line 660
    const/4 v0, 0x0

    .line 667
    :goto_0
    return v0

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView$1;->this$1:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 667
    const/4 v0, 0x1

    goto :goto_0
.end method
