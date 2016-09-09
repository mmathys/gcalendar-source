.class Lcom/google/android/calendar/timely/WhatsNewFullScreen$2;
.super Ljava/lang/Object;
.source "WhatsNewFullScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/WhatsNewFullScreen;->onCreate(Landroid/os/Bundle;)V
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
    .line 146
    iput-object p1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$2;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$2;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    # getter for: Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;
    invoke-static {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->access$100(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Lcom/android/calendar/LayoutDirectionAwareViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$2;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    # getter for: Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;
    invoke-static {v1}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->access$100(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Lcom/android/calendar/LayoutDirectionAwareViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->setCurrentItem(I)V

    .line 150
    return-void
.end method
