.class Lcom/android/calendar/event/edit/segment/WhenEditSegment$3$1;
.super Ljava/lang/Object;
.source "WhenEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->onChange(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3$1;->this$1:Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 200
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3$1;->this$1:Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;

    iget-object v0, v0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1600(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/android/calendar/editor/EditSegmentController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/calendar/Utils;->hideFocusAndSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3$1;->this$1:Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;

    iget-object v0, v0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    const/4 v1, 0x2

    # setter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mTrackingDefaultDuration:I
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1102(Lcom/android/calendar/event/edit/segment/WhenEditSegment;I)I

    .line 202
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3$1;->this$1:Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;

    iget-object v0, v0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mCurrentStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$100(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-static {v2}, Lcom/google/calendar/v2/client/service/api/time/Period;->hours(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3$1;->this$1:Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;

    iget-object v1, v1, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1700(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    # invokes: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->isMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1800(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3$1;->this$1:Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;

    iget-object v1, v1, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # setter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mEndTimeOffsetByOne:Z
    invoke-static {v1, v2}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1902(Lcom/android/calendar/event/edit/segment/WhenEditSegment;Z)Z

    .line 210
    invoke-static {v2}, Lcom/google/calendar/v2/client/service/api/time/Period;->minutes(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->minusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3$1;->this$1:Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;

    iget-object v1, v1, Lcom/android/calendar/event/edit/segment/WhenEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$800(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method
