.class Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;
.super Ljava/lang/Object;
.source "WhenEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/WhenEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V
    .locals 8

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onBeginChange()V
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V

    .line 143
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    instance-of v2, p1, Lcom/android/calendar/time/DateTimeImpl;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 145
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$100(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/time/DateTimeImpl;

    move-object v2, v0

    .line 147
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartDateButton:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$200(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;

    move-result-object v4

    sget v5, Lcom/android/calendar/R$string;->accessibility_pick_start_date:I

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->setFormattedDateLabelAndContentDescription(Landroid/widget/TextView;Lcom/android/calendar/time/DateTimeImpl;I)V
    invoke-static {v3, v4, v2, v5}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$300(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Landroid/widget/TextView;Lcom/android/calendar/time/DateTimeImpl;I)V

    .line 149
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeButton:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$500(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$400(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/calendar/time/DateTimeImpl;->formatTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeButton:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$500(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    invoke-virtual {v3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->accessibility_pick_start_time:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    .line 151
    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeButton:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$500(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    .line 150
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$100(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    .line 154
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # setter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;
    invoke-static {v3, p1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$102(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 155
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAdjustEndTimeBasedOnStartTime:Z
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$600(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$700(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 156
    if-nez v2, :cond_2

    const-wide/16 v2, 0x3c

    .line 158
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 159
    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v4}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$800(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;
    invoke-static {v5}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$100(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v5

    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Period;->millis(J)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    const/4 v3, 0x0

    # setter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAdjustEndTimeBasedOnStartTime:Z
    invoke-static {v2, v3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$602(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Z)Z

    .line 163
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateStartTimeColor()V
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$900(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onEndChange()V
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1000(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V

    .line 167
    return-void

    .line 157
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$700(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    sub-long v2, v4, v2

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onEndChange()V
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1000(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V

    throw v2
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 136
    check-cast p1, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment$1;->onChange(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V

    return-void
.end method
