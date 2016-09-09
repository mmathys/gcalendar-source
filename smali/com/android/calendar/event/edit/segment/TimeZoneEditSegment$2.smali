.class Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment$2;
.super Ljava/lang/Object;
.source "TimeZoneEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;
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
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTimeZone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->onChange(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    .line 73
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment$2;->onChange(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V

    return-void
.end method
