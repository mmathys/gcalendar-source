.class Lcom/android/calendar/event/edit/segment/WhenEditSegment$2;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mTrackingDefaultDuration:I
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1100(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$800(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableEndTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$800(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhenEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/WhenEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/WhenEditSegment;->access$1200(Lcom/android/calendar/event/edit/segment/WhenEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 181
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/calendar/v2/client/service/api/time/Period;->minutes(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v2

    .line 180
    invoke-interface {v0, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->plusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 170
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/WhenEditSegment$2;->onChange(Ljava/lang/Integer;)V

    return-void
.end method
