.class Lcom/android/calendar/timely/ViewPagerFragment$1;
.super Ljava/lang/Object;
.source "ViewPagerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/ViewPagerFragment;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/ViewPagerFragment;

.field final synthetic val$julianDay:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/ViewPagerFragment;II)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/calendar/timely/ViewPagerFragment$1;->this$0:Lcom/android/calendar/timely/ViewPagerFragment;

    iput p2, p0, Lcom/android/calendar/timely/ViewPagerFragment$1;->val$position:I

    iput p3, p0, Lcom/android/calendar/timely/ViewPagerFragment$1;->val$julianDay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/calendar/timely/ViewPagerFragment$1;->this$0:Lcom/android/calendar/timely/ViewPagerFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/ViewPagerFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/ViewPagerFragment$1;->this$0:Lcom/android/calendar/timely/ViewPagerFragment;

    # getter for: Lcom/android/calendar/timely/ViewPagerFragment;->mSourceOfPageChange:I
    invoke-static {v0}, Lcom/android/calendar/timely/ViewPagerFragment;->access$000(Lcom/android/calendar/timely/ViewPagerFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/calendar/timely/ViewPagerFragment$1;->this$0:Lcom/android/calendar/timely/ViewPagerFragment;

    iget-object v0, v0, Lcom/android/calendar/timely/ViewPagerFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget-object v1, p0, Lcom/android/calendar/timely/ViewPagerFragment$1;->this$0:Lcom/android/calendar/timely/ViewPagerFragment;

    iget v2, p0, Lcom/android/calendar/timely/ViewPagerFragment$1;->val$position:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/ViewPagerFragment;->getTimeFromItemPosition(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/ViewPagerFragment$1;->this$0:Lcom/android/calendar/timely/ViewPagerFragment;

    iget v1, p0, Lcom/android/calendar/timely/ViewPagerFragment$1;->val$julianDay:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ViewPagerFragment;->updateMiniMonth(I)V

    .line 239
    iget-object v0, p0, Lcom/android/calendar/timely/ViewPagerFragment$1;->this$0:Lcom/android/calendar/timely/ViewPagerFragment;

    iget v1, p0, Lcom/android/calendar/timely/ViewPagerFragment$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ViewPagerFragment;->updateTitle(I)V

    goto :goto_0
.end method
