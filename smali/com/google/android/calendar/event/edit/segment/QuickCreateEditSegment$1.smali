.class Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$1;
.super Ljava/lang/Object;
.source "QuickCreateEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;
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
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    # invokes: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->onCalendarChanged()V
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$000(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)V

    .line 132
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 128
    check-cast p1, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$1;->onChange(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    return-void
.end method
