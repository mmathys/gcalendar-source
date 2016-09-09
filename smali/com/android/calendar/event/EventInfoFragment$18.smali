.class Lcom/android/calendar/event/EventInfoFragment$18;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->getSaveResponseRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 2039
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$18;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2042
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$18;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-boolean v0, v0, Lcom/android/calendar/event/EventInfoFragment;->mIsProposeTimeSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$18;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-wide v4, v0, Lcom/android/calendar/event/EventInfoFragment;->mProposedStartTime:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$18;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-wide v4, v0, Lcom/android/calendar/event/EventInfoFragment;->mProposedEndTime:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    move v0, v1

    .line 2044
    :goto_0
    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$18;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    .line 2045
    # invokes: Lcom/android/calendar/event/EventInfoFragment;->isRsvpCommentingEnabled()Z
    invoke-static {v3}, Lcom/android/calendar/event/EventInfoFragment;->access$3700(Lcom/android/calendar/event/EventInfoFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$18;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EventInfoFragment;->mMeetingResponseComment:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 2046
    :goto_1
    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$18;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->saveResponse()Z
    invoke-static {v3}, Lcom/android/calendar/event/EventInfoFragment;->access$3800(Lcom/android/calendar/event/EventInfoFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2047
    if-eqz v0, :cond_3

    .line 2048
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$18;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->new_time_proposed:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2049
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2057
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$18;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # setter for: Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I
    invoke-static {v0, v2}, Lcom/android/calendar/event/EventInfoFragment;->access$1202(Lcom/android/calendar/event/EventInfoFragment;I)I

    .line 2059
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$18;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$3902(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2060
    return-void

    :cond_1
    move v0, v2

    .line 2042
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2045
    goto :goto_1

    .line 2050
    :cond_3
    if-eqz v1, :cond_4

    .line 2051
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$18;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->add_note_sent:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2052
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 2054
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$18;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->saving_event:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2055
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
