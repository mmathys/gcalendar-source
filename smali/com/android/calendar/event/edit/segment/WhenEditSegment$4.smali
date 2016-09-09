.class Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onBeginChange()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAllDaySwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$2400(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mAllDaySwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$2400(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1200(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 248
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$800(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$800(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 249
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 250
    if-eqz v1, :cond_1

    .line 251
    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->isMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1800(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    const/4 v3, 0x1

    # setter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeOffsetByOne:Z
    invoke-static {v0, v3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1902(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Z)Z

    .line 256
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$800(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lcom/google/calendar/v2/client/service/api/time/Duration;->standardMinutes(J)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->minusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 272
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateStartTimeColor()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$900(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V

    .line 273
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mStartTimeButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$500(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->updateEndDateTimeVisibility()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$2300(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onEndChange()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1000(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V

    .line 278
    return-void

    .line 248
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 260
    :cond_3
    if-eqz v1, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeOffsetByOne:Z
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1900(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lcom/google/calendar/v2/client/service/api/time/Duration;->standardMinutes(J)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v3

    .line 262
    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->isMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z
    invoke-static {v3}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1800(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 263
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$800(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lcom/google/calendar/v2/client/service/api/time/Duration;->standardMinutes(J)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeOffsetByOne:Z
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1902(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 276
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->onEndChange()V
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1000(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V

    throw v0

    :cond_5
    move v0, v2

    .line 273
    goto :goto_2
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 238
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment$4;->onChange(Ljava/lang/Boolean;)V

    return-void
.end method
