.class Lcom/android/calendar/timely/gridviews/AllDayHeaderView$1;
.super Ljava/lang/Object;
.source "AllDayHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/gridviews/AllDayHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

.field final synthetic val$buttonIndex:I

.field final synthetic val$instance:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;ILcom/android/calendar/timely/gridviews/AllDayHeaderView;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$1;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    iput p2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$1;->val$buttonIndex:I

    iput-object p3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$1;->val$instance:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$1;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    # getter for: Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mStateManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;
    invoke-static {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->access$000(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$1;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$1;->val$buttonIndex:I

    # setter for: Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandingDay:I
    invoke-static {v0, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->access$102(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;I)I

    .line 183
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$1;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    # getter for: Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mStateManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;
    invoke-static {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->access$000(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$1;->val$instance:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->changeState(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)V

    .line 185
    :cond_0
    return-void
.end method
