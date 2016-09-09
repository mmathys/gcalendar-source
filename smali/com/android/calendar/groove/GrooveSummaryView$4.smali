.class Lcom/android/calendar/groove/GrooveSummaryView$4;
.super Ljava/lang/Object;
.source "GrooveSummaryView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/groove/GrooveSummaryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveSummaryView;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveSummaryView;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveSummaryView$4;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$4;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$array;->groove_checking_schedule_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSummaryView$4;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mWaitingTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/calendar/groove/GrooveSummaryView;->access$500(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/widget/TextView;

    move-result-object v1

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mWaitingTextIndex:I
    invoke-static {}, Lcom/android/calendar/groove/GrooveSummaryView;->access$700()I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    # operator++ for: Lcom/android/calendar/groove/GrooveSummaryView;->mWaitingTextIndex:I
    invoke-static {}, Lcom/android/calendar/groove/GrooveSummaryView;->access$708()I

    .line 256
    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mWaitingTextIndex:I
    invoke-static {}, Lcom/android/calendar/groove/GrooveSummaryView;->access$700()I

    move-result v1

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$4;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->access$800(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSummaryView$4;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->waitingTextUpdateTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/calendar/groove/GrooveSummaryView;->access$900(Lcom/android/calendar/groove/GrooveSummaryView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    :cond_0
    return-void
.end method
