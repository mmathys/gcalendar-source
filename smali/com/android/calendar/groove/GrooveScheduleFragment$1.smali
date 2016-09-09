.class Lcom/android/calendar/groove/GrooveScheduleFragment$1;
.super Landroid/support/v4/view/PagerAdapter;
.source "GrooveScheduleFragment.java"


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
    .line 144
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$1;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 170
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x4

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 148
    packed-switch p2, :pswitch_data_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$1;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mFrequencyView:Lcom/android/calendar/groove/GrooveScheduleView;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$000(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/groove/GrooveScheduleView;

    move-result-object v0

    .line 164
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    return-object v0

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$1;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mDurationView:Lcom/android/calendar/groove/GrooveScheduleView;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$100(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/groove/GrooveScheduleView;

    move-result-object v0

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$1;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mPreferredTimesView:Lcom/android/calendar/groove/GrooveScheduleView;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$200(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/groove/GrooveScheduleView;

    move-result-object v0

    goto :goto_0

    .line 159
    :pswitch_3
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$1;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    # getter for: Lcom/android/calendar/groove/GrooveScheduleFragment;->mSummaryView:Lcom/android/calendar/groove/GrooveSummaryView;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$300(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/groove/GrooveSummaryView;

    move-result-object v0

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 180
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
