.class Lcom/android/calendar/timely/TimelyChipSwipeHelper$2;
.super Ljava/lang/Object;
.source "TimelyChipSwipeHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyChipSwipeHelper;->showConfirmationDialog(Lcom/android/calendar/task/TimelineTaskBundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

.field final synthetic val$isUserSwipe:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyChipSwipeHelper;Z)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$2;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    iput-boolean p2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$2;->val$isUserSwipe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$2;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mCleared:Z
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$200(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$2;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$2;->val$isUserSwipe:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->animateRestore(FZ)V

    .line 358
    :cond_0
    return-void
.end method
