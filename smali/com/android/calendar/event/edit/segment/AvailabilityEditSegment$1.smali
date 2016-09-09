.class Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment$1;
.super Ljava/lang/Object;
.source "AvailabilityEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;
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
        "Lcom/google/calendar/v2/client/service/api/events/Visibility;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/events/Visibility;)V
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mMutableAvailability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Availability;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->onChange(Lcom/google/calendar/v2/client/service/api/events/Availability;)V

    .line 67
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/Visibility;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment$1;->onChange(Lcom/google/calendar/v2/client/service/api/events/Visibility;)V

    return-void
.end method
