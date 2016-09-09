.class Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;
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
    .line 186
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V
    .locals 7

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onBeginChange()V
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V

    .line 192
    if-nez p1, :cond_1

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1400(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAddEndTimeTextColor:I
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1300(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1400(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAddEndTimeText:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1500(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1400(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAddEndTimeText:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1500(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1400(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3$1;-><init>(Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    const/4 v2, 0x0

    # setter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAdjustEndTimeBasedOnStartTime:Z
    invoke-static {v1, v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$602(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Z)Z

    .line 229
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # setter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;
    invoke-static {v1, p1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$702(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 230
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateStartTimeColor()V
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$900(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V

    .line 231
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateEndDateTimeVisibility()V
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$2300(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onEndChange()V
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1000(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V

    .line 235
    return-void

    .line 216
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1400(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mDefaultTextColor:I
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$2000(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1400(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$700(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/time/DateTimeImpl;

    move-object v1, v0

    .line 221
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndDateButton:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1400(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->accessibility_pick_end_date:I

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->setFormattedDateLabelAndContentDescription(Landroid/widget/TextView;Lcom/android/calendar/time/DateTimeImpl;I)V
    invoke-static {v2, v3, v1, v4}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$2100(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Landroid/widget/TextView;Lcom/android/calendar/time/DateTimeImpl;I)V

    .line 223
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeButton:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$2200(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$400(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/calendar/time/DateTimeImpl;->formatTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$2200(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    invoke-virtual {v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->accessibility_pick_end_time:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    .line 225
    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeButton:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$2200(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    .line 224
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 233
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onEndChange()V
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1000(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V

    throw v1
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 186
    check-cast p1, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->onChange(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V

    return-void
.end method
