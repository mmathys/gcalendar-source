.class Lcom/android/calendar/timely/gridviews/WeekFragment$1;
.super Ljava/lang/Object;
.source "WeekFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/gridviews/WeekFragment;->onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/WeekFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/gridviews/WeekFragment;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$1;->this$0:Lcom/android/calendar/timely/gridviews/WeekFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$1;->this$0:Lcom/android/calendar/timely/gridviews/WeekFragment;

    invoke-virtual {v1}, Lcom/android/calendar/timely/gridviews/WeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 94
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$1;->this$0:Lcom/android/calendar/timely/gridviews/WeekFragment;

    invoke-virtual {v1}, Lcom/android/calendar/timely/gridviews/WeekFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$dimen;->popup_window_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 97
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$1;->this$0:Lcom/android/calendar/timely/gridviews/WeekFragment;

    # invokes: Lcom/android/calendar/timely/gridviews/WeekFragment;->createOverflowAdapterIfNeeded()V
    invoke-static {v1}, Lcom/android/calendar/timely/gridviews/WeekFragment;->access$000(Lcom/android/calendar/timely/gridviews/WeekFragment;)V

    .line 98
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment$1;->this$0:Lcom/android/calendar/timely/gridviews/WeekFragment;

    # getter for: Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowAdapter:Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;
    invoke-static {v1}, Lcom/android/calendar/timely/gridviews/WeekFragment;->access$100(Lcom/android/calendar/timely/gridviews/WeekFragment;)Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    new-instance v1, Lcom/android/calendar/timely/gridviews/WeekFragment$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/timely/gridviews/WeekFragment$1$1;-><init>(Lcom/android/calendar/timely/gridviews/WeekFragment$1;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    invoke-static {}, Lcom/android/calendar/Utils;->isKitKatOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 113
    return-void
.end method
