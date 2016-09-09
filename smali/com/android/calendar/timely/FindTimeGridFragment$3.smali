.class Lcom/android/calendar/timely/FindTimeGridFragment$3;
.super Ljava/lang/Object;
.source "FindTimeGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/FindTimeGridFragment;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$3;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 222
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$3;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mAllDayEventView:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1300(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 223
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridFragment$3;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mAllDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;
    invoke-static {v2}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1400(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    move-result-object v2

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setState(I)V

    .line 225
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$3;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mAllDayEventView:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1300(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->setExpandedState(Z)V

    .line 226
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 224
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method
