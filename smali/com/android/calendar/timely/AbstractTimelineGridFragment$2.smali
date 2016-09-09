.class Lcom/android/calendar/timely/AbstractTimelineGridFragment$2;
.super Ljava/lang/Object;
.source "AbstractTimelineGridFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/AbstractTimelineGridFragment;->onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/AbstractTimelineGridFragment;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$2;->this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$2;->this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    # getter for: Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;
    invoke-static {v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->access$100(Lcom/android/calendar/timely/AbstractTimelineGridFragment;)Lcom/android/calendar/timely/TimelyDayViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayViewPager;->getCurrentItem()I

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$2;->this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    invoke-static {v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getJulianDayFromPosition(I)I

    move-result v0

    # invokes: Lcom/android/calendar/timely/AbstractTimelineGridFragment;->onNewDayOnTop(I)V
    invoke-static {v1, v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->access$200(Lcom/android/calendar/timely/AbstractTimelineGridFragment;I)V

    .line 181
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$2;->this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$2;->this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->inGridMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$2;->this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    # getter for: Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;
    invoke-static {v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->access$000(Lcom/android/calendar/timely/AbstractTimelineGridFragment;)Lcom/android/calendar/timely/TimelineRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelineRecyclerView;->setForceShowPosition(I)V

    .line 172
    :cond_0
    return-void
.end method
