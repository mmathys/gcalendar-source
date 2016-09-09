.class Lcom/google/android/calendar/timely/WhatsNewFullScreen$6;
.super Ljava/lang/Object;
.source "WhatsNewFullScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/WhatsNewFullScreen;->focusPagerForAccessibility()V
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
    .line 395
    iput-object p1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$6;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$6;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    # getter for: Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;
    invoke-static {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->access$100(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Lcom/android/calendar/LayoutDirectionAwareViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$6;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    # getter for: Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;
    invoke-static {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->access$100(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Lcom/android/calendar/LayoutDirectionAwareViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->clearFocus()V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$6;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    # getter for: Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;
    invoke-static {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->access$100(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Lcom/android/calendar/LayoutDirectionAwareViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->requestFocus()Z

    .line 404
    return-void
.end method
