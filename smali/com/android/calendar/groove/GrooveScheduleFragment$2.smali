.class Lcom/android/calendar/groove/GrooveScheduleFragment$2;
.super Ljava/lang/Object;
.source "GrooveScheduleFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveScheduleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveScheduleFragment;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$2;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$2;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$700(Lcom/android/calendar/groove/GrooveScheduleFragment;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 235
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .prologue
    const v3, 0x3e19999a    # 0.15f

    .line 213
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$2;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$400(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$2;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mIsRtl:Z
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$500(Lcom/android/calendar/groove/GrooveScheduleFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$2;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$400(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    int-to-float v2, p1

    sub-float/2addr v1, v2

    sub-float/2addr v1, p2

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->setParallaxFraction(F)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$2;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$400(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v0

    const/high16 v1, 0x40600000    # 3.5f

    int-to-float v2, p1

    add-float/2addr v1, v2

    add-float/2addr v1, p2

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->setParallaxFraction(F)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$2;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # invokes: Lcom/android/calendar/groove/GrooveScheduleFragment;->requestInitialScreenFocus(I)V
    invoke-static {v0, p1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$600(Lcom/android/calendar/groove/GrooveScheduleFragment;I)V

    .line 227
    return-void
.end method
