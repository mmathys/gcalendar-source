.class Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;
.super Ljava/lang/Object;
.source "GuestEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/GuestEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChipInputListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
        "<",
        "Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V
    .locals 0

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;)V
    .locals 0

    .prologue
    .line 1079
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/common/CollectionDelta;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
            "<",
            "Lcom/android/calendar/event/edit/segment/GuestEditSegment$ContactChip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->shouldIgnoreChipChanges()Z
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$2100(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    new-instance v1, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener$1;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;Lcom/google/calendar/v2/client/service/common/CollectionDelta;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1079
    check-cast p1, Lcom/google/calendar/v2/client/service/common/CollectionDelta;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$ChipInputListener;->onChange(Lcom/google/calendar/v2/client/service/common/CollectionDelta;)V

    return-void
.end method
