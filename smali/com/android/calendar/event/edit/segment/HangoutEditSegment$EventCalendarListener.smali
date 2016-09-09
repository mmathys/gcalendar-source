.class Lcom/android/calendar/event/edit/segment/HangoutEditSegment$EventCalendarListener;
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
    name = "EventCalendarListener"
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
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/HangoutEditSegment;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$EventCalendarListener;->this$0:Lcom/android/calendar/event/edit/segment/HangoutEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;Lcom/android/calendar/event/edit/segment/HangoutEditSegment$1;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$EventCalendarListener;-><init>(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;)V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$EventCalendarListener;->this$0:Lcom/android/calendar/event/edit/segment/HangoutEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->update()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->access$400(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;)V

    .line 186
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 182
    check-cast p1, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$EventCalendarListener;->onChange(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    return-void
.end method
