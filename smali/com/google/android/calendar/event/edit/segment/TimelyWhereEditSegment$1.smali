.class Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$1;
.super Ljava/lang/Object;
.source "TimelyWhereEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;
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
        "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
        "<",
        "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;

    # invokes: Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->getPrimaryLocation()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;
    invoke-static {v1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->access$000(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    move-result-object v1

    # invokes: Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->onStructuredLocationChange(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V
    invoke-static {v0, v1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;->access$100(Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment;Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V

    .line 72
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lcom/google/calendar/v2/client/service/common/CollectionDelta;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TimelyWhereEditSegment$1;->onChange(Lcom/google/calendar/v2/client/service/common/CollectionDelta;)V

    return-void
.end method
