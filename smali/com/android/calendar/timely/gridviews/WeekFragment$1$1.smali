.class Lcom/android/calendar/timely/gridviews/WeekFragment$1$1;
.super Ljava/lang/Object;
.source "WeekFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/gridviews/WeekFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/timely/gridviews/WeekFragment$1;

.field final synthetic val$popup:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/gridviews/WeekFragment$1;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$1$1;->this$1:Lcom/android/calendar/timely/gridviews/WeekFragment$1;

    iput-object p2, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$1$1;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$1$1;->this$1:Lcom/android/calendar/timely/gridviews/WeekFragment$1;

    iget-object v0, v0, Lcom/android/calendar/timely/gridviews/WeekFragment$1;->this$0:Lcom/android/calendar/timely/gridviews/WeekFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/WeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$1$1;->this$1:Lcom/android/calendar/timely/gridviews/WeekFragment$1;

    iget-object v1, v1, Lcom/android/calendar/timely/gridviews/WeekFragment$1;->this$0:Lcom/android/calendar/timely/gridviews/WeekFragment;

    # getter for: Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowAdapter:Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;
    invoke-static {v1}, Lcom/android/calendar/timely/gridviews/WeekFragment;->access$100(Lcom/android/calendar/timely/gridviews/WeekFragment;)Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 103
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$1$1;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 104
    return-void
.end method
