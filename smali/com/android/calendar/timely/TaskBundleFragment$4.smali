.class Lcom/android/calendar/timely/TaskBundleFragment$4;
.super Ljava/lang/Object;
.source "TaskBundleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TaskBundleFragment;->createPhoneView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/android/calendar/task/TimelineTaskBundle;)Landroid/view/View;
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
    .line 379
    iput-object p1, p0, Lcom/android/calendar/timely/TaskBundleFragment$4;->this$0:Lcom/android/calendar/timely/TaskBundleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment$4;->this$0:Lcom/android/calendar/timely/TaskBundleFragment;

    # invokes: Lcom/android/calendar/timely/TaskBundleFragment;->doDismissScreen()V
    invoke-static {v0}, Lcom/android/calendar/timely/TaskBundleFragment;->access$200(Lcom/android/calendar/timely/TaskBundleFragment;)V

    .line 383
    return-void
.end method
