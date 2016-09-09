.class Lcom/android/calendar/timely/TaskBundleFragment$1;
.super Ljava/lang/Object;
.source "TaskBundleFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TaskBundleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TaskBundleFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TaskBundleFragment;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/calendar/timely/TaskBundleFragment$1;->this$0:Lcom/android/calendar/timely/TaskBundleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment$1;->this$0:Lcom/android/calendar/timely/TaskBundleFragment;

    # getter for: Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;
    invoke-static {v0}, Lcom/android/calendar/timely/TaskBundleFragment;->access$000(Lcom/android/calendar/timely/TaskBundleFragment;)Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->onScrolled(I)V

    .line 95
    return-void
.end method
