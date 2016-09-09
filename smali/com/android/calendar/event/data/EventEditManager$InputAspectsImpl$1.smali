.class Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl$1;
.super Ljava/lang/Object;
.source "EventEditManager.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;
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
        "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;)V
    .locals 0

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl$1;->this$1:Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 2

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl$1;->this$1:Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;

    # getter for: Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->mCalendarChangeRefreshListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;->access$000(Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1566
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1568
    :cond_0
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1562
    check-cast p1, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/data/EventEditManager$InputAspectsImpl$1;->onChange(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    return-void
.end method
