.class final Lcom/android/calendar/event/data/EventEditManager$1;
.super Ljava/lang/Object;
.source "EventEditManager.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/EventEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/calendar/v2/client/service/api/events/Attendee;)Z
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isSelf()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 151
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/data/EventEditManager$1;->apply(Lcom/google/calendar/v2/client/service/api/events/Attendee;)Z

    move-result v0

    return v0
.end method
