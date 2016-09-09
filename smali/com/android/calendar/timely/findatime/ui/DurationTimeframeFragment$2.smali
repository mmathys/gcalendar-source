.class Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$2;
.super Ljava/lang/Object;
.source "DurationTimeframeFragment.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$Listener;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;
    invoke-static {v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->access$000(Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;)Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$Listener;->onFilterApply(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    .line 146
    const/4 v0, 0x0

    return v0
.end method
