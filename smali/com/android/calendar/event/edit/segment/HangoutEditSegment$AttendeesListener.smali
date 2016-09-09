.class Lcom/android/calendar/event/edit/segment/HangoutEditSegment$AttendeesListener;
.super Ljava/lang/Object;
.source "HangoutEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/HangoutEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttendeesListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/HangoutEditSegment;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$AttendeesListener;->this$0:Lcom/android/calendar/event/edit/segment/HangoutEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;Lcom/android/calendar/event/edit/segment/HangoutEditSegment$1;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$AttendeesListener;-><init>(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;)V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/common/CollectionDelta;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$AttendeesListener;->this$0:Lcom/android/calendar/event/edit/segment/HangoutEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->update()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->access$400(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;)V

    .line 179
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 175
    check-cast p1, Lcom/google/calendar/v2/client/service/common/CollectionDelta;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$AttendeesListener;->onChange(Lcom/google/calendar/v2/client/service/common/CollectionDelta;)V

    return-void
.end method
