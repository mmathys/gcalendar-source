.class Lcom/android/calendar/timely/FindTimeGridFragment$4;
.super Ljava/lang/Object;
.source "FindTimeGridFragment.java"

# interfaces
.implements Lcom/android/calendar/timely/FindTimeAllDayHeaderView$OnMeasurementChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/FindTimeGridFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/FindTimeGridFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$4;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    iput-object p2, p0, Lcom/android/calendar/timely/FindTimeGridFragment$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeasurementChanged(II)V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$4;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mAllDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1400(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setState(I)V

    .line 237
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$4;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    .line 238
    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mAllDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1400(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 239
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$4;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mAttendeeHeaderView:Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1500(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->getRequestHeight()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 253
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$4;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridFragment$4;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$4;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mAllDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1400(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    return-void
.end method
